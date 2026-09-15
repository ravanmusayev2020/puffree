import 'package:equatable/equatable.dart';

abstract class DailyEvent extends Equatable {
  const DailyEvent();

  @override
  List<Object?> get props => [];
}

class LoadDailyMissions extends DailyEvent {
  final int day;

  const LoadDailyMissions(this.day);

  @override
  List<Object?> get props => [day];
}

class CompleteDailyMission extends DailyEvent {
  final String missionId;

  const CompleteDailyMission(this.missionId);

  @override
  List<Object?> get props => [missionId];
}

class ResetDailyMissions extends DailyEvent {
  const ResetDailyMissions();
}