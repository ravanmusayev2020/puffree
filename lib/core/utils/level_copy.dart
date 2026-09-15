class LevelCopy {
  static String title(int level, {required bool ru}) {
    const ruTitles = {
      1: 'Первый вдох',
      2: 'Росток',
      3: 'Рост',
      4: 'Корни',
      5: 'Ствол',
      6: 'Сила',
      7: 'Огонь',
      8: 'Искра',
      9: 'Чемпион',
      10: 'Мастер',
      11: 'Алмаз',
      12: 'Звезда',
      13: 'Ракета',
      14: 'Легенда',
    };
    const enTitles = {
      1: 'First breath',
      2: 'Sprout',
      3: 'Growth',
      4: 'Roots',
      5: 'Trunk',
      6: 'Strength',
      7: 'Fire',
      8: 'Spark',
      9: 'Champion',
      10: 'Master',
      11: 'Diamond',
      12: 'Star',
      13: 'Rocket',
      14: 'Legend',
    };
    return (ru ? ruTitles : enTitles)[level] ?? (ru ? 'Путь' : 'Path');
  }

  static String daysWord(int days, {required bool ru}) {
    if (!ru) return days == 1 ? 'day' : 'days';
    if (days % 10 == 1 && days % 100 != 11) return 'день';
    if ([2, 3, 4].contains(days % 10) && ![12, 13, 14].contains(days % 100)) return 'дня';
    return 'дней';
  }
}
