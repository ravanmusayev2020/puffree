import 'package:equatable/equatable.dart';

import '../../models/journal_entry.dart';

abstract class JournalEvent extends Equatable {
  const JournalEvent();

  @override
  List<Object?> get props => [];
}

class LoadJournal extends JournalEvent {
  const LoadJournal();
}

class AddJournalEntry extends JournalEvent {
  final JournalEntry entry;

  const AddJournalEntry(this.entry);

  @override
  List<Object?> get props => [entry];
}

class DeleteJournalEntry extends JournalEvent {
  final String entryId;

  const DeleteJournalEntry(this.entryId);

  @override
  List<Object?> get props => [entryId];
}

class UpdateJournalEntry extends JournalEvent {
  final JournalEntry entry;

  const UpdateJournalEntry(this.entry);

  @override
  List<Object?> get props => [entry];
}

class ClearJournal extends JournalEvent {
  const ClearJournal();
}