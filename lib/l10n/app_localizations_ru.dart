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
}
