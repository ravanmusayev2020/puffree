import 'package:equatable/equatable.dart';

class DailyMission extends Equatable {
  final String id;
  final String titleKey;
  final String descriptionKey;
  final String icon;
  final bool isCompleted;
  final bool isPremium;

  const DailyMission({
    required this.id,
    required this.titleKey,
    required this.descriptionKey,
    required this.icon,
    this.isCompleted = false,
    this.isPremium = false,
  });

  DailyMission copyWith({bool? isCompleted}) {
    return DailyMission(
      id: id,
      titleKey: titleKey,
      descriptionKey: descriptionKey,
      icon: icon,
      isCompleted: isCompleted ?? this.isCompleted,
      isPremium: isPremium,
    );
  }

  @override
  List<Object?> get props => [id, titleKey, descriptionKey, icon, isCompleted, isPremium];
}

class MissionGenerator {
  /// Генерирует задания на основе дня отказа от курения
  static List<DailyMission> generateForDay(int day) {
    final baseMissions = <DailyMission>[
      const DailyMission(
        id: 'breathe',
        titleKey: 'mission_breathe',
        descriptionKey: 'mission_breathe_desc',
        icon: '🌬️',
      ),
      const DailyMission(
        id: 'water',
        titleKey: 'mission_water',
        descriptionKey: 'mission_water_desc',
        icon: '💧',
      ),
      const DailyMission(
        id: 'walk',
        titleKey: 'mission_walk',
        descriptionKey: 'mission_walk_desc',
        icon: '🚶',
      ),
      const DailyMission(
        id: 'journal',
        titleKey: 'mission_journal',
        descriptionKey: 'mission_journal_desc',
        icon: '📝',
      ),
    ];

    // Премиум задания
    final premiumMissions = <DailyMission>[
      const DailyMission(
        id: 'meditation',
        titleKey: 'mission_meditation',
        descriptionKey: 'mission_meditation_desc',
        icon: '🧘',
        isPremium: true,
      ),
      const DailyMission(
        id: 'deep_focus',
        titleKey: 'mission_deep_focus',
        descriptionKey: 'mission_deep_focus_desc',
        icon: '🎯',
        isPremium: true,
      ),
    ];

    // Меняем задания в зависимости от дня
    if (day >= 7) {
      baseMissions.add(const DailyMission(
        id: 'reflect',
        titleKey: 'mission_reflect',
        descriptionKey: 'mission_reflect_desc',
        icon: '💭',
      ));
    }

    if (day >= 21) {
      baseMissions.add(const DailyMission(
        id: 'help_someone',
        titleKey: 'mission_help',
        descriptionKey: 'mission_help_desc',
        icon: '🤝',
      ));
    }

    return [...baseMissions, ...premiumMissions];
  }
}
