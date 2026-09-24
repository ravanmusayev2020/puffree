// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'Puffree';

  @override
  String get tagline => 'Свобода от курения';

  @override
  String get today => 'Сегодня';

  @override
  String get streak => 'Стрик';

  @override
  String get saved => 'Сэкономлено';

  @override
  String get avoided => 'Избежано';

  @override
  String get totalDays => 'Всего дней';

  @override
  String get dailyMotivation => 'Мотивация дня';

  @override
  String get checkIn => 'Я не курил сегодня';

  @override
  String get checkedInToday => 'Отмечено сегодня';

  @override
  String get missions => 'Задания дня';

  @override
  String completedOf(int completed, int total) {
    return 'Выполнено $completed из $total';
  }

  @override
  String get premium => 'Premium';

  @override
  String get tryFree => 'Попробовать 3 дня бесплатно';

  @override
  String get buyPremium => 'Купить Premium';

  @override
  String get restore => 'Восстановить покупки';

  @override
  String get premiumHint => 'Открой все функции с Premium';

  @override
  String get settings => 'Настройки';

  @override
  String get progress => 'Твой прогресс';

  @override
  String get statistics => 'Статистика';

  @override
  String get currentStreak => 'Текущий стрик';

  @override
  String get record => 'Рекорд';

  @override
  String get bodyChanges => 'Что происходит с телом';

  @override
  String get resetProgress => 'Сбросить прогресс';

  @override
  String get resetConfirm =>
      'Все данные о днях, стрике и статистике будут удалены. Это действие нельзя отменить.';

  @override
  String get cancel => 'Отмена';

  @override
  String get reset => 'Сбросить';

  @override
  String get journalTitle => 'Дневник';

  @override
  String get journalHint => 'Запиши свои мысли';

  @override
  String get journalPlaceholder => 'Как ты себя чувствуешь сегодня?';

  @override
  String get save => 'Сохранить';

  @override
  String get moodCheck => 'Как ты себя чувствуешь?';

  @override
  String get moodCheckHint => 'Удели минуту, чтобы проверить своё состояние.';

  @override
  String get version => 'Версия';

  @override
  String get privacy => 'Политика конфиденциальности';

  @override
  String get terms => 'Условия использования';

  @override
  String get disclaimer =>
      'Puffree — мотивационное приложение. Оно не является медицинским средством и не заменяет консультацию врача. При сильной никотиновой зависимости обратитесь к специалисту.';

  @override
  String level(int number) {
    return 'Уровень $number';
  }

  @override
  String daysSmokeFree(int count) {
    return '$count дней без сигарет';
  }

  @override
  String nextLevelProgress(int percent) {
    return '$percent% до следующего уровня';
  }

  @override
  String get friend => 'Друг';

  @override
  String helloName(String name) {
    return 'Привет, $name!';
  }

  @override
  String get pathToFreedom => 'Твой путь к свободе';

  @override
  String get withoutCigs => 'без сигарет';

  @override
  String get iSmoked => 'Я закурил';

  @override
  String get relapseTitle => 'Всё в порядке';

  @override
  String get relapseBody =>
      'Одна сигарета не перечёркивает твой прогресс. Извлеки урок из этого момента и продолжай двигаться вперёд.';

  @override
  String get relapseDone => 'Продолжить';

  @override
  String get home => 'Главная';

  @override
  String get tasks => 'Задания';

  @override
  String get missionBreathe => 'Глубокое дыхание';

  @override
  String get missionWater => 'Выпей воду';

  @override
  String get missionWalk => 'Прогулка 10 минут';

  @override
  String get missionJournal => 'Запиши мысль';

  @override
  String get missionMeditation => 'Медитация 5 мин';

  @override
  String get missionFocus => 'Фокус без телефона';

  @override
  String get missionReflect => 'Рефлексия дня';

  @override
  String get missionHelp => 'Поддержи кого-то';

  @override
  String get missionBreatheDesc =>
      'Сделай несколько медленных глубоких вдохов.';

  @override
  String get missionWaterDesc => 'Выпей стакан воды.';

  @override
  String get missionWalkDesc => 'Прогуляйся 10 минут.';

  @override
  String get missionJournalDesc => 'Запиши одну мысль о своём дне.';

  @override
  String get missionMeditationDesc => 'Удели 5 минут медитации.';

  @override
  String get missionFocusDesc => 'Проведи время в фокусе без телефона.';

  @override
  String get missionReflectDesc => 'Подумай, как прошёл твой день.';

  @override
  String get missionHelpDesc =>
      'Сделай что-то доброе, чтобы поддержать кого-то.';

  @override
  String get sosTitle => 'SOS Поддержка';

  @override
  String get sosTimer => 'Таймер тяги';

  @override
  String get sosBreathe => 'Дыхание';

  @override
  String get sosChat => 'Разговор';

  @override
  String get sosStart => 'Начать';

  @override
  String get sosDone => 'Готово';

  @override
  String get sosManaged => 'Ты справился с тягой!';

  @override
  String get sosWon => 'Ты победил!';

  @override
  String get sosLeft => 'осталось';

  @override
  String get sosTip1 => 'Сделай несколько медленных глубоких вдохов.';

  @override
  String get sosTip2 => 'Выпей стакан воды.';

  @override
  String get sosTip3 => 'Перейди в другое место.';

  @override
  String get sosTip4 => 'Займи руки чем-нибудь.';

  @override
  String get sosTip5 => 'Вспомни, зачем ты начал.';

  @override
  String get sosTip6 => 'Дай тяге несколько минут, чтобы пройти.';

  @override
  String get breatheIn => 'Вдох';

  @override
  String get breatheHold => 'Задержка';

  @override
  String get breatheOut => 'Выдох';

  @override
  String get breatheHint => 'Следуй за кругом и дыши медленно.';

  @override
  String get breatheStart => 'Начать дыхание';

  @override
  String get chatPick => 'Что ты чувствуешь сейчас?';

  @override
  String get chatCraving => 'У меня тяга';

  @override
  String get chatStress => 'Я в стрессе';

  @override
  String get chatBoredom => 'Мне скучно';

  @override
  String get chatNeedWalk => 'Мне нужна прогулка';

  @override
  String get chatNeedWater => 'Мне нужна вода';

  @override
  String get chatNeedBreathe => 'Мне нужно подышать';

  @override
  String get chatIntroStress =>
      'Похоже, ты чувствуешь стресс. Давай пройдём этот момент вместе.';

  @override
  String get chatIntroBoredom =>
      'Скука может усиливать тягу. Давай найдём, на чём ещё сфокусироваться.';

  @override
  String get chatIntroCraving =>
      'Тяга может быть сильной, но она пройдёт. Давай по одному моменту.';

  @override
  String get chatReplyStress =>
      'Попробуй сделать несколько медленных вдохов и дай себе короткую паузу. Тебе не обязательно поддаваться тяге.';

  @override
  String get chatReplyBoredom =>
      'Давай сменим обстановку. Прогуляйся, выпей воды или займи руки чем-нибудь.';

  @override
  String get chatReplyCraving =>
      'Подожди несколько минут, прежде чем принимать решение. Выпей воды, подыши медленно и вспомни, зачем ты начал.';

  @override
  String get onboardingTitle1 => 'Дыши свободно';

  @override
  String get onboardingDesc1 =>
      'Puffree поможет тебе пройти путь отказа от курения шаг за шагом — без давления и с поддержкой.';

  @override
  String get onboardingTitle2 => 'Уровни и прогресс';

  @override
  String get onboardingDesc2 =>
      'Каждый день без сигареты открывает новый уровень. Смотри, как растёт твоя сила и здоровье.';

  @override
  String get onboardingTitle3 => 'Ежедневная поддержка';

  @override
  String get onboardingDesc3 =>
      'Мотивация, задания и отслеживание прогресса. Ты не один на этом пути.';

  @override
  String get aboutYou => 'Немного о тебе';

  @override
  String get aboutYouDesc =>
      'Это поможет считать сэкономленные деньги и сигареты';

  @override
  String get cigsPerDay => 'Сигарет в день раньше';

  @override
  String get pricePerPack => 'Цена пачки';

  @override
  String get startJourney => 'Начать путь';

  @override
  String get next => 'Далее';

  @override
  String get skip => 'Пропустить';

  @override
  String get youGotThis => 'Ты справишься. Один момент за раз.';

  @override
  String get waitTheWave => 'Пережди волну тяги';

  @override
  String get youPassedThis => 'Ты прошёл этот момент';

  @override
  String get greatJob => 'Отличная работа. Ты контролируешь ситуацию.';

  @override
  String get giveYourselfMinutes =>
      'Дай себе несколько минут и сосредоточься на настоящем моменте.';

  @override
  String get keepGoing => 'ПРОДОЛЖАЙ';

  @override
  String get done => 'ГОТОВО';

  @override
  String get breatheSlowly => 'Дыши медленно';

  @override
  String get followTheCircle => 'Следуй ритму круга';

  @override
  String get chooseWhatFits =>
      'Выбери то, что ближе к твоему состоянию сейчас.';

  @override
  String get yourResults => 'Твои результаты';

  @override
  String get whatChanged => 'То, что уже изменилось благодаря тебе';

  @override
  String get recoveryPath => 'Путь восстановления';

  @override
  String get everyMilestone => 'Каждая веха — ещё один шаг вперёд';

  @override
  String get levelProgress => 'Прогресс до следующего уровня';

  @override
  String get yourPathContinues => 'Твой путь продолжается';

  @override
  String get daysWordOne => 'день';

  @override
  String get daysWordFew => 'дня';

  @override
  String get daysWordMany => 'дней';

  @override
  String get momentum => 'ИМПУЛЬС';

  @override
  String missionsLeft(int count) {
    return 'Осталось $count миссий';
  }

  @override
  String get allMissionsDone => 'Все миссии завершены';

  @override
  String get dayComplete => 'День завершён';

  @override
  String get keepGoingShort => 'Продолжай';

  @override
  String get inProgress => 'В ПРОЦЕССЕ';

  @override
  String get complete => 'ЗАВЕРШЕНО';

  @override
  String get yourPlanToday => 'Твой план на сегодня';

  @override
  String get everythingDone => 'Всё выполнено';

  @override
  String get theme => 'Тема';

  @override
  String get language => 'Язык';

  @override
  String get notifications => 'Уведомления';

  @override
  String get notificationsHint => 'Напоминания и мотивация';

  @override
  String get data => 'Данные';

  @override
  String get aboutApp => 'О приложении';

  @override
  String get appTheme => 'Тема приложения';

  @override
  String get chooseTheme => 'Выбери, как Puffree должен выглядеть.';

  @override
  String get systemTheme => 'Системная';

  @override
  String get systemThemeDesc => 'Следовать настройкам телефона';

  @override
  String get lightTheme => 'Светлая';

  @override
  String get lightThemeDesc => 'Всегда использовать светлую тему';

  @override
  String get darkTheme => 'Тёмная';

  @override
  String get darkThemeDesc => 'Всегда использовать тёмную тему';

  @override
  String get premiumActive => 'Premium активен';

  @override
  String get trialActive => 'Пробный период активен';

  @override
  String get fullAccess => 'Полный доступ ко всем функциям';

  @override
  String get openPremium => 'Открыть Premium и варианты подписки';

  @override
  String get resetProgressTitle => 'Сбросить прогресс?';

  @override
  String get resetProgressBody =>
      'Все данные о днях, стрике и статистике будут удалены. Это действие нельзя отменить.';

  @override
  String get excellent => 'Отлично!';

  @override
  String get anotherDayFree => 'Ещё один день без сигарет';

  @override
  String get continueBtn => 'Продолжить';

  @override
  String get newAchievement => 'НОВОЕ ДОСТИЖЕНИЕ';

  @override
  String get newLevel => 'Новый уровень!';

  @override
  String get levelUpMessage => 'Продолжай — у тебя отлично получается!';

  @override
  String get freeFor => 'СВОБОДЕН УЖЕ';

  @override
  String get toNextLevel => 'До следующего уровня';

  @override
  String get keyResults => 'КЛЮЧЕВЫЕ РЕЗУЛЬТАТЫ';

  @override
  String get progressSystem => 'СИСТЕМА ПРОГРЕССА';

  @override
  String get everyDayCloser => 'Каждый день приближает к следующему уровню';

  @override
  String get current => 'Сейчас';

  @override
  String get nextLevel => 'Следующий';

  @override
  String get smallSteps => 'Маленькие шаги. Большие изменения.';

  @override
  String get youAreFurther => 'Ты уже дальше, чем вчера';

  @override
  String get madeForFuture => 'Создано для будущего без сигарет';

  @override
  String get dayStreakCaption => 'дней подряд';

  @override
  String get cigarettesAvoidedCaption => 'не выкурено';

  @override
  String get freeDaysCaption => 'дней свободы';

  @override
  String get levelLabel => 'Уровень';

  @override
  String get keepStreakAlive => 'Поддерживай свой стрик';

  @override
  String get failedToLoadProgress => 'Не удалось загрузить прогресс';

  @override
  String get levelTitle1 => 'Первый вдох';

  @override
  String get levelTitle2 => 'Росток';

  @override
  String get levelTitle3 => 'Рост';

  @override
  String get levelTitle4 => 'Корни';

  @override
  String get levelTitle5 => 'Ствол';

  @override
  String get levelTitle6 => 'Сила';

  @override
  String get levelTitle7 => 'Огонь';

  @override
  String get levelTitle8 => 'Искра';

  @override
  String get levelTitle9 => 'Чемпион';

  @override
  String get levelTitle10 => 'Мастер';

  @override
  String get levelTitle11 => 'Алмаз';

  @override
  String get levelTitle12 => 'Звезда';

  @override
  String get levelTitle13 => 'Ракета';

  @override
  String get levelTitle14 => 'Легенда';

  @override
  String get levelTitleDefault => 'Путь';

  @override
  String get milestone1Title => 'Начало нового пути';

  @override
  String get milestone1Desc =>
      'Ты уже сделал первый шаг и продолжаешь двигаться вперёд.';

  @override
  String get milestone2Title => 'Первые изменения';

  @override
  String get milestone2Desc =>
      'Организм постепенно адаптируется к жизни без сигарет.';

  @override
  String get milestone3Title => 'Новый этап';

  @override
  String get milestone3Desc =>
      'Постепенно формируется новый ритм без привычки.';

  @override
  String get milestone4Title => 'Уверенный прогресс';

  @override
  String get milestone4Desc =>
      'Две недели — заметная веха на пути к новой привычке.';

  @override
  String get milestone5Title => 'Большая привычка меняется';

  @override
  String get milestone5Desc =>
      'Месяц последовательности — серьёзный личный результат.';

  @override
  String get milestone6Title => 'Большой рубеж';

  @override
  String get milestone6Desc =>
      'Продолжение пути помогает закреплять новый образ жизни.';

  @override
  String get milestone7Title => 'Год свободы';

  @override
  String get milestone7Desc => 'Год без сигарет — большая веха на твоём пути.';

  @override
  String get navProgress => 'Прогресс';

  @override
  String get more => 'Ещё';

  @override
  String get settingsSubtitle => 'Настрой Puffree под себя';

  @override
  String get sectionApp => 'Приложение';

  @override
  String get sectionData => 'Данные';

  @override
  String get sectionAbout => 'О приложении';

  @override
  String get resetProgressSubtitle => 'Начать путь заново';

  @override
  String get premiumActiveBadge => 'ACTIVE';

  @override
  String get splashCaption => 'Свобода от курения';

  @override
  String get todayStartJourney => 'Сегодня — начало твоего нового пути.';

  @override
  String realResultKeepGoing(int count, String daysWord) {
    return '$count $daysWord — это уже реальный результат. Продолжай.';
  }

  @override
  String get notificationMorningTitle1 => 'Доброе утро ☀️';

  @override
  String notificationMorningBody1(int day) {
    return 'День $day без сигарет. Продолжай сохранять свой темп.';
  }

  @override
  String get notificationMorningTitle2 => 'Новый день без сигарет';

  @override
  String get notificationMorningBody2 =>
      'Сегодня не нужно думать обо всём пути. Просто проживи этот день.';

  @override
  String get notificationMorningTitle3 => 'Продолжай';

  @override
  String get notificationMorningBody3 =>
      'Маленькие решения сегодня создают твоё будущее без сигарет.';

  @override
  String get notificationMorningTitle4 => 'Твой путь продолжается';

  @override
  String get notificationMorningBody4 =>
      'Каждый день без сигарет — ещё один день, когда ты выбрал себя.';

  @override
  String get notificationMorningTitle5 => 'У тебя получится';

  @override
  String get notificationMorningBody5 =>
      'Иди сегодня маленькими шагами. Один момент за раз.';

  @override
  String get notificationCheckInTitle1 => 'Как прошёл твой день?';

  @override
  String get notificationCheckInBody1 =>
      'Удели минуту себе и отметь сегодняшний прогресс.';

  @override
  String get notificationCheckInTitle2 => 'Check-in Puffree';

  @override
  String get notificationCheckInBody2 =>
      'Ты сегодня не курил? Отметь свой прогресс.';

  @override
  String get notificationCheckInTitle3 => 'Ещё один день';

  @override
  String get notificationCheckInBody3 => 'Твой путь строится день за днём.';

  @override
  String get notificationCheckInTitle4 => 'Поддержи свой стрик';

  @override
  String get notificationCheckInBody4 =>
      'Открой Puffree и отметь сегодняшний день.';

  @override
  String get notificationEveningTitle1 => 'Как ты себя чувствуешь? 🌙';

  @override
  String get notificationEveningBody1 =>
      'Удели немного времени себе и проверь своё состояние.';

  @override
  String get notificationEveningTitle2 => 'Вечерний check-in';

  @override
  String get notificationEveningBody2 =>
      'Как прошёл сегодняшний день? Твой дневник ждёт.';

  @override
  String get notificationEveningTitle3 => 'Перед концом дня';

  @override
  String get notificationEveningBody3 =>
      'Остановись на минуту и заметь, как далеко ты уже продвинулся.';

  @override
  String get notificationEveningTitle4 => 'Момент для себя';

  @override
  String get notificationEveningBody4 =>
      'Подыши, подумай о сегодняшнем дне и спокойно заверши его.';

  @override
  String get notificationMilestone1Title => 'Твой первый день 🌱';

  @override
  String get notificationMilestone1Body =>
      'Один день без сигарет — уже настоящий шаг вперёд.';

  @override
  String get notificationMilestone3Title => 'Три дня 🔥';

  @override
  String get notificationMilestone3Body =>
      'Три дня без сигарет. Ты набираешь свой первый серьёзный импульс.';

  @override
  String get notificationMilestone7Title => 'Целая неделя! 🏆';

  @override
  String get notificationMilestone7Body =>
      'Семь дней без сигарет. Это уже серьёзная веха.';

  @override
  String get notificationMilestone14Title => 'Две недели 💪';

  @override
  String get notificationMilestone14Body =>
      'Четырнадцать дней без сигарет. Продолжай формировать новый ритм.';

  @override
  String get notificationMilestone21Title => 'Три недели 🧠';

  @override
  String get notificationMilestone21Body =>
      '21 день позади. Твой путь продолжается.';

  @override
  String get notificationMilestone30Title => 'Целый месяц! 👑';

  @override
  String get notificationMilestone30Body =>
      '30 дней без сигарет. Посмотри, как далеко ты уже продвинулся.';

  @override
  String get notificationMilestone60Title => 'Два месяца 🚀';

  @override
  String get notificationMilestone60Body =>
      '60 дней без сигарет. Последовательность становится твоей силой.';

  @override
  String get notificationMilestone90Title => '90 дней 💎';

  @override
  String get notificationMilestone90Body =>
      'Три месяца без сигарет. Это большая веха на твоём пути.';

  @override
  String get notificationMilestone180Title => 'Полгода! ✨';

  @override
  String get notificationMilestone180Body =>
      '180 дней без сигарет. Ты создал огромный импульс.';

  @override
  String get notificationMilestone365Title => 'Один год! 🏆';

  @override
  String get notificationMilestone365Body =>
      '365 дней без сигарет. Целый год твоего нового пути.';

  @override
  String get notificationMilestoneGenericTitle => 'Ещё одна веха';

  @override
  String notificationMilestoneGenericBody(int days) {
    return '$days дней без сигарет. Продолжай двигаться вперёд.';
  }

  @override
  String get notificationRelapseTitle1 => 'Всё в порядке';

  @override
  String get notificationRelapseBody1 =>
      'Один сложный момент не перечёркивает всё, что ты уже построил.';

  @override
  String get notificationRelapseTitle2 => 'Продолжай';

  @override
  String get notificationRelapseBody2 =>
      'Срыв — это момент, а не конец твоего пути.';

  @override
  String get notificationRelapseTitle3 => 'Вернись на свой путь';

  @override
  String get notificationRelapseBody3 =>
      'Сделай вдох, извлеки урок из момента и продолжай.';

  @override
  String get notificationInactive1Title => 'Мы сегодня тебя не видели 👋';

  @override
  String get notificationInactive1Body =>
      'Открой Puffree и отметь прогресс, когда будешь готов.';

  @override
  String get notificationInactive2Title => 'Твой путь всё ещё здесь';

  @override
  String get notificationInactive2Body =>
      'Несколько тихих дней не стирают уже достигнутый прогресс.';

  @override
  String get notificationInactive3Title => 'Возвращайся, когда будешь готов';

  @override
  String get notificationInactive3Body =>
      'Тебе не нужно быть идеальным. Просто сделай следующий шаг.';

  @override
  String get onbTitle1 => 'Что вы используете?';

  @override
  String get onbSubtitle1 => 'Мы персонализируем всё под вашу привычку.';

  @override
  String get onbTitle2 => 'Сколько вы используете?';

  @override
  String get onbSubtitle2 =>
      'Честные цифры помогут рассчитать реальный прогресс.';

  @override
  String get onbTitle3 => 'Сколько это вам стоит?';

  @override
  String get onbSubtitle3 =>
      'Узнайте, сколько денег вы сможете экономить каждый месяц.';

  @override
  String get onbTitle4 => 'Как чувствует себя тело?';

  @override
  String get onbSubtitle4 => 'Выберите симптомы, которые замечаете чаще всего.';

  @override
  String get onbTitle5 => 'Почему вы хотите бросить?';

  @override
  String get onbSubtitle5 => 'Ваши причины станут основой персонального плана.';

  @override
  String get onbTitle6 => 'Создаём ваш план';

  @override
  String get onbSubtitle6 => 'Мы составляем путь специально для вас.';

  @override
  String get onbTitle7 => 'Ваш план готов';

  @override
  String get onbSubtitle7 => 'Начните путь с планом, созданным для вас.';

  @override
  String get onbEyebrowBeforeStart => 'ПЕРЕД НАЧАЛОМ';

  @override
  String get onbEyebrowStartingPoint => 'ТОЧКА ОТСЧЁТА';

  @override
  String get onbEyebrowRealCost => 'РЕАЛЬНАЯ ЦЕНА';

  @override
  String get onbEyebrowSelfAwareness => 'САМОСОЗНАНИЕ';

  @override
  String get onbEyebrowYourReason => 'ВАША ПРИЧИНА';

  @override
  String get onbEyebrowPersonalization => 'ПЕРСОНАЛИЗАЦИЯ';

  @override
  String get onbEyebrowDone => 'ВЫ ГОТОВЫ';

  @override
  String get onbHabitCigarettesTitle => 'Сигареты';

  @override
  String get onbHabitCigarettesSubtitle => 'Обычные или самокрутки';

  @override
  String get onbHabitVapeTitle => 'Вейп / Поды';

  @override
  String get onbHabitVapeSubtitle => 'Электронные сигареты и под-системы';

  @override
  String get onbPodsPerWeekLabel => 'Подов в неделю';

  @override
  String get onbCigarettesPerDayLabel => 'Сигарет в день';

  @override
  String get onbYearsSmokedLabel => 'Лет курения';

  @override
  String get onbUnitPieces => 'шт';

  @override
  String get onbUnitYears => 'лет';

  @override
  String get onbAmountVapeHint =>
      'Это поможет рассчитать недельную стоимость и прогресс.';

  @override
  String get onbPotentialSavingsLabel => 'Потенциальная экономия в месяц';

  @override
  String get onbPerMonthQuitting => 'в месяц, когда бросите';

  @override
  String get onbPricePerPodLabel => 'Цена за под';

  @override
  String get onbPricePerPackLabel => 'Цена за пачку';

  @override
  String get onbCigarettesPerPackLabel => 'Сигарет в пачке';

  @override
  String get onbCurrencyLabel => 'Валюта';

  @override
  String get onbSymptomBreath => 'Одышка';

  @override
  String get onbSymptomAnxiety => 'Тревога / беспокойство';

  @override
  String get onbSymptomPulse => 'Учащённый или неровный пульс';

  @override
  String get onbSymptomMorning => 'Утренний кашель / мокрота';

  @override
  String get onbSymptomCough => 'Частый кашель';

  @override
  String get onbBodyHint =>
      'Можно выбрать несколько. Это поможет сфокусироваться на важном.';

  @override
  String get onbMotivationHealth => 'Здоровье и энергия';

  @override
  String get onbMotivationFreedom => 'Свобода от зависимости';

  @override
  String get onbMotivationMoney => 'Экономия денег';

  @override
  String get onbMotivationFamily => 'Ради семьи / детей';

  @override
  String get onbMotivationControl => 'Вернуть контроль над жизнью';

  @override
  String get onbMotivationFuture => 'Здоровое будущее';

  @override
  String get onbSelectMultipleHint => 'Можно выбрать несколько причин';

  @override
  String get onbStartingMapLabel => 'Строим вашу карту';

  @override
  String get onbBuildingStepSave => 'Считаем экономию';

  @override
  String get onbBuildingStepGoal => 'Ставим главную цель';

  @override
  String get onbBuildingStepScenarios => 'Создаём личные сценарии';

  @override
  String get onbBuildingStepSteps => 'Готовим первые шаги';

  @override
  String get onbBuildingHint => 'Обычно это занимает всего несколько секунд.';

  @override
  String get onbPleaseWait => 'Подождите немного…';

  @override
  String get onbCreatingPlan => 'Создаём ваш план…';

  @override
  String get onbFirst30DaysLabel => 'Первые 30 дней';

  @override
  String get onbLessExpensesLabel => 'Меньше расходов';

  @override
  String get onbSavingsPerMonth => 'Экономия в месяц';

  @override
  String get onbSavingsPerYear => 'Экономия в год';

  @override
  String get onbPlanPersonalizedTitle => 'Ваш персональный план';

  @override
  String onbPlanPersonalizedSubtitle(int motivations, int symptoms) {
    return 'На основе $motivations причин и $symptoms симптомов';
  }

  @override
  String get onbResultHint =>
      'Вы всегда можете изменить эти цифры позже в настройках.';

  @override
  String get onbBreathingHint => 'ДЫШИТЕ';

  @override
  String get onbContinue => 'Продолжить';

  @override
  String get onbStartJourney => 'Начать путь';

  @override
  String get onboardingHabitTitle => 'Готов вернуть контроль?';

  @override
  String get onboardingHabitSubtitle =>
      'Сначала разберём твою привычку. Никаких длинных форм — несколько точных ответов, и Puffree соберёт твой маршрут.';

  @override
  String get onboardingAmountTitle => 'Опиши свой обычный день';

  @override
  String get onboardingAmountSubtitle =>
      'Это нужна не для оценки тебя. Это стартовая точка, от которой мы будем считать прогресс.';

  @override
  String get onboardingMoneyTitle => 'Сколько привычка забирает у тебя?';

  @override
  String get onboardingMoneySubtitle =>
      'Цена меняется сразу на экране — ты видишь не абстрактную цифру, а реальную стоимость привычки.';

  @override
  String get onboardingBodyTitle => 'Что ты замечаешь в себе?';

  @override
  String get onboardingBodySubtitle =>
      'Отметь то, что бывает у тебя. Можно выбрать несколько вариантов или ничего.';

  @override
  String get onboardingMotivationTitle => 'Ради чего ты это делаешь?';

  @override
  String get onboardingMotivationSubtitle =>
      'Это станет твоей личной опорой. Puffree будет возвращать тебя к этой причине в нужный момент.';

  @override
  String get onboardingBuildingTitle => 'Собираем твой маршрут';

  @override
  String get onboardingBuildingSubtitle =>
      'Не медицинский диагноз и не обещание идеального дня. Только твоя стартовая точка и понятные следующие шаги.';

  @override
  String get onboardingResultTitle => 'Твой первый экран прогресса уже здесь';

  @override
  String get onboardingResultSubtitle =>
      'Сохраняем стартовые данные на устройстве и превращаем их в измеримый прогресс.';

  @override
  String get onboardingEyebrowBeforeStart => 'ПЕРЕД СТАРТОМ';

  @override
  String get onboardingEyebrowStartPoint => 'ТВОЯ СТАРТОВАЯ ТОЧКА';

  @override
  String get onboardingEyebrowRealCost => 'РЕАЛЬНАЯ ЦЕНА';

  @override
  String get onboardingEyebrowSelfFeeling => 'САМООЩУЩЕНИЕ';

  @override
  String get onboardingEyebrowYourReason => 'ТВОЯ ПРИЧИНА';

  @override
  String get onboardingEyebrowPersonalization => 'ПЕРСОНАЛИЗАЦИЯ';

  @override
  String get onboardingEyebrowDone => 'ГОТОВО';

  @override
  String get onboardingCigarettesChoice => 'Я курю сигареты';

  @override
  String get onboardingCigarettesChoiceSubtitle => 'Основной сценарий Puffree';

  @override
  String get onboardingVapeChoice => 'Я использую вейп';

  @override
  String get onboardingVapeChoiceSubtitle =>
      'Сохраним этот выбор для твоего профиля';

  @override
  String get onboardingPodsPerWeek => 'Поды / одноразки в неделю';

  @override
  String get onboardingUnitPcs => 'шт.';

  @override
  String get onboardingVapeHint =>
      'Позже профиль Puffree сможет разделить сценарии для сигарет и вейпа без потери истории.';

  @override
  String get onboardingCigarettesPerDay => 'Сигарет в день';

  @override
  String get onboardingYearsSmoked => 'Сколько лет это длится';

  @override
  String get onboardingUnitYears => 'лет';

  @override
  String get onboardingPricePerPod => 'Цена одного пода';

  @override
  String get onboardingPricePerPack => 'Цена пачки';

  @override
  String get onboardingCigarettesPerPack => 'Сигарет в пачке';

  @override
  String get onboardingPotentialSavings => 'Потенциальная экономия';

  @override
  String get onboardingPerMonthIfQuit => 'в месяц при отказе от привычки';

  @override
  String get onboardingCurrency => 'Валюта';

  @override
  String get onboardingSymptomBreath => 'Чувствую, что дыхание стало тяжелее';

  @override
  String get onboardingSymptomAnxiety => 'Иногда чувствую сильную тревожность';

  @override
  String get onboardingSymptomPulse => 'Замечаю учащённый пульс';

  @override
  String get onboardingSymptomMorning =>
      'Особенно тянет к первой сигарете утром';

  @override
  String get onboardingSymptomCough => 'Есть утренний кашель';

  @override
  String get onboardingBodyHint =>
      'Это самоописание, а не диагноз. При тревожащих симптомах лучше обсудить их с врачом.';

  @override
  String get onboardingMotivationHealth => 'Хочу лучше заботиться о здоровье';

  @override
  String get onboardingMotivationFreedom => 'Хочу чувствовать себя свободнее';

  @override
  String get onboardingMotivationMoney =>
      'Хочу перестать тратить деньги на это';

  @override
  String get onboardingMotivationFamily =>
      'Хочу меньше зависеть от привычки рядом с близкими';

  @override
  String get onboardingMotivationControl => 'Хочу вернуть ощущение контроля';

  @override
  String get onboardingMotivationFuture =>
      'Хочу сделать это ради своего будущего';

  @override
  String get onboardingCanSelectSeveral => 'Можно выбрать несколько';

  @override
  String get onboardingYourStartCard => 'твоя стартовая карта';

  @override
  String get onboardingStepSaveAnswers => 'Сохраняем твои ответы';

  @override
  String get onboardingStepFinancialGoal => 'Считаем финансовую цель';

  @override
  String get onboardingStepCravingScenarios => 'Формируем сценарии для тяги';

  @override
  String get onboardingStepFirstSteps => 'Подготавливаем первые шаги';

  @override
  String get onboardingBuildingHint =>
      'Мы намеренно не обещаем «регенерацию лёгких за X часов» — Puffree показывает измеримые вещи и отделяет факт от мотивации.';

  @override
  String get onboardingSavingsPerMonth => 'экономия / месяц';

  @override
  String get onboardingSavingsPerYear => 'экономия / год';

  @override
  String get onboardingResultHint =>
      'Эти цифры — расчёт по твоим ответам, а не обещание результата. Реальный прогресс зависит от твоего поведения.';

  @override
  String get onboardingFirst30Days => 'Первые 30 дней';

  @override
  String get onboardingLessSpendMoreControl =>
      'меньше расходов → больше контроля';

  @override
  String get onboardingPlanPersonalized => 'План персонализирован';

  @override
  String onboardingMotivationsCount(int count) {
    return '$count личных мотиваций';
  }

  @override
  String onboardingSymptomsCount(int count) {
    return '$count отмеченных состояний';
  }

  @override
  String get onboardingTakeFirstStep => 'сделай первый шаг';

  @override
  String get onboardingPleaseWait => 'Пожалуйста, подожди несколько секунд…';

  @override
  String get onboardingCreatingPlan => 'Создаём план…';

  @override
  String get onboardingStartMyJourney => 'Начать мой путь';

  @override
  String get onboardingContinue => 'Продолжить';

  @override
  String get premiumTitle => 'Puffree Premium';

  @override
  String get premiumSubtitle =>
      'Больше возможностей для твоего пути.\nВыбери формат, который подходит тебе.';

  @override
  String get oneMembership => 'Все Premium-функции в одном доступе';

  @override
  String get everythingIncluded => 'Всё включено';

  @override
  String get everythingIncludedSubtitle =>
      'Premium открывает полный набор возможностей Puffree.';

  @override
  String get choosePlan => 'Выбери свой план';

  @override
  String get choosePlanSubtitle => 'Можно изменить выбор перед покупкой.';

  @override
  String get featureTasks => 'Расширенные задания';

  @override
  String get featureTasksSubtitle => 'Больше практик и миссий';

  @override
  String get featureStats => 'Полная статистика';

  @override
  String get featureStatsSubtitle => 'Детали и динамика прогресса';

  @override
  String get profileEditTitle => 'Профиль';

  @override
  String get profileEditTapToChangePhoto => 'Нажмите на фото, чтобы изменить';

  @override
  String get profileEditNameLabel => 'Имя';

  @override
  String get profileEditNameHint => 'Введите имя';

  @override
  String get profileEditSaveButton => 'Сохранить изменения';

  @override
  String get profileEditErrorEmptyName => 'Введите имя';

  @override
  String get profileEditSuccessUpdated => 'Профиль успешно обновлён';

  @override
  String profileEditErrorUpdate(String error) {
    return 'Ошибка обновления профиля: $error';
  }

  @override
  String get authWelcomeBack => 'С возвращением!';

  @override
  String get authCreateAccount => 'Создать аккаунт';

  @override
  String get authResetPassword => 'Сброс пароля';

  @override
  String get authLoginSubtitle => 'Войдите, чтобы продолжить путь к цели';

  @override
  String get authRegisterSubtitle =>
      'Начните новую жизнь без курения уже сегодня';

  @override
  String get authForgotSubtitle =>
      'Укажите ваш Email, и мы отправим инструкцию';

  @override
  String get authTabLogin => 'Вход';

  @override
  String get authTabRegister => 'Регистрация';

  @override
  String get authNameHint => 'Ваше имя';

  @override
  String get authNameRequired => 'Введите ваше имя';

  @override
  String get authEmailHint => 'Email адрес';

  @override
  String get authEmailRequired => 'Введите Email';

  @override
  String get authEmailInvalid => 'Некорректный Email';

  @override
  String get authPasswordHint => 'Пароль';

  @override
  String get authPasswordRequired => 'Введите пароль';

  @override
  String get authPasswordMinLength => 'Пароль должен быть не менее 6 символов';

  @override
  String get authConfirmPasswordHint => 'Повторите пароль';

  @override
  String get authPasswordsDoNotMatch => 'Пароли не совпадают';

  @override
  String get authForgotPassword => 'Забыли пароль?';

  @override
  String get authLoginButton => 'Войти';

  @override
  String get authRegisterButton => 'Зарегистрироваться';

  @override
  String get authSendLinkButton => 'Отправить ссылку';

  @override
  String get authBackToLogin => 'Вернуться ко входу';

  @override
  String get authOrContinueWith => 'или через';

  @override
  String get authGoogle => 'Google';

  @override
  String get authApple => 'Apple';

  @override
  String get authResetLinkSent =>
      'Ссылка для сброса пароля отправлена на почту!';

  @override
  String get authErrorGeneric =>
      'Произошла ошибка. Проверьте введенные данные.';

  @override
  String get authErrorSocial => 'Ошибка авторизации через соцсети.';

  @override
  String get profileEditErrorPhotoNotFound =>
      'Не удалось получить выбранную фотографию';

  @override
  String get profileEditErrorOpenGallery => 'Не удалось открыть галерею';

  @override
  String get profileEditErrorPickPhoto =>
      'Произошла ошибка при выборе фотографии';

  @override
  String get featureMotivation => 'Персональная мотивация';

  @override
  String get featureMotivationSubtitle => 'Подсказки под твой путь';

  @override
  String get featureSupport => 'Помощь при тяге+';

  @override
  String get featureSupportSubtitle => 'Расширенные инструменты';

  @override
  String get featureNotifications => 'Умные напоминания';

  @override
  String get featureNotificationsSubtitle => 'Мотивация в нужный момент';

  @override
  String get featureAds => 'Без рекламы';

  @override
  String get featureAdsSubtitle => 'Спокойный интерфейс';

  @override
  String get planMonthly => 'Ежемесячно';

  @override
  String get planMonthlySubtitle => 'Гибкий вариант без долгих обязательств';

  @override
  String get planYearly => 'Ежегодно';

  @override
  String get planYearlySubtitle => 'Лучший баланс цены и возможностей';

  @override
  String get planLifetime => 'Навсегда';

  @override
  String get planLifetimeSubtitle => 'Одна покупка — Premium навсегда';

  @override
  String get perMonth => '/ месяц';

  @override
  String get perYear => '/ год';

  @override
  String get bestValue => 'ВЫГОДНО';

  @override
  String get oneTime => 'РАЗОВО';

  @override
  String get buyMonthly => 'Оформить Premium на месяц';

  @override
  String get buyYearly => 'Выбрать Premium на год';

  @override
  String get buyLifetime => 'Получить Premium навсегда';

  @override
  String get restorePurchases => 'Восстановить покупки';

  @override
  String get securePurchase => 'Безопасная покупка';

  @override
  String get cancelAnytime => 'Отмена в любой момент';

  @override
  String get restoreAnytime => 'Покупки можно восстановить';

  @override
  String get legalMonthly =>
      'Подписка списывается автоматически каждый месяц. Отменить подписку можно через настройки App Store или Google Play. Цена отображается перед подтверждением покупки.';

  @override
  String get legalYearly =>
      'Подписка списывается автоматически каждый год. Отменить подписку можно через настройки App Store или Google Play. Цена отображается перед подтверждением покупки.';

  @override
  String get legalLifetime =>
      'Разовая покупка не является подпиской и не продлевается автоматически. Цена отображается перед подтверждением покупки.';
}
