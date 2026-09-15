import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/daily_mission.dart';
import 'daily_event.dart';
import 'daily_state.dart';

class DailyBloc extends Bloc<DailyEvent, DailyState> {
  DailyBloc() : super(const DailyInitial()) {
    on<LoadDailyMissions>(_onLoad);
    on<CompleteDailyMission>(_onComplete);
    on<ResetDailyMissions>(_onReset);
  }

  Future<void> _onLoad(
      LoadDailyMissions event,
      Emitter<DailyState> emit,
      ) async {
    emit(const DailyLoading());

    try {
      final missions = MissionGenerator.generateForDay(event.day);

      if (missions.isEmpty) {
        emit(const DailyLoaded(
          missions: [],
          completedCount: 0,
        ));
        return;
      }

      final savedIds = await _getCompletedIds();

      final missionIds = missions.map((mission) => mission.id).toSet();

      final completedIds = savedIds
          .where(missionIds.contains)
          .toSet();

      final updatedMissions = missions
          .map(
            (mission) => mission.copyWith(
          isCompleted: completedIds.contains(mission.id),
        ),
      )
          .toList(growable: false);

      emit(
        DailyLoaded(
          missions: updatedMissions,
          completedCount: updatedMissions
              .where((mission) => mission.isCompleted)
              .length,
        ),
      );
    } catch (error) {
      emit(DailyError(_errorMessage(error)));
    }
  }

  Future<void> _onComplete(
      CompleteDailyMission event,
      Emitter<DailyState> emit,
      ) async {
    final currentState = state;

    if (currentState is! DailyLoaded) {
      return;
    }

    final index = currentState.missions.indexWhere(
          (mission) => mission.id == event.missionId,
    );

    if (index == -1) {
      return;
    }

    final mission = currentState.missions[index];

    if (mission.isCompleted) {
      return;
    }

    final updatedMissions = List<DailyMission>.from(
      currentState.missions,
    );

    updatedMissions[index] = mission.copyWith(
      isCompleted: true,
    );

    final completedIds = updatedMissions
        .where((mission) => mission.isCompleted)
        .map((mission) => mission.id)
        .toSet();

    try {
      await _saveCompletedIds(completedIds);

      emit(
        DailyLoaded(
          missions: List.unmodifiable(updatedMissions),
          completedCount: completedIds.length,
        ),
      );
    } catch (error) {
      emit(
        DailyError(
          _errorMessage(error),
          previousState: currentState,
        ),
      );
    }
  }

  Future<void> _onReset(
      ResetDailyMissions event,
      Emitter<DailyState> emit,
      ) async {
    final currentState = state;

    if (currentState is! DailyLoaded) {
      return;
    }

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_storageKey());

      final resetMissions = currentState.missions
          .map(
            (mission) => mission.copyWith(
          isCompleted: false,
        ),
      )
          .toList(growable: false);

      emit(
        DailyLoaded(
          missions: resetMissions,
          completedCount: 0,
        ),
      );
    } catch (error) {
      emit(
        DailyError(
          _errorMessage(error),
          previousState: currentState,
        ),
      );
    }
  }

  Future<Set<String>> _getCompletedIds() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_storageKey());

    if (raw == null || raw.trim().isEmpty) {
      return <String>{};
    }

    try {
      final decoded = jsonDecode(raw);

      if (decoded is! List) {
        return <String>{};
      }

      return decoded
          .whereType<String>()
          .where((id) => id.trim().isNotEmpty)
          .toSet();
    } catch (_) {
      return <String>{};
    }
  }

  Future<void> _saveCompletedIds(Set<String> ids) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(
      _storageKey(),
      jsonEncode(ids.toList()),
    );
  }

  String _storageKey() {
    final now = DateTime.now();

    final year = now.year.toString().padLeft(4, '0');
    final month = now.month.toString().padLeft(2, '0');
    final day = now.day.toString().padLeft(2, '0');

    return 'puffree_missions_${year}_$month\_$day';
  }

  String _errorMessage(Object error) {
    final message = error.toString().trim();

    if (message.isEmpty) {
      return 'Не удалось обработать задания.';
    }

    return message;
  }
}