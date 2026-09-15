import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

class JournalEntry extends Equatable {
  final String id;
  final DateTime createdAt;
  final int mood;
  final String note;
  final List<String> tags;

  const JournalEntry({
    required this.id,
    required this.createdAt,
    required this.mood,
    required this.note,
    this.tags = const [],
  });

  factory JournalEntry.create({
    required int mood,
    required String note,
    List<String> tags = const [],
  }) {
    return JournalEntry(
      id: const Uuid().v4(),
      createdAt: DateTime.now(),
      mood: mood,
      note: note,
      tags: tags,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt.toIso8601String(),
        'mood': mood,
        'note': note,
        'tags': tags,
      };

  factory JournalEntry.fromJson(Map<String, dynamic> json) {
    return JournalEntry(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      mood: json['mood'] as int,
      note: json['note'] as String? ?? '',
      tags: List<String>.from(json['tags'] ?? []),
    );
  }

  @override
  List<Object?> get props => [id, createdAt, mood, note, tags];
}

class JournalTags {
  static const all = ['stress', 'food', 'people', 'work', 'craving', 'win'];
}
