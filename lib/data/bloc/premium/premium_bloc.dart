import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'premium_event.dart';
import 'premium_state.dart';

/// Константы RevenueCat прямо внутри файла
abstract class RevenueCatConfig {
  // Вставьте сюда публичный API-ключ из панели (appl_...)
  static const String appleApiKey = 'test_WfQHJfIvtvVoNHTtfsHsZnpUMDq';
  static const String googleApiKey = 'goog_ВАШ_КЛЮЧ_ДЛЯ_ANDROID';

  // Entitlement и Offering из мастера настройки Puffree
  static const String entitlementId = 'Puffree - Quit Smoking Pro';
  static const String offeringId = 'default';

  // Стандартные идентификаторы пакетов RevenueCat
  static const String monthlyPackageId = '\$rc_monthly';
  static const String annualPackageId = '\$rc_annual';
  static const String lifetimePackageId = '\$rc_lifetime';

  // Идентификаторы продуктов в App Store Connect
  static const String monthlyProductId = 'puffree_monthly';
  static const String annualProductId = 'puffree_annual';
  static const String lifetimeProductId = 'puffree_lifetime';
}

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

    if (apiKey.trim().isEmpty || apiKey.contains('YOUR_')) {
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
      final customerInfo = await Purchases.getCustomerInfo();
      isPremium = customerInfo.entitlements.active
          .containsKey(RevenueCatConfig.entitlementId);
    } catch (_) {}

    final trial = await _loadTrial();
    final trialActive = !isPremium && trial.isActive;

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
            errorMessage: 'Пробный период уже был использован.',
          ),
        );
        return;
      }

      final trialEnd = DateTime.now().add(
        const Duration(days: 3),
      );

      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_trialKey, trialEnd.toIso8601String());
      await prefs.setBool(_trialUsedKey, true);

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
          errorMessage: 'Не удалось активировать пробный период.',
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

      final offerings = await Purchases.getOfferings();
      final current = offerings.current ??
          offerings.getOffering(RevenueCatConfig.offeringId);

      if (current == null || current.availablePackages.isEmpty) {
        throw const PremiumException(
          'Subscription is unavailable.',
        );
      }

      // Подбор пакета по ID (месяц, год, разовая покупка)
      final package = _findPackage(
        current.availablePackages,
        event.packageId,
      );

      final customerInfo = await Purchases.purchasePackage(package);

      final isPremium = customerInfo.entitlements.active.containsKey(
        RevenueCatConfig.entitlementId,
      );

      if (!isPremium) {
        emit(
          state.copyWith(
            status: PremiumStatus.error,
            errorMessage: 'Покупка завершена, но Premium ещё не активирован.',
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
      final code = PurchasesErrorHelper.getErrorCode(error);

      if (code == PurchasesErrorCode.purchaseCancelledError) {
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
          errorMessage: 'Не удалось завершить покупку. Попробуйте ещё раз.',
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

      final customerInfo = await Purchases.restorePurchases();

      final isPremium = customerInfo.entitlements.active.containsKey(
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
            errorMessage: 'Активных покупок не найдено.',
          ),
        );
      }
    } catch (error) {
      emit(
        state.copyWith(
          status: PremiumStatus.error,
          errorMessage: 'Не удалось восстановить покупки.',
        ),
      );
    }
  }

  Future<void> _ensureConfigured() async {
    if (!_configured) {
      await _configureSDK();
    }
  }

  /// Метод поиска нужного пакета подписки или единоразовой покупки
  Package _findPackage(
      List<Package> packages,
      String requestedId,
      ) {
    if (requestedId.isNotEmpty) {
      // 1. Поиск по прямому совпадению ID пакета или Product ID
      for (final package in packages) {
        if (package.identifier == requestedId ||
            package.storeProduct.identifier == requestedId) {
          return package;
        }
      }

      // 2. Поиск по ключам (month, year/annual, lifetime)
      final lowerRequestedId = requestedId.toLowerCase();
      if (lowerRequestedId.contains('month')) {
        return packages.firstWhere(
              (p) => p.packageType == PackageType.monthly,
          orElse: () => packages.first,
        );
      }
      if (lowerRequestedId.contains('annual') || lowerRequestedId.contains('year')) {
        return packages.firstWhere(
              (p) => p.packageType == PackageType.annual,
          orElse: () => packages.first,
        );
      }
      if (lowerRequestedId.contains('lifetime') || lowerRequestedId.contains('once')) {
        return packages.firstWhere(
              (p) => p.packageType == PackageType.lifetime,
          orElse: () => packages.first,
        );
      }
    }

    // 3. Фолбэк на годовую или первую доступную подписку
    for (final package in packages) {
      if (package.identifier == RevenueCatConfig.annualPackageId ||
          package.storeProduct.identifier == RevenueCatConfig.annualProductId ||
          package.packageType == PackageType.annual) {
        return package;
      }
    }

    return packages.first;
  }

  Future<_TrialInfo> _loadTrial() async {
    final prefs = await SharedPreferences.getInstance();
    final used = prefs.getBool(_trialUsedKey) ?? false;
    final rawEnd = prefs.getString(_trialKey);

    if (rawEnd == null || rawEnd.isEmpty) {
      return _TrialInfo(
        used: used,
        endDate: null,
      );
    }

    try {
      final endDate = DateTime.parse(rawEnd);
      final active = used && DateTime.now().isBefore(endDate);

      return _TrialInfo(
        used: active || used,
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
    final prefs = await SharedPreferences.getInstance();
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

