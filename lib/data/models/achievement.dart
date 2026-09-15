class AchievementDef {
  const AchievementDef({
    required this.id,
    required this.titleRu,
    required this.titleEn,
    required this.descRu,
    required this.descEn,
    required this.icon,
  });

  final String id;
  final String titleRu;
  final String titleEn;
  final String descRu;
  final String descEn;
  final String icon;

  String title(bool ru) => ru ? titleRu : titleEn;
  String desc(bool ru) => ru ? descRu : descEn;
}

class AchievementCatalog {
  static const items = [
    AchievementDef(
      id: 'first_day',
      titleRu: 'Первый шаг',
      titleEn: 'First step',
      descRu: 'Первый чек-ин без сигарет',
      descEn: 'First smoke-free check-in',
      icon: '🌱',
    ),
    AchievementDef(
      id: 'streak_3',
      titleRu: 'Три дня силы',
      titleEn: 'Three-day spark',
      descRu: 'Стрик 3 дня',
      descEn: '3-day streak',
      icon: '🔥',
    ),
    AchievementDef(
      id: 'streak_7',
      titleRu: 'Неделя свободы',
      titleEn: 'Week of freedom',
      descRu: 'Стрик 7 дней',
      descEn: '7-day streak',
      icon: '🏆',
    ),
    AchievementDef(
      id: 'streak_30',
      titleRu: 'Месяц без дыма',
      titleEn: 'Month smoke-free',
      descRu: 'Стрик 30 дней',
      descEn: '30-day streak',
      icon: '👑',
    ),
    AchievementDef(
      id: 'saved_100',
      titleRu: 'Копилка',
      titleEn: 'Piggy bank',
      descRu: 'Избежано 100 сигарет',
      descEn: '100 cigarettes avoided',
      icon: '💎',
    ),
    AchievementDef(
      id: 'journal_1',
      titleRu: 'Голос внутри',
      titleEn: 'Inner voice',
      descRu: 'Первая запись в дневнике',
      descEn: 'First journal entry',
      icon: '📝',
    ),
    AchievementDef(
      id: 'missions_3',
      titleRu: 'Дело сделано',
      titleEn: 'Mission ready',
      descRu: '3 задания за день',
      descEn: '3 missions in one day',
      icon: '🎯',
    ),
  ];
}
