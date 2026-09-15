import 'package:equatable/equatable.dart';

import '../../models/daily_mission.dart';

abstract class DailyState extends Equatable {
  const DailyState();

  @override
  List<Object?> get props => [];
}

class DailyInitial extends DailyState {
  const DailyInitial();
}

class DailyLoading extends DailyState {
  const DailyLoading();
}

class DailyLoaded extends DailyState {
  final List<DailyMission> missions;
  final int completedCount;

  const DailyLoaded({
    required this.missions,
    required this.completedCount,
  });

  int get totalCount => missions.length;

  int get remainingCount {
    final value = totalCount - completedCount;
    return value < 0 ? 0 : value;
  }

  bool get hasCompleted => completedCount > 0;

  bool get isAllCompleted {
    return totalCount > 0 &&
        completedCount >= totalCount;
  }

  double get progress {
    if (totalCount == 0) {
      return 0;
    }

    return (completedCount / totalCount).clamp(0.0, 1.0);
  }

  List<DailyMission> get pendingMissions {
    return missions
        .where((mission) => !mission.isCompleted)
        .toList(growable: false);
  }

  List<DailyMission> get completedMissions {
    return missions
        .where((mission) => mission.isCompleted)
        .toList(growable: false);
  }

  DailyLoaded copyWith({
    List<DailyMission>? missions,
    int? completedCount,
  }) {
    return DailyLoaded(
      missions: missions ?? this.missions,
      completedCount: completedCount ?? this.completedCount,
    );
  }

  @override
  List<Object?> get props => [
    missions,
    completedCount,
  ];
}

class DailyError extends DailyState {
  final String message;
  final DailyLoaded? previousState;

  const DailyError(
      this.message, {
        this.previousState,
      });

  bool get hasPreviousState => previousState != null;

  @override
  List<Object?> get props => [
    message,
    previousState,
  ];
}