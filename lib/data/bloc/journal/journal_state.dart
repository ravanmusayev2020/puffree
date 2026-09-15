import 'package:equatable/equatable.dart';

import '../../models/journal_entry.dart';

enum JournalStatus {
  initial,
  loading,
  loaded,
  saving,
  error,
}

class JournalState extends Equatable {
  final List<JournalEntry> entries;
  final JournalStatus status;
  final String? errorMessage;

  const JournalState({
    this.entries = const [],
    this.status = JournalStatus.initial,
    this.errorMessage,
  });

  double get averageMood {
    if (entries.isEmpty) {
      return 0;
    }

    final total = entries.fold<double>(
      0,
          (sum, entry) => sum + entry.mood,
    );

    return total / entries.length;
  }

  int get entryCount => entries.length;

  JournalEntry? get latestEntry {
    if (entries.isEmpty) {
      return null;
    }

    return entries.first;
  }

  JournalEntry? get oldestEntry {
    if (entries.isEmpty) {
      return null;
    }

    return entries.last;
  }

  bool get isEmpty => entries.isEmpty;

  bool get isLoading =>
      status == JournalStatus.loading;

  bool get isSaving =>
      status == JournalStatus.saving;

  bool get hasError =>
      status == JournalStatus.error;

  JournalState copyWith({
    List<JournalEntry>? entries,
    JournalStatus? status,
    String? errorMessage,
    bool clearError = false,
  }) {
    return JournalState(
      entries: entries ?? this.entries,
      status: status ?? this.status,
      errorMessage: clearError
          ? null
          : errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
    entries,
    status,
    errorMessage,
  ];
}