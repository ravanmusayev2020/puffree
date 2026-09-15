import 'package:equatable/equatable.dart';
import '../../models/user_progress.dart';
import '../../models/level_system.dart';

abstract class ProgressState extends Equatable {
  const ProgressState();

  @override
  List<Object?> get props => [];
}

class ProgressInitial extends ProgressState {}

class ProgressLoading extends ProgressState {}

class ProgressLoaded extends ProgressState {
  final UserProgress progress;
  final LevelInfo currentLevel;
  final LevelInfo? nextLevel;
  final double levelProgress;
  final String dailyMotivation;

  const ProgressLoaded({
    required this.progress,
    required this.currentLevel,
    this.nextLevel,
    required this.levelProgress,
    required this.dailyMotivation,
  });

  @override
  List<Object?> get props => [progress, currentLevel, nextLevel, levelProgress, dailyMotivation];
}

class ProgressError extends ProgressState {
  final String message;

  const ProgressError(this.message);

  @override
  List<Object?> get props => [message];
}
