import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/utils/date_keys.dart';
import '../../models/level_system.dart';
import '../../models/user_progress.dart';
import '../../services/motivation_service.dart';
import 'progress_event.dart';
import 'progress_state.dart';

class ProgressBloc extends Bloc<ProgressEvent, ProgressState> {
  static const String _storageKey = 'puffree_user_progress';

  Timer? _statsTimer;

  ProgressBloc() : super(ProgressInitial()) {
    on<LoadProgress>(_onLoadProgress);
    on<StartQuitJourney>(_onStartQuitJourney);
    on<RefreshProgress>(_onRefreshProgress);
    on<CheckInToday>(_onCheckInToday);
    on<CompleteMission>(_onCompleteMission);
    on<UpdateProfile>(_onUpdateProfile);
    on<ResetProgress>(_onResetProgress);

    _startStatsTimer();
  }

  // ============================================================
  // LOAD PROGRESS
  // ============================================================

  Future<void> _onLoadProgress(
      LoadProgress event,
      Emitter<ProgressState> emit,
      ) async {
    emit(ProgressLoading());

    try {
      final prefs = await SharedPreferences.getInstance();
      final jsonString = prefs.getString(_storageKey);

      UserProgress progress;

      if (jsonString != null && jsonString.isNotEmpty) {
        progress = UserProgress.fromJson(
          jsonDecode(jsonString),
        );

        // Обновляем состояние streak при загрузке.
        progress = _updateStreakIfNeeded(progress);

        // Сразу рассчитываем актуальную статистику.
        progress = _calculateLiveStatistics(progress);

        // Сохраняем свежие значения.
        await _saveProgress(progress);
      } else {
        progress = UserProgress(
          lastActiveDate: DateTime.now(),
        );
      }

      emit(_loaded(progress));
    } catch (e) {
      emit(
        ProgressError(
          'Failed to load progress: $e',
        ),
      );
    }
  }

  // ============================================================
  // START QUIT JOURNEY
  // ============================================================

  Future<void> _onStartQuitJourney(
      StartQuitJourney event,
      Emitter<ProgressState> emit,
      ) async {
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
      emit(
        ProgressError(
          'Failed to start journey: $e',
        ),
      );
    }
  }

  // ============================================================
  // REFRESH LIVE STATISTICS
  // ============================================================

  Future<void> _onRefreshProgress(
      RefreshProgress event,
      Emitter<ProgressState> emit,
      ) async {
    if (state is! ProgressLoaded) {
      return;
    }

    try {
      final current =
          (state as ProgressLoaded).progress;

      if (current.quitDate == null) {
        return;
      }

      final updated =
      _calculateLiveStatistics(current);

      await _saveProgress(updated);

      emit(_loaded(updated));
    } catch (_) {
      // Ошибка обновления статистики не должна
      // ломать текущее состояние приложения.
    }
  }

  // ============================================================
  // CHECK IN TODAY
  // ============================================================

  Future<void> _onCheckInToday(
      CheckInToday event,
      Emitter<ProgressState> emit,
      ) async {
    if (state is! ProgressLoaded) {
      return;
    }

    final current =
        (state as ProgressLoaded).progress;

    final now = DateTime.now();
    final today = DateKeys.today();

    // Уже подтвердил сегодняшний день.
    if (event.stayedSmokeFree &&
        current.hasCheckedInToday) {
      return;
    }

    UserProgress updated;

    // ==========================================================
    // SMOKE FREE
    // ==========================================================

    if (event.stayedSmokeFree) {
      final dates =
      List<String>.from(current.checkInDates);

      if (!dates.contains(today)) {
        dates.add(today);
      }

      /*
       * НЕ увеличиваем здесь:
       *
       * cigarettesAvoided
       * moneySaved
       * totalSmokeFreeDays
       *
       * Они рассчитываются автоматически от quitDate.
       */

      final newStreak =
      _calculateStreakAfterCheckIn(current);

      updated = current.copyWith(
        currentStreak: newStreak,
        longestStreak:
        newStreak > current.longestStreak
            ? newStreak
            : current.longestStreak,
        lastActiveDate: now,
        completedMissionsToday: [],
        checkInDates: dates,
      );

      // После check-in сразу получаем
      // актуальную live-статистику.
      updated =
          _calculateLiveStatistics(updated);
    }

    // ==========================================================
    // RELAPSE
    // ==========================================================

    else {
      final relapses =
      List<String>.from(current.relapseDates);

      if (!relapses.contains(today)) {
        relapses.add(today);
      }

      /*
       * После relapse начинается новый
       * smoke-free период.
       *
       * Старый longestStreak сохраняем.
       */

      updated = current.copyWith(
        quitDate: now,
        currentStreak: 0,
        totalSmokeFreeDays: 0,
        cigarettesAvoided: 0,
        moneySaved: 0,
        lastActiveDate: now,
        completedMissionsToday: [],
        relapseDates: relapses,
        relapseCount: current.relapseCount + 1,
        currentLevel: 1,
      );
    }

    await _saveProgress(updated);

    emit(_loaded(updated));
  }

  // ============================================================
  // COMPLETE MISSION
  // ============================================================

  Future<void> _onCompleteMission(
      CompleteMission event,
      Emitter<ProgressState> emit,
      ) async {
    if (state is! ProgressLoaded) {
      return;
    }

    final current =
        (state as ProgressLoaded).progress;

    if (current.completedMissionsToday
        .contains(event.missionId)) {
      return;
    }

    final updatedMissions =
    List<String>.from(
      current.completedMissionsToday,
    )..add(event.missionId);

    final updated = current.copyWith(
      completedMissionsToday: updatedMissions,
      dailyGoalCompleted:
      updatedMissions.length,
    );

    await _saveProgress(updated);

    emit(_loaded(updated));
  }

  // ============================================================
  // UPDATE PROFILE
  // ============================================================

  Future<void> _onUpdateProfile(
      UpdateProfile event,
      Emitter<ProgressState> emit,
      ) async {
    if (state is! ProgressLoaded) {
      return;
    }

    final current =
        (state as ProgressLoaded).progress;

    final updated = current.copyWith(
      displayName: event.displayName,
      avatarEmoji: event.avatarEmoji,
      currencyCode: event.currencyCode,
    );

    await _saveProgress(updated);

    emit(_loaded(updated));
  }

  // ============================================================
  // RESET PROGRESS
  // ============================================================

  Future<void> _onResetProgress(
      ResetProgress event,
      Emitter<ProgressState> emit,
      ) async {
    final prefs =
    await SharedPreferences.getInstance();

    await prefs.remove(_storageKey);

    final progress = UserProgress(
      lastActiveDate: DateTime.now(),
    );

    emit(_loaded(progress));
  }

  // ============================================================
  // CALCULATE LIVE STATISTICS
  // ============================================================

  UserProgress _calculateLiveStatistics(
      UserProgress progress,
      ) {
    final quitDate = progress.quitDate;

    if (quitDate == null) {
      return progress;
    }

    final now = DateTime.now();

    Duration elapsed =
    now.difference(quitDate);

    // Защита от неправильного времени устройства.
    if (elapsed.isNegative) {
      elapsed = Duration.zero;
    }

    final elapsedMinutes =
        elapsed.inMinutes;

    // ==========================================================
    // CIGARETTES
    // ==========================================================

    final cigarettesPerDay =
        progress.cigarettesPerDayBefore;

    final cigarettesPerPack =
        progress.cigarettesPerPack;

    /*
     * Сначала считаем точное значение.
     *
     * Например:
     *
     * 12 cigarettes/day
     * 30 минут
     *
     * = 0.25 сигареты
     *
     * Это значение используется для moneySaved.
     */

    double cigarettesAvoidedExact = 0;

    if (cigarettesPerDay > 0) {
      final cigarettesPerMinute =
          cigarettesPerDay / (24 * 60);

      cigarettesAvoidedExact =
          elapsedMinutes *
              cigarettesPerMinute;
    }

    /*
     * В модели cigarettesAvoided у тебя int.
     *
     * Поэтому:
     *
     * 0.9 -> 0
     * 1.2 -> 1
     * 27.8 -> 27
     */

    final int cigarettesAvoided =
    cigarettesAvoidedExact.floor();

    // ==========================================================
    // MONEY SAVED
    // ==========================================================

    double moneySaved = 0;

    if (cigarettesPerPack > 0 &&
        progress.pricePerPack > 0) {
      final pricePerCigarette =
          progress.pricePerPack /
              cigarettesPerPack;

      /*
       * Используем EXACT количество сигарет,
       * а не округлённое.
       *
       * Поэтому экономия будет плавной.
       */

      moneySaved =
          cigarettesAvoidedExact *
              pricePerCigarette;
    }

    // ==========================================================
    // SMOKE-FREE DAYS
    // ==========================================================

    final int totalSmokeFreeDays =
        elapsedMinutes ~/ (24 * 60);

    // ==========================================================
    // CURRENT STREAK
    // ==========================================================

    /*
     * Streak теперь отражает реальное количество
     * полностью прошедших smoke-free дней.
     */

    final int currentStreak =
        totalSmokeFreeDays;

    // ==========================================================
    // LONGEST STREAK
    // ==========================================================

    final int longestStreak =
    currentStreak >
        progress.longestStreak
        ? currentStreak
        : progress.longestStreak;

    // ==========================================================
    // LEVEL
    // ==========================================================

    final level =
    LevelSystem.getLevelByDays(
      totalSmokeFreeDays,
    );

    // ==========================================================
    // RESULT
    // ==========================================================

    return progress.copyWith(
      currentStreak: currentStreak,
      longestStreak: longestStreak,
      totalSmokeFreeDays:
      totalSmokeFreeDays,
      cigarettesAvoided:
      cigarettesAvoided,
      moneySaved: moneySaved,
      currentLevel: level.level,
      lastActiveDate: now,
    );
  }

  // ============================================================
  // CHECK-IN STREAK
  // ============================================================

  int _calculateStreakAfterCheckIn(
      UserProgress progress,
      ) {
    if (progress.checkInDates.isEmpty) {
      return 1;
    }

    final today = DateTime.now();

    final sortedDates =
    List<String>.from(
      progress.checkInDates,
    )..sort();

    final lastDateString =
        sortedDates.last;

    try {
      final parts =
      lastDateString.split('-');

      if (parts.length != 3) {
        return progress.currentStreak + 1;
      }

      final lastDate = DateTime(
        int.parse(parts[0]),
        int.parse(parts[1]),
        int.parse(parts[2]),
      );

      final currentDate = DateTime(
        today.year,
        today.month,
        today.day,
      );

      final difference =
          currentDate
              .difference(lastDate)
              .inDays;

      // Предыдущий check-in был вчера.
      if (difference == 1) {
        return progress.currentStreak + 1;
      }

      // Уже отмечен сегодня.
      if (difference == 0) {
        return progress.currentStreak;
      }

      // Был пропуск.
      return 1;
    } catch (_) {
      return progress.currentStreak + 1;
    }
  }

  // ============================================================
  // UPDATE STREAK ON LOAD
  // ============================================================

  UserProgress _updateStreakIfNeeded(
      UserProgress progress,
      ) {
    final now = DateTime.now();

    final today = DateTime(
      now.year,
      now.month,
      now.day,
    );

    final lastActive = DateTime(
      progress.lastActiveDate.year,
      progress.lastActiveDate.month,
      progress.lastActiveDate.day,
    );

    final difference =
        today.difference(lastActive).inDays;

    if (difference > 1) {
      return progress.copyWith(
        currentStreak: 0,
      );
    }

    return progress;
  }

  // ============================================================
  // START TIMER
  // ============================================================

  void _startStatsTimer() {
    _statsTimer?.cancel();

    _statsTimer = Timer.periodic(
      const Duration(minutes: 1),
          (_) {
        if (!isClosed) {
          add(
            const RefreshProgress(),
          );
        }
      },
    );
  }

  // ============================================================
  // SAVE PROGRESS
  // ============================================================

  Future<void> _saveProgress(
      UserProgress progress,
      ) async {
    final prefs =
    await SharedPreferences.getInstance();

    await prefs.setString(
      _storageKey,
      jsonEncode(
        progress.toJson(),
      ),
    );
  }

  // ============================================================
  // BUILD LOADED STATE
  // ============================================================

  ProgressLoaded _loaded(
      UserProgress progress,
      ) {
    final level =
    LevelSystem.getLevelByDays(
      progress.daysSinceQuit,
    );

    return ProgressLoaded(
      progress: progress,
      currentLevel: level,
      nextLevel:
      LevelSystem.getNextLevel(
        level.level,
      ),
      levelProgress:
      LevelSystem.progressToNextLevel(
        progress.daysSinceQuit,
      ),
      dailyMotivation:
      MotivationService.getMotivationForDay(
        progress.daysSinceQuit,
      ),
    );
  }

  // ============================================================
  // CLOSE
  // ============================================================

  @override
  Future<void> close() {
    _statsTimer?.cancel();
    _statsTimer = null;

    return super.close();
  }
}