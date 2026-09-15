
class MotivationService {
MotivationService._();

// ─────────────────────────────────────────────────────────────
// Motivation by day
// ─────────────────────────────────────────────────────────────

static String getMotivationForDay(
int day, {
String languageCode = 'ru',
}) {
final isRu = languageCode.toLowerCase().startsWith('ru');

if (day <= 0) {
return isRu
? 'Сегодня начинается твой новый путь. Один шаг уже имеет значение.'
    : 'Today begins your new journey. One step already matters.';
}

// ─────────────────────────────────────────────────────────
// Special milestones
// ─────────────────────────────────────────────────────────

final milestone = isRu
? _ruMilestones[day]
    : _enMilestones[day];

if (milestone != null) {
return milestone;
}

// ─────────────────────────────────────────────────────────
// First days
// ─────────────────────────────────────────────────────────

if (day <= 7) {
final messages = isRu
? _ruFirstWeek
    : _enFirstWeek;

return messages[(day - 1) % messages.length];
}

// ─────────────────────────────────────────────────────────
// Days 8–14
// ─────────────────────────────────────────────────────────

if (day <= 14) {
final messages = isRu
? _ruSecondWeek
    : _enSecondWeek;

return messages[(day - 8) % messages.length];
}

// ─────────────────────────────────────────────────────────
// Days 15–30
// ─────────────────────────────────────────────────────────

if (day <= 30) {
final messages = isRu
? _ruFirstMonth
    : _enFirstMonth;

return messages[(day - 15) % messages.length];
}

// ─────────────────────────────────────────────────────────
// Days 31–60
// ─────────────────────────────────────────────────────────

if (day <= 60) {
final messages = isRu
? _ruSecondMonth
    : _enSecondMonth;

return messages[(day - 31) % messages.length];
}

// ─────────────────────────────────────────────────────────
// Days 61–90
// ─────────────────────────────────────────────────────────

if (day <= 90) {
final messages = isRu
? _ruThirdMonth
    : _enThirdMonth;

return messages[(day - 61) % messages.length];
}

// ─────────────────────────────────────────────────────────
// 90+ days
// ─────────────────────────────────────────────────────────

final messages = isRu
? _ruLongTerm
    : _enLongTerm;

return messages[(day - 91) % messages.length];
}

// ─────────────────────────────────────────────────────────────
// Level up
// ─────────────────────────────────────────────────────────────

static String getLevelUpMessage(
int level, {
String languageCode = 'ru',
}) {
final isRu = languageCode.toLowerCase().startsWith('ru');

final messages = isRu
? _ruLevelMessages
    : _enLevelMessages;

return messages[level] ??
(isRu
? 'Новый уровень. Ты продолжаешь двигаться вперёд.'
    : 'New level. You keep moving forward.');
}

// ─────────────────────────────────────────────────────────────
// Short daily phrases
// ─────────────────────────────────────────────────────────────

static String getShortMotivation({
String languageCode = 'ru',
}) {
final isRu = languageCode.toLowerCase().startsWith('ru');

final messages = isRu
? _ruShortMessages
    : _enShortMessages;

final index =
DateTime.now().difference(DateTime(2024, 1, 1)).inDays %
messages.length;

return messages[index];
}

// ═════════════════════════════════════════════════════════════
// RUSSIAN
// ═════════════════════════════════════════════════════════════

static const Map<int, String> _ruMilestones = {
1: 'Первые сутки. Ты сделал первый большой шаг. Продолжай.',
3: 'Три дня. Уже есть что праздновать. Ты держишь свой курс.',
7: 'Целая неделя. Семь дней решений в пользу себя.',
10: '10 дней. Ты уже создал серьёзный запас уверенности.',
14: 'Две недели. Ты прошёл важную часть пути. Дальше — ещё сильнее.',
21: '21 день. Ты уже видишь, что способен менять свои привычки.',
30: '30 дней. Целый месяц новых решений. Это большой результат.',
45: '45 дней. Полтора месяца — и ты продолжаешь двигаться вперёд.',
60: '60 дней. Два месяца последовательности. Сильный результат.',
90: '90 дней. Три месяца. Посмотри, насколько далеко ты уже ушёл.',
120: '120 дней. Ты продолжаешь выбирать свой путь каждый день.',
180: 'Полгода. 180 дней последовательности. Это действительно мощно.',
270: '270 дней. Ты создал огромную дистанцию между собой и старой привычкой.',
365: 'Год. 365 дней твоего пути. Это не случайность — это последовательность.',
};

static const List<String> _ruFirstWeek = [
'Сегодня достаточно сделать только следующий шаг.',
'Ты не обязан пройти весь путь сегодня. Просто продолжай.',
'Каждый день — отдельная победа. Сегодня твоя.',
'Сложный момент не отменяет твой прогресс.',
'Ты уже начал. Теперь дай себе шанс продолжить.',
'Один день за другим. Именно так создаются большие изменения.',
'Ты выбираешь себя снова и снова. Это имеет значение.',
];

static const List<String> _ruSecondWeek = [
'Ты уже не там, где был в начале. Двигайся дальше.',
'Две недели ближе, чем кажется. Продолжай свой ритм.',
'Твой прогресс складывается из маленьких решений.',
'Не ищи идеальный день. Создавай следующий хороший день.',
'Ты способен пройти момент тяги и вернуться к своему плану.',
'Каждый новый день укрепляет твою уверенность.',
'Ты уже доказал, что можешь выдерживать сложные моменты.',
];

static const List<String> _ruFirstMonth = [
'Ты строишь новую привычку шаг за шагом.',
'Прошлое не определяет сегодняшний выбор.',
'Тридцать дней начинаются с одного решения — продолжать.',
'Ты становишься увереннее не за один день, а благодаря множеству дней.',
'Каждый новый день добавляет ещё одну страницу в твою историю.',
'Твой прогресс принадлежит тебе. Никто не может его забрать.',
'Ты уже прошёл достаточно, чтобы гордиться собой.',
'Продолжай спокойно. Большие изменения не требуют спешки.',
];

static const List<String> _ruSecondMonth = [
'Два месяца — это уже не случайный результат.',
'Ты превращаешь намерение в последовательность.',
'Твоя сила — в решениях, которые ты принимаешь каждый день.',
'Ты уже знаешь, что можешь справляться с трудными моментами.',
'Продолжай строить жизнь, которую хочешь видеть.',
'Каждый день без возврата к старой привычке — ещё один шаг вперёд.',
'Ты не соревнуешься с другими. Твой путь — только твой.',
'Посмотри назад и сравни себя с первым днём. Прогресс очевиден.',
];

static const List<String> _ruThirdMonth = [
'Три месяца — серьёзная дистанция. И ты продолжаешь.',
'Ты создал новую точку отсчёта для себя.',
'Стабильность сильнее мотивации. Ты это уже показываешь.',
'Ты продолжаешь выбирать то, что важно именно тебе.',
'С каждым днём старый сценарий становится всё менее важным.',
'Ты больше не ждёшь подходящего момента. Ты создаёшь его.',
'90 дней — это история из множества маленьких побед.',
'Ты прошёл далеко. Не останавливайся на достигнутом.',
];

static const List<String> _ruLongTerm = [
'Ты уже далеко от стартовой точки. Продолжай.',
'Свобода начинается с выбора и продолжается ежедневными решениями.',
'Твой результат — это сумма всех дней, когда ты продолжал.',
'Ты создал дистанцию, которую когда-то мог даже не представить.',
'Не забывай, зачем начал.',
'Каждый новый день делает твою историю ещё сильнее.',
'Ты не возвращаешься назад. Ты продолжаешь вперёд.',
'То, что когда-то казалось сложным, сегодня стало частью твоего пути.',
'Ты уже доказал себе главное: изменения возможны.',
'Продолжай жить своим новым ритмом.',
];

// ═════════════════════════════════════════════════════════════
// ENGLISH
// ═════════════════════════════════════════════════════════════

static const Map<int, String> _enMilestones = {
1: 'Your first day. You took the first big step. Keep going.',
3: 'Three days. That is worth celebrating. You are staying on course.',
7: 'A full week. Seven days of choosing yourself.',
10: '10 days. You have already built serious momentum.',
14: 'Two weeks. You have made it through an important part of the journey.',
21: '21 days. You are proving that your habits can change.',
30: '30 days. A full month of new decisions. That is a big achievement.',
45: '45 days. A month and a half of moving forward.',
60: '60 days. Two months of consistency. That is powerful.',
90: '90 days. Three months. Look how far you have come.',
120: '120 days. You keep choosing your path every day.',
180: 'Six months. 180 days of consistency. That is seriously impressive.',
270: '270 days. You have created a huge distance from your old habit.',
365: 'One year. 365 days of your journey. This is consistency, not luck.',
};

static const List<String> _enFirstWeek = [
'Today, you only need to take the next step.',
'You do not have to finish the whole journey today. Just keep going.',
'Every day is its own win. Today is yours.',
'A difficult moment does not erase your progress.',
'You already started. Now give yourself a chance to continue.',
'One day at a time. That is how big changes are built.',
'You keep choosing yourself. That matters.',
];

static const List<String> _enSecondWeek = [
'You are not where you started anymore. Keep moving.',
'Two weeks are closer than they seem. Keep your rhythm.',
'Your progress is built from small decisions.',
'Do not wait for a perfect day. Create the next good one.',
'You can get through a difficult craving and return to your plan.',
'Every new day builds more confidence.',
'You have already proven that you can handle difficult moments.',
];

static const List<String> _enFirstMonth = [
'You are building a new habit one step at a time.',
'Your past does not define today’s choice.',
'Thirty days begin with one decision: keep going.',
'Confidence grows through many consistent days.',
'Every new day adds another page to your story.',
'Your progress belongs to you. Nobody can take it away.',
'You have already come far enough to be proud of yourself.',
'Keep going calmly. Big changes do not require rushing.',
];

static const List<String> _enSecondMonth = [
'Two months is no longer a coincidence.',
'You are turning intention into consistency.',
'Your strength is in the decisions you make every day.',
'You already know you can handle difficult moments.',
'Keep building the life you want to live.',
'Every day away from the old habit is another step forward.',
'You are not competing with anyone. This path is yours.',
'Look back at day one. The progress is real.',
];

static const List<String> _enThirdMonth = [
'Three months is serious distance. And you are still moving.',
'You have created a new starting point for yourself.',
'Consistency is stronger than motivation. You are proving it.',
'You keep choosing what matters to you.',
'With every day, the old pattern becomes less important.',
'You are not waiting for the right moment. You are creating it.',
'90 days is a story made of many small wins.',
'You have come a long way. Keep building on it.',
];

static const List<String> _enLongTerm = [
'You are far from where you started. Keep going.',
'Freedom starts with a choice and grows through daily decisions.',
'Your result is the sum of every day you kept going.',
'You have created a distance you may once have thought impossible.',
'Remember why you started.',
'Every new day makes your story stronger.',
'You are not going backward. You are moving forward.',
'What once felt difficult is now part of your journey.',
'You have already proven something important: change is possible.',
'Keep living at your new rhythm.',
];

// ═════════════════════════════════════════════════════════════
// LEVELS — RU
// ═════════════════════════════════════════════════════════════

static const Map<int, String> _ruLevelMessages = {
1: 'Путь начался. Самое важное — сделать первый шаг.',
2: 'Росток появился. Заботься о своём прогрессе каждый день.',
3: 'Ты растёшь. Маленькие решения создают большие перемены.',
4: 'Корни становятся крепче. Продолжай строить свой фундамент.',
5: 'Ты становишься увереннее. Не сбавляй свой темп.',
6: 'Сила появляется там, где ты продолжаешь несмотря на трудности.',
7: 'Твоя решимость становится частью твоей истории.',
8: 'Искра превратилась в уверенное движение вперёд.',
9: 'Ты прошёл серьёзный путь. Признай свой прогресс.',
10: 'Десятый уровень. Ты уже знаешь цену последовательности.',
11: 'Ты продолжаешь расти даже тогда, когда путь непростой.',
12: 'Ты стал примером для самого себя. Продолжай.',
13: 'Ты набрал огромный ход. Теперь главное — сохранять направление.',
14: 'Легендарный уровень. Посмотри, сколько всего ты уже сделал.',
};

// ═════════════════════════════════════════════════════════════
// LEVELS — EN
// ═════════════════════════════════════════════════════════════

static const Map<int, String> _enLevelMessages = {
1: 'The journey has begun. The most important thing is taking the first step.',
2: 'The seed is growing. Protect your progress every day.',
3: 'You are growing. Small decisions create big changes.',
4: 'Your roots are getting stronger. Keep building your foundation.',
5: 'You are becoming more confident. Keep your momentum.',
6: 'Strength grows when you keep going through difficult moments.',
7: 'Your determination is becoming part of your story.',
8: 'The spark has become steady forward movement.',
9: 'You have come a long way. Give yourself credit.',
10: 'Level ten. You already understand the power of consistency.',
11: 'You keep growing even when the path gets difficult.',
12: 'You have become an example to yourself. Keep going.',
13: 'You have built serious momentum. Now protect your direction.',
14: 'Legendary level. Look at how far you have come.',
};

// ═════════════════════════════════════════════════════════════
// SHORT MESSAGES
// ═════════════════════════════════════════════════════════════

static const List<String> _ruShortMessages = [
'Сегодня — ещё один шаг.',
'Продолжай свой путь.',
'Ты справляешься.',
'Твой прогресс имеет значение.',
'Не останавливайся на одном трудном моменте.',
'Ты сильнее своей старой привычки.',
'Выбирай следующий шаг.',
'Ты уже начал. Продолжай.',
'Сегодняшний выбор важен.',
'Один день за другим.',
'Ты можешь больше, чем думаешь.',
'Твой путь принадлежит тебе.',
];

static const List<String> _enShortMessages = [
'Today is another step.',
'Keep moving forward.',
'You are doing it.',
'Your progress matters.',
'Do not let one difficult moment define the day.',
'You are stronger than your old habit.',
'Choose the next step.',
'You already started. Keep going.',
'Today’s choice matters.',
'One day at a time.',
'You can do more than you think.',
'This journey belongs to you.',
];
}

