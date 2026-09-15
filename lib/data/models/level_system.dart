class LevelInfo {
  final int level;
  final String titleKey; // ключ для локализации
  final String motivationKey;
  final int requiredDays;
  final String icon;

  const LevelInfo({
    required this.level,
    required this.titleKey,
    required this.motivationKey,
    required this.requiredDays,
    required this.icon,
  });
}

class LevelSystem {
  static const List<LevelInfo> levels = [
    LevelInfo(level: 1, titleKey: 'level_1_title', motivationKey: 'level_1_motivation', requiredDays: 0, icon: '🌱'),
    LevelInfo(level: 2, titleKey: 'level_2_title', motivationKey: 'level_2_motivation', requiredDays: 1, icon: '🌿'),
    LevelInfo(level: 3, titleKey: 'level_3_title', motivationKey: 'level_3_motivation', requiredDays: 3, icon: '🍃'),
    LevelInfo(level: 4, titleKey: 'level_4_title', motivationKey: 'level_4_motivation', requiredDays: 7, icon: '🌳'),
    LevelInfo(level: 5, titleKey: 'level_5_title', motivationKey: 'level_5_motivation', requiredDays: 14, icon: '🌲'),
    LevelInfo(level: 6, titleKey: 'level_6_title', motivationKey: 'level_6_motivation', requiredDays: 21, icon: '💪'),
    LevelInfo(level: 7, titleKey: 'level_7_title', motivationKey: 'level_7_motivation', requiredDays: 30, icon: '🔥'),
    LevelInfo(level: 8, titleKey: 'level_8_title', motivationKey: 'level_8_motivation', requiredDays: 45, icon: '⚡'),
    LevelInfo(level: 9, titleKey: 'level_9_title', motivationKey: 'level_9_motivation', requiredDays: 60, icon: '🏆'),
    LevelInfo(level: 10, titleKey: 'level_10_title', motivationKey: 'level_10_motivation', requiredDays: 90, icon: '👑'),
    LevelInfo(level: 11, titleKey: 'level_11_title', motivationKey: 'level_11_motivation', requiredDays: 120, icon: '💎'),
    LevelInfo(level: 12, titleKey: 'level_12_title', motivationKey: 'level_12_motivation', requiredDays: 180, icon: '🌟'),
    LevelInfo(level: 13, titleKey: 'level_13_title', motivationKey: 'level_13_motivation', requiredDays: 270, icon: '🚀'),
    LevelInfo(level: 14, titleKey: 'level_14_title', motivationKey: 'level_14_motivation', requiredDays: 365, icon: '🎯'),
  ];

  static LevelInfo getLevelByDays(int days) {
    LevelInfo current = levels.first;
    for (final level in levels) {
      if (days >= level.requiredDays) {
        current = level;
      } else {
        break;
      }
    }
    return current;
  }

  static LevelInfo? getNextLevel(int currentLevel) {
    if (currentLevel >= levels.length) return null;
    return levels[currentLevel]; // levels are 1-indexed in value
  }

  static double progressToNextLevel(int days) {
    final current = getLevelByDays(days);
    final next = getNextLevel(current.level);
    if (next == null) return 1.0;

    final range = next.requiredDays - current.requiredDays;
    if (range <= 0) return 1.0;

    final progress = days - current.requiredDays;
    return (progress / range).clamp(0.0, 1.0);
  }
}
