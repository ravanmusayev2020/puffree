import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/journal_entry.dart';
import 'journal_event.dart';
import 'journal_state.dart';

class JournalBloc extends Bloc<JournalEvent, JournalState> {
  static const String _storageKey =
      'puffree_journal_entries';

  JournalBloc() : super(const JournalState()) {
    on<LoadJournal>(_onLoad);
    on<AddJournalEntry>(_onAdd);
    on<DeleteJournalEntry>(_onDelete);
    on<UpdateJournalEntry>(_onUpdate);
    on<ClearJournal>(_onClear);
  }

  Future<void> _onLoad(
      LoadJournal event,
      Emitter<JournalState> emit,
      ) async {
    emit(
      state.copyWith(
        status: JournalStatus.loading,
        clearError: true,
      ),
    );

    try {
      final prefs =
      await SharedPreferences.getInstance();

      final raw = prefs.getString(_storageKey);

      if (raw == null || raw.trim().isEmpty) {
        emit(
          state.copyWith(
            entries: const [],
            status: JournalStatus.loaded,
            clearError: true,
          ),
        );
        return;
      }

      final decoded = jsonDecode(raw);

      if (decoded is! List) {
        throw const FormatException(
          'Invalid journal data format.',
        );
      }

      final entries = <JournalEntry>[];

      for (final item in decoded) {
        if (item is! Map) {
          continue;
        }

        try {
          final entry = JournalEntry.fromJson(
            Map<String, dynamic>.from(item),
          );

          entries.add(entry);
        } catch (_) {
          continue;
        }
      }

      entries.sort(
            (a, b) => b.createdAt.compareTo(a.createdAt),
      );

      emit(
        JournalState(
          entries: List.unmodifiable(entries),
          status: JournalStatus.loaded,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          status: JournalStatus.error,
          errorMessage: _errorMessage(error),
        ),
      );
    }
  }

  Future<void> _onAdd(
      AddJournalEntry event,
      Emitter<JournalState> emit,
      ) async {
    final exists = state.entries.any(
          (entry) => entry.id == event.entry.id,
    );

    if (exists) {
      return;
    }

    final previousEntries = state.entries;

    final nextEntries = [
      event.entry,
      ...previousEntries,
    ];

    final sortedEntries = _sortEntries(nextEntries);

    emit(
      state.copyWith(
        entries: sortedEntries,
        status: JournalStatus.saving,
        clearError: true,
      ),
    );

    try {
      await _saveEntries(sortedEntries);

      emit(
        state.copyWith(
          entries: sortedEntries,
          status: JournalStatus.loaded,
          clearError: true,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          entries: previousEntries,
          status: JournalStatus.error,
          errorMessage: _errorMessage(error),
        ),
      );
    }
  }

  Future<void> _onUpdate(
      UpdateJournalEntry event,
      Emitter<JournalState> emit,
      ) async {
    final index = state.entries.indexWhere(
          (entry) => entry.id == event.entry.id,
    );

    if (index == -1) {
      return;
    }

    final previousEntries = state.entries;

    final nextEntries = [
      ...state.entries,
    ];

    nextEntries[index] = event.entry;

    final sortedEntries = _sortEntries(nextEntries);

    emit(
      state.copyWith(
        entries: sortedEntries,
        status: JournalStatus.saving,
        clearError: true,
      ),
    );

    try {
      await _saveEntries(sortedEntries);

      emit(
        state.copyWith(
          entries: sortedEntries,
          status: JournalStatus.loaded,
          clearError: true,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          entries: previousEntries,
          status: JournalStatus.error,
          errorMessage: _errorMessage(error),
        ),
      );
    }
  }

  Future<void> _onDelete(
      DeleteJournalEntry event,
      Emitter<JournalState> emit,
      ) async {
    final exists = state.entries.any(
          (entry) => entry.id == event.entryId,
    );

    if (!exists) {
      return;
    }

    final previousEntries = state.entries;

    final nextEntries = state.entries
        .where((entry) => entry.id != event.entryId)
        .toList(growable: false);

    emit(
      state.copyWith(
        entries: nextEntries,
        status: JournalStatus.saving,
        clearError: true,
      ),
    );

    try {
      await _saveEntries(nextEntries);

      emit(
        state.copyWith(
          entries: nextEntries,
          status: JournalStatus.loaded,
          clearError: true,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          entries: previousEntries,
          status: JournalStatus.error,
          errorMessage: _errorMessage(error),
        ),
      );
    }
  }

  Future<void> _onClear(
      ClearJournal event,
      Emitter<JournalState> emit,
      ) async {
    final previousEntries = state.entries;

    if (previousEntries.isEmpty) {
      return;
    }

    emit(
      state.copyWith(
        entries: const [],
        status: JournalStatus.saving,
        clearError: true,
      ),
    );

    try {
      final prefs =
      await SharedPreferences.getInstance();

      await prefs.remove(_storageKey);

      emit(
        state.copyWith(
          entries: const [],
          status: JournalStatus.loaded,
          clearError: true,
        ),
      );
    } catch (error) {
      emit(
        state.copyWith(
          entries: previousEntries,
          status: JournalStatus.error,
          errorMessage: _errorMessage(error),
        ),
      );
    }
  }

  Future<void> _saveEntries(
      List<JournalEntry> entries,
      ) async {
    final prefs =
    await SharedPreferences.getInstance();

    final data = entries
        .map((entry) => entry.toJson())
        .toList(growable: false);

    final success = await prefs.setString(
      _storageKey,
      jsonEncode(data),
    );

    if (!success) {
      throw const JournalStorageException(
        'Failed to save journal entries.',
      );
    }
  }

  List<JournalEntry> _sortEntries(
      Iterable<JournalEntry> entries,
      ) {
    final result = entries.toList();

    result.sort(
          (a, b) => b.createdAt.compareTo(a.createdAt),
    );

    return List.unmodifiable(result);
  }

  String _errorMessage(Object error) {
    if (error is JournalStorageException) {
      return error.message;
    }

    if (error is FormatException) {
      return 'Не удалось прочитать данные дневника.';
    }

    final message = error.toString().trim();

    if (message.isEmpty) {
      return 'Не удалось обработать дневник.';
    }

    return message;
  }
}

class JournalStorageException implements Exception {
  final String message;

  const JournalStorageException(this.message);

  @override
  String toString() => message;
}