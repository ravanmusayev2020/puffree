import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants/revenuecat_config.dart';
import 'premium_event.dart';
import 'premium_state.dart';

class PremiumBloc extends Bloc<PremiumEvent, PremiumState> {
  static const String _trialKey = 'puffree_trial_end';
  static const String _trialUsedKey = 'puffree_trial_used';

  bool _configured = false;

  PremiumBloc() : super(const PremiumState()) {
    on<InitializePremium>(_onInitialize);
    on<CheckPremiumStatus>(_onCheckStatus);
    on<StartTrial>(_onStartTrial);
    on<PurchasePremium>(_onPurchase);
    on<RestorePurchases>(_onRestore);
  }

  Future<void> _onInitialize(
      InitializePremium event,
      Emitter<PremiumState> emit,
      ) async {
    emit(
      state.copyWith(
        status: PremiumStatus.loading,
        clearError: true,
      ),
    );

    try {
      await _configureSDK();
      await _loadStatus(emit);
    } catch (error) {
      emit(
        state.copyWith(
          status: PremiumStatus.error,
          errorMessage: _errorMessage(error),
        ),
      );
    }
  }

  Future<void> _configureSDK() async {
    if (_configured) {
      return;
    }

    final apiKey = Platform.isIOS
        ? RevenueCatConfig.appleApiKey
        : RevenueCatConfig.googleApiKey;

    if (apiKey.trim().isEmpty ||
        apiKey.contains('YOUR_')) {
      throw const PremiumException(
        'RevenueCat API key is not configured.',
      );
    }

    final configuration = PurchasesConfiguration(apiKey);

    await Purchases.configure(configuration);

    _configured = true;
  }

  Future<void> _onCheckStatus(
      CheckPremiumStatus event,
      Emitter<PremiumState> emit,
      ) async {
    emit(
      state.copyWith(
        status: PremiumStatus.loading,
        clearError: true,
      ),
    );

    try {
      await _ensureConfigured();
      await _loadStatus(emit);
    } catch (error) {
      emit(
        state.copyWith(
          status: PremiumStatus.error,
          errorMessage: _errorMessage(error),
        ),
      );
    }
  }

  Future<void> _loadStatus(
      Emitter<PremiumState> emit,
      ) async {
    bool isPremium = false;

    try {
      final customerInfo =
      await Purchases.getCustomerInfo();

      isPremium = customerInfo.entitlements.active
          .containsKey(RevenueCatConfig.entitlementId);
    } catch (_) {}

    final trial = await _loadTrial();

    final trialActive =
        !isPremium &&
            trial.isActive;

    emit(
      state.copyWith(
        isPremium: isPremium,
        isTrialActive: trialActive,
        trialEndDate: trial.endDate,
        status: PremiumStatus.loaded,
        clearError: true,
      ),
    );
  }

  Future<void> _onStartTrial(
      StartTrial event,
      Emitter<PremiumState> emit,
      ) async {
    emit(
      state.copyWith(
        status: PremiumStatus.loading,
        clearError: true,
      ),
    );

    try {
      final currentTrial = await _loadTrial();

      if (currentTrial.used) {
        emit(
          state.copyWith(
            status: PremiumStatus.error,
            errorMessage:
            'Пробный период уже был использован.',
          ),
        );
        return;
      }

      final trialEnd = DateTime.now().add(
        const Duration(days: 3),
      );

      final prefs =
      await SharedPreferences.getInstance();

      await prefs.setString(
        _trialKey,
        trialEnd.toIso8601String(),
      );

      await prefs.setBool(
        _trialUsedKey,
        true,
      );

      emit(
        state.copyWith(
          isTrialActive: true,
          trialEndDate: trialEnd,
          status: PremiumStatus.loaded,
          clearError: true,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: PremiumStatus.error,
          errorMessage:
          'Не удалось активировать пробный период.',
        ),
      );
    }
  }

  Future<void> _onPurchase(
      PurchasePremium event,
      Emitter<PremiumState> emit,
      ) async {
    emit(
      state.copyWith(
        status: PremiumStatus.purchasing,
        clearError: true,
      ),
    );

    try {
      await _ensureConfigured();

      final offerings =
      await Purchases.getOfferings();

      final current =
          offerings.current ??
              offerings.getOffering(
                RevenueCatConfig.offeringId,
              );

      if (current == null ||
          current.availablePackages.isEmpty) {
        throw const PremiumException(
          'Subscription is unavailable.',
        );
      }

      final package = _findPackage(
        current.availablePackages,
        event.packageId,
      );

      final customerInfo =
      await Purchases.purchasePackage(package);

      final isPremium =
      customerInfo.entitlements.active
          .containsKey(
        RevenueCatConfig.entitlementId,
      );

      if (!isPremium) {
        emit(
          state.copyWith(
            status: PremiumStatus.error,
            errorMessage:
            'Покупка завершена, но Premium ещё не активирован.',
          ),
        );
        return;
      }

      await _finishTrial();

      emit(
        state.copyWith(
          isPremium: true,
          isTrialActive: false,
          trialEndDate: null,
          status: PremiumStatus.loaded,
          clearError: true,
          clearTrialEndDate: true,
        ),
      );
    } on PlatformException catch (error) {
      final code = PurchasesErrorHelper.getErrorCode(
        error,
      );

      if (code ==
          PurchasesErrorCode.purchaseCancelledError) {
        emit(
          state.copyWith(
            status: PremiumStatus.loaded,
            clearError: true,
          ),
        );
        return;
      }

      emit(
        state.copyWith(
          status: PremiumStatus.error,
          errorMessage:
          'Не удалось завершить покупку. Попробуйте ещё раз.',
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: PremiumStatus.error,
          errorMessage: _errorMessage(error),
        ),
      );
    }
  }

  Future<void> _onRestore(
      RestorePurchases event,
      Emitter<PremiumState> emit,
      ) async {
    emit(
      state.copyWith(
        status: PremiumStatus.restoring,
        clearError: true,
      ),
    );

    try {
      await _ensureConfigured();

      final customerInfo =
      await Purchases.restorePurchases();

      final isPremium =
      customerInfo.entitlements.active
          .containsKey(
        RevenueCatConfig.entitlementId,
      );

      if (isPremium) {
        await _finishTrial();

        emit(
          state.copyWith(
            isPremium: true,
            isTrialActive: false,
            trialEndDate: null,
            status: PremiumStatus.loaded,
            clearError: true,
            clearTrialEndDate: true,
          ),
        );
      } else {
        final trial = await _loadTrial();

        emit(
          state.copyWith(
            isPremium: false,
            isTrialActive: trial.isActive,
            trialEndDate: trial.endDate,
            status: PremiumStatus.loaded,
            errorMessage:
            'Активных покупок не найдено.',
          ),
        );
      }
    } catch (error) {
      emit(
        state.copyWith(
          status: PremiumStatus.error,
          errorMessage:
          'Не удалось восстановить покупки.',
        ),
      );
    }
  }

  Future<void> _ensureConfigured() async {
    if (!_configured) {
      await _configureSDK();
    }
  }

  Package _findPackage(
      List<Package> packages,
      String requestedId,
      ) {
    if (requestedId.isNotEmpty) {
      for (final package in packages) {
        if (package.identifier == requestedId) {
          return package;
        }

        if (package.storeProduct.identifier ==
            requestedId) {
          return package;
        }
      }
    }

    for (final package in packages) {
      if (package.identifier ==
          RevenueCatConfig.annualPackageId) {
        return package;
      }

      if (package.storeProduct.identifier ==
          RevenueCatConfig.annualProductId) {
        return package;
      }

      if (package.packageType == PackageType.monthly) {
        return package;
      }
    }

    return packages.first;
  }

  Future<_TrialInfo> _loadTrial() async {
    final prefs =
    await SharedPreferences.getInstance();

    final used =
        prefs.getBool(_trialUsedKey) ?? false;

    final rawEnd =
    prefs.getString(_trialKey);

    if (rawEnd == null || rawEnd.isEmpty) {
      return _TrialInfo(
        used: used,
        endDate: null,
      );
    }

    try {
      final endDate = DateTime.parse(rawEnd);
      final active =
          used && DateTime.now().isBefore(endDate);

      if (!active) {
        return _TrialInfo(
          used: used,
          endDate: endDate,
        );
      }

      return _TrialInfo(
        used: true,
        endDate: endDate,
      );
    } catch (_) {
      return _TrialInfo(
        used: used,
        endDate: null,
      );
    }
  }

  Future<void> _finishTrial() async {
    final prefs =
    await SharedPreferences.getInstance();

    await prefs.remove(_trialKey);
  }

  String _errorMessage(Object error) {
    if (error is PremiumException) {
      return error.message;
    }

    final message = error.toString().trim();

    if (message.isEmpty) {
      return 'Произошла ошибка. Попробуйте ещё раз.';
    }

    return 'Произошла ошибка. Попробуйте ещё раз.';
  }
}

class PremiumException implements Exception {
  final String message;

  const PremiumException(this.message);

  @override
  String toString() => message;
}

class _TrialInfo {
  final bool used;
  final DateTime? endDate;

  const _TrialInfo({
    required this.used,
    required this.endDate,
  });

  bool get isActive {
    final end = endDate;

    if (!used || end == null) {
      return false;
    }

    return DateTime.now().isBefore(end);
  }
}