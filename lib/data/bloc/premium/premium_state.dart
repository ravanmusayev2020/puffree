import 'package:equatable/equatable.dart';

enum PremiumStatus {
  initial,
  loading,
  loaded,
  purchasing,
  restoring,
  error,
}

class PremiumState extends Equatable {
  final bool isPremium;
  final bool isTrialActive;
  final DateTime? trialEndDate;
  final PremiumStatus status;
  final String? errorMessage;

  const PremiumState({
    this.isPremium = false,
    this.isTrialActive = false,
    this.trialEndDate,
    this.status = PremiumStatus.initial,
    this.errorMessage,
  });

  bool get hasAccess {
    return isPremium || isTrialActive;
  }

  bool get isLoading {
    return status == PremiumStatus.loading;
  }

  bool get isPurchasing {
    return status == PremiumStatus.purchasing;
  }

  bool get isRestoring {
    return status == PremiumStatus.restoring;
  }

  bool get isBusy {
    return isLoading ||
        isPurchasing ||
        isRestoring;
  }

  bool get hasError {
    return status == PremiumStatus.error &&
        errorMessage != null;
  }

  int? get remainingTrialDays {
    final endDate = trialEndDate;

    if (!isTrialActive || endDate == null) {
      return null;
    }

    final difference =
    endDate.difference(DateTime.now());

    if (difference.isNegative) {
      return 0;
    }

    return difference.inDays +
        (difference.inHours % 24 > 0 ? 1 : 0);
  }

  PremiumState copyWith({
    bool? isPremium,
    bool? isTrialActive,
    DateTime? trialEndDate,
    PremiumStatus? status,
    String? errorMessage,
    bool clearError = false,
    bool clearTrialEndDate = false,
  }) {
    return PremiumState(
      isPremium: isPremium ?? this.isPremium,
      isTrialActive:
      isTrialActive ?? this.isTrialActive,
      trialEndDate: clearTrialEndDate
          ? null
          : trialEndDate ?? this.trialEndDate,
      status: status ?? this.status,
      errorMessage: clearError
          ? null
          : errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
    isPremium,
    isTrialActive,
    trialEndDate,
    status,
    errorMessage,
  ];
}