import 'package:equatable/equatable.dart';

abstract class ProgressEvent extends Equatable {
  const ProgressEvent();

  @override
  List<Object?> get props => [];
}

class LoadProgress extends ProgressEvent {}
class RefreshProgress extends ProgressEvent {
  const RefreshProgress();
}

class StartQuitJourney extends ProgressEvent {
  final double cigarettesPerDay;
  final double pricePerPack;
  final int cigarettesPerPack;
  final String displayName;
  final String avatarEmoji;
  final String currencyCode;

  const StartQuitJourney({
    required this.cigarettesPerDay,
    required this.pricePerPack,
    required this.cigarettesPerPack,
    this.displayName = '',
    this.avatarEmoji = '🌿',
    this.currencyCode = 'RUB',
  });

  @override
  List<Object?> get props => [
        cigarettesPerDay,
        pricePerPack,
        cigarettesPerPack,
        displayName,
        avatarEmoji,
        currencyCode,
      ];
}

class CheckInToday extends ProgressEvent {
  final bool stayedSmokeFree;

  const CheckInToday({required this.stayedSmokeFree});

  @override
  List<Object?> get props => [stayedSmokeFree];
}

class CompleteMission extends ProgressEvent {
  final String missionId;

  const CompleteMission(this.missionId);

  @override
  List<Object?> get props => [missionId];
}

class UpdateProfile extends ProgressEvent {
  final String displayName;
  final String avatarEmoji;
  final String currencyCode;

  const UpdateProfile({
    required this.displayName,
    required this.avatarEmoji,
    required this.currencyCode,
  });

  @override
  List<Object?> get props => [displayName, avatarEmoji, currencyCode];
}

class ResetProgress extends ProgressEvent {}
