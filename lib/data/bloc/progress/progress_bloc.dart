import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../../../core/utils/date_keys.dart';
import '../../models/user_progress.dart';
import '../../models/level_system.dart';
import '../../services/motivation_service.dart';
import 'progress_event.dart';
import 'progress_state.dart';

class ProgressBloc extends Bloc<ProgressEvent, ProgressState> {
  static const _storageKey = 'puffree_user_progress';

  ProgressBloc() : super(ProgressInitial()) {
    on<LoadProgress>(_onLoadProgress);
    on<StartQuitJourney>(_onStartQuitJourney);
    on<CheckInToday>(_onCheckInToday);
    on<CompleteMission>(_onCompleteMission);
    on<UpdateProfile>(_onUpdateProfile);
    on<ResetProgress>(_onResetProgress);
  }

  Future<void> _onLoadProgress(LoadProgress event, Emitter<ProgressState> emit) async {
    emit(ProgressLoading());
    try {
      final prefs = await SharedPreferences.getInstance();
      final jsonString = prefs.getString(_storageKey);

      UserProgress progress;
      if (jsonString != null) {
        progress = UserProgress.fromJson(jsonDecode(jsonString));
        progress = _updateStreakIfNeeded(progress);
      } else {
        progress = UserProgress(lastActiveDate: DateTime.now());
      }

      emit(_loaded(progress));
    } catch (e) {
      emit(ProgressError('Failed to load progress: $e'));
    }
  }

  Future<void> _onStartQuitJourney(StartQuitJourney event, Emitter<ProgressState> emit) async {
    emit(ProgressLoading());
    try {
      final now = DateTime.now();
      final progress = UserProgress(
        quitDate: now,
        currentStreak: 0,
        longestStreak: 0,
        totalSmokeFreeDays: 0,
        currentLevel: 1,
        cigarettesAvoided: 0,
        moneySaved: 0,
        lastActiveDate: now,
        isOnboardingCompleted: true,
        cigarettesPerDayBefore: event.cigarettesPerDay,
        pricePerPack: event.pricePerPack,
        cigarettesPerPack: event.cigarettesPerPack,
        displayName: event.displayName,
        avatarEmoji: event.avatarEmoji,
        currencyCode: event.currencyCode,
      );

      await _saveProgress(progress);
      emit(_loaded(progress));
    } catch (e) {
      emit(ProgressError('Failed to start journey: $e'));
    }
  }

  Future<void> _onCheckInToday(CheckInToday event, Emitter<ProgressState> emit) async {
    if (state is! ProgressLoaded) return;
    final current = (state as ProgressLoaded).progress;
    final now = DateTime.now();
    final today = DateKeys.today();

    if (event.stayedSmokeFree && current.hasCheckedInToday) {
      return;
    }

    UserProgress updated;
    if (event.stayedSmokeFree) {
      final newStreak = current.currentStreak + 1;
      final cigarettesToday = current.cigarettesPerDayBefore.round();
      final moneyToday = (cigarettesToday / current.cigarettesPerPack) * current.pricePerPack;
      final dates = List<String>.from(current.checkInDates);
      if (!dates.contains(today)) dates.add(today);

      updated = current.copyWith(
        currentStreak: newStreak,
        longestStreak: newStreak > current.longestStreak ? newStreak : current.longestStreak,
        totalSmokeFreeDays: current.totalSmokeFreeDays + 1,
        cigarettesAvoided: current.cigarettesAvoided + cigarettesToday,
        moneySaved: current.moneySaved + moneyToday,
        lastActiveDate: now,
        currentLevel: LevelSystem.getLevelByDays(current.daysSinceQuit).level,
        completedMissionsToday: [],
        checkInDates: dates,
      );
    } else {
      final relapses = List<String>.from(current.relapseDates);
      if (!relapses.contains(today)) relapses.add(today);
      updated = current.copyWith(
        currentStreak: 0,
        lastActiveDate: now,
        completedMissionsToday: [],
        relapseDates: relapses,
        relapseCount: current.relapseCount + 1,
      );
    }

    await _saveProgress(updated);
    emit(_loaded(updated));
  }

  Future<void> _onCompleteMission(CompleteMission event, Emitter<ProgressState> emit) async {
    if (state is! ProgressLoaded) return;
    final current = (state as ProgressLoaded).progress;
    if (current.completedMissionsToday.contains(event.missionId)) return;

    final updatedMissions = List<String>.from(current.completedMissionsToday)..add(event.missionId);
    final updated = current.copyWith(
      completedMissionsToday: updatedMissions,
      dailyGoalCompleted: updatedMissions.length,
    );

    await _saveProgress(updated);
    emit(_loaded(updated));
  }

  Future<void> _onUpdateProfile(UpdateProfile event, Emitter<ProgressState> emit) async {
    if (state is! ProgressLoaded) return;
    final current = (state as ProgressLoaded).progress;
    final updated = current.copyWith(
      displayName: event.displayName,
      avatarEmoji: event.avatarEmoji,
      currencyCode: event.currencyCode,
    );
    await _saveProgress(updated);
    emit(_loaded(updated));
  }

  Future<void> _onResetProgress(ResetProgress event, Emitter<ProgressState> emit) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_storageKey);
    emit(_loaded(UserProgress(lastActiveDate: DateTime.now())));
  }

  UserProgress _updateStreakIfNeeded(UserProgress progress) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final lastActive = DateTime(
      progress.lastActiveDate.year,
      progress.lastActiveDate.month,
      progress.lastActiveDate.day,
    );

    final difference = today.difference(lastActive).inDays;
    if (difference > 1) {
      return progress.copyWith(currentStreak: 0);
    }
    return progress;
  }

  Future<void> _saveProgress(UserProgress progress) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_storageKey, jsonEncode(progress.toJson()));
  }

  ProgressLoaded _loaded(UserProgress progress) {
    final level = LevelSystem.getLevelByDays(progress.daysSinceQuit);
    return ProgressLoaded(
      progress: progress,
      currentLevel: level,
      nextLevel: LevelSystem.getNextLevel(level.level),
      levelProgress: LevelSystem.progressToNextLevel(progress.daysSinceQuit),
      dailyMotivation: MotivationService.getMotivationForDay(progress.daysSinceQuit),
    );
  }
}
