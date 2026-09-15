import 'package:equatable/equatable.dart';

abstract class PremiumEvent extends Equatable {
  const PremiumEvent();

  @override
  List<Object?> get props => [];
}

class InitializePremium extends PremiumEvent {
  const InitializePremium();
}

class CheckPremiumStatus extends PremiumEvent {
  const CheckPremiumStatus();
}

class StartTrial extends PremiumEvent {
  const StartTrial();
}

class PurchasePremium extends PremiumEvent {
  final String packageId;

  const PurchasePremium([
    this.packageId = '',
  ]);

  @override
  List<Object?> get props => [packageId];
}

class RestorePurchases extends PremiumEvent {
  const RestorePurchases();
}