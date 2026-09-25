// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Puffree';

  @override
  String get tagline => 'Freedom from smoking';

  @override
  String get today => 'Today';

  @override
  String get streak => 'Streak';

  @override
  String get saved => 'Saved';

  @override
  String get avoided => 'Avoided';

  @override
  String get totalDays => 'Total days';

  @override
  String get dailyMotivation => 'Daily motivation';

  @override
  String get checkIn => 'I didn\'t smoke today';

  @override
  String get checkedInToday => 'Checked in today';

  @override
  String get missions => 'Daily missions';

  @override
  String completedOf(int completed, int total) {
    return 'Completed $completed of $total';
  }

  @override
  String get premium => 'Premium';

  @override
  String get tryFree => 'Try 3 days free';

  @override
  String get buyPremium => 'Buy Premium';

  @override
  String get restore => 'Restore purchases';

  @override
  String get premiumHint => 'Unlock all features with Premium';

  @override
  String get settings => 'Settings';

  @override
  String get progress => 'Your progress';

  @override
  String get statistics => 'Statistics';

  @override
  String get currentStreak => 'Current streak';

  @override
  String get record => 'Record';

  @override
  String get bodyChanges => 'What happens to your body';

  @override
  String get resetProgress => 'Reset progress';

  @override
  String get resetConfirm =>
      'All data about days, streak and statistics will be deleted. This cannot be undone.';

  @override
  String get cancel => 'Cancel';

  @override
  String get reset => 'Reset';

  @override
  String get journalTitle => 'Journal';

  @override
  String get journalHint => 'Write down your thoughts';

  @override
  String get journalPlaceholder => 'How are you feeling today?';

  @override
  String get save => 'Save';

  @override
  String get moodCheck => 'How are you feeling?';

  @override
  String get moodCheckHint => 'Take a moment to check in with yourself.';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Privacy Policy';

  @override
  String get terms => 'Terms of Use';

  @override
  String get disclaimer =>
      'Puffree is a motivational app. It is not a medical device and does not replace professional medical advice. If you have a strong nicotine addiction, please consult a specialist.';

  @override
  String level(int number) {
    return 'Level $number';
  }

  @override
  String daysSmokeFree(int count) {
    return '$count days smoke-free';
  }

  @override
  String nextLevelProgress(int percent) {
    return '$percent% to next level';
  }

  @override
  String get friend => 'Friend';

  @override
  String helloName(String name) {
    return 'Hello, $name!';
  }

  @override
  String get pathToFreedom => 'Your path to freedom';

  @override
  String get withoutCigs => 'without cigarettes';

  @override
  String get iSmoked => 'I smoked';

  @override
  String get relapseTitle => 'It\'s okay';

  @override
  String get relapseBody =>
      'One cigarette does not erase your progress. Learn from this moment and keep moving forward.';

  @override
  String get relapseDone => 'Continue';

  @override
  String get home => 'Home';

  @override
  String get tasks => 'Tasks';

  @override
  String get missionBreathe => 'Deep breathing';

  @override
  String get missionWater => 'Drink water';

  @override
  String get missionWalk => '10 min walk';

  @override
  String get missionJournal => 'Write a thought';

  @override
  String get missionMeditation => '5 min meditation';

  @override
  String get missionFocus => 'Focus without phone';

  @override
  String get missionReflect => 'Day reflection';

  @override
  String get missionHelp => 'Support someone';

  @override
  String get missionBreatheDesc => 'Take a few slow, deep breaths.';

  @override
  String get missionWaterDesc => 'Drink a glass of water.';

  @override
  String get missionWalkDesc => 'Take a 10-minute walk.';

  @override
  String get missionJournalDesc => 'Write down one thought about your day.';

  @override
  String get missionMeditationDesc => 'Take 5 minutes to meditate.';

  @override
  String get missionFocusDesc => 'Spend some time focusing without your phone.';

  @override
  String get missionReflectDesc => 'Think about how your day went.';

  @override
  String get missionHelpDesc => 'Do something kind to support someone.';

  @override
  String get sosTitle => 'SOS Support';

  @override
  String get sosTimer => 'Craving timer';

  @override
  String get sosBreathe => 'Breathe';

  @override
  String get sosChat => 'Talk';

  @override
  String get sosStart => 'Start';

  @override
  String get sosDone => 'Done';

  @override
  String get sosManaged => 'You managed the craving!';

  @override
  String get sosWon => 'You won!';

  @override
  String get sosLeft => 'left';

  @override
  String get sosTip1 => 'Take a few slow, deep breaths.';

  @override
  String get sosTip2 => 'Drink a glass of water.';

  @override
  String get sosTip3 => 'Move to a different place.';

  @override
  String get sosTip4 => 'Keep your hands busy.';

  @override
  String get sosTip5 => 'Think about why you started.';

  @override
  String get sosTip6 => 'Give the craving a few minutes to pass.';

  @override
  String get breatheIn => 'Breathe in';

  @override
  String get breatheHold => 'Hold';

  @override
  String get breatheOut => 'Breathe out';

  @override
  String get breatheHint => 'Follow the circle and breathe slowly.';

  @override
  String get breatheStart => 'Start breathing';

  @override
  String get chatPick => 'What are you feeling right now?';

  @override
  String get chatCraving => 'I\'m having a craving';

  @override
  String get chatStress => 'I\'m stressed';

  @override
  String get chatBoredom => 'I\'m bored';

  @override
  String get chatNeedWalk => 'I need a walk';

  @override
  String get chatNeedWater => 'I need some water';

  @override
  String get chatNeedBreathe => 'I need to breathe';

  @override
  String get chatIntroStress =>
      'It sounds like you\'re feeling stressed. Let\'s get through this moment together.';

  @override
  String get chatIntroBoredom =>
      'Boredom can make cravings feel stronger. Let\'s find something else to focus on.';

  @override
  String get chatIntroCraving =>
      'A craving can feel intense, but it will pass. Let\'s take it one moment at a time.';

  @override
  String get chatReplyStress =>
      'Try taking a few slow breaths and give yourself a short break. You don\'t have to act on the craving.';

  @override
  String get chatReplyBoredom =>
      'Let\'s change your environment. Take a short walk, drink some water, or do something that keeps your hands busy.';

  @override
  String get chatReplyCraving =>
      'Wait a few minutes before making any decision. Drink some water, breathe slowly, and remind yourself why you started.';

  @override
  String get onboardingTitle1 => 'Breathe freely';

  @override
  String get onboardingDesc1 =>
      'Puffree helps you quit smoking step by step — without pressure and with support.';

  @override
  String get onboardingTitle2 => 'Levels and progress';

  @override
  String get onboardingDesc2 =>
      'Every day without a cigarette unlocks a new level. Watch your strength and health grow.';

  @override
  String get onboardingTitle3 => 'Daily support';

  @override
  String get onboardingDesc3 =>
      'Motivation, missions and progress tracking. You are not alone on this path.';

  @override
  String get aboutYou => 'A little about you';

  @override
  String get aboutYouDesc => 'This helps calculate money and cigarettes saved';

  @override
  String get cigsPerDay => 'Cigarettes per day before';

  @override
  String get pricePerPack => 'Price per pack';

  @override
  String get startJourney => 'Start the journey';

  @override
  String get next => 'Next';

  @override
  String get skip => 'Skip';

  @override
  String get youGotThis => 'You got this. One moment at a time.';

  @override
  String get waitTheWave => 'Ride out the craving wave';

  @override
  String get youPassedThis => 'You made it through this moment';

  @override
  String get greatJob => 'Great job. You\'re in control.';

  @override
  String get giveYourselfMinutes =>
      'Give yourself a few minutes and focus on the present moment.';

  @override
  String get keepGoing => 'KEEP GOING';

  @override
  String get done => 'DONE';

  @override
  String get breatheSlowly => 'Breathe slowly';

  @override
  String get followTheCircle => 'Follow the circle rhythm';

  @override
  String get chooseWhatFits => 'Choose what matches how you feel right now.';

  @override
  String get yourResults => 'Your results';

  @override
  String get whatChanged => 'What has already changed thanks to you';

  @override
  String get recoveryPath => 'Recovery path';

  @override
  String get everyMilestone => 'Every milestone is another step forward';

  @override
  String get levelProgress => 'Progress to next level';

  @override
  String get yourPathContinues => 'Your path continues';

  @override
  String get daysWordOne => 'day';

  @override
  String get daysWordFew => 'days';

  @override
  String get daysWordMany => 'days';

  @override
  String get momentum => 'MOMENTUM';

  @override
  String missionsLeft(int count) {
    return '$count missions left';
  }

  @override
  String get allMissionsDone => 'All missions completed';

  @override
  String get dayComplete => 'Day complete';

  @override
  String get keepGoingShort => 'Keep going';

  @override
  String get inProgress => 'IN PROGRESS';

  @override
  String get complete => 'COMPLETE';

  @override
  String get yourPlanToday => 'Your plan for today';

  @override
  String get everythingDone => 'Everything completed';

  @override
  String get theme => 'Theme';

  @override
  String get language => 'Language';

  @override
  String get notifications => 'Notifications';

  @override
  String get notificationsHint => 'Reminders and motivation';

  @override
  String get data => 'Data';

  @override
  String get aboutApp => 'About the app';

  @override
  String get appTheme => 'App theme';

  @override
  String get chooseTheme => 'Choose how Puffree should look.';

  @override
  String get systemTheme => 'System';

  @override
  String get systemThemeDesc => 'Follow phone settings';

  @override
  String get lightTheme => 'Light';

  @override
  String get lightThemeDesc => 'Always use light theme';

  @override
  String get darkTheme => 'Dark';

  @override
  String get darkThemeDesc => 'Always use dark theme';

  @override
  String get premiumActive => 'Premium is active';

  @override
  String get trialActive => 'Trial period is active';

  @override
  String get fullAccess => 'Full access to all features';

  @override
  String get openPremium => 'Open Premium and subscription options';

  @override
  String get resetProgressTitle => 'Reset progress?';

  @override
  String get resetProgressBody =>
      'All data about days, streak and statistics will be deleted. This action cannot be undone.';

  @override
  String get excellent => 'Excellent!';

  @override
  String get anotherDayFree => 'Another day without cigarettes';

  @override
  String get continueBtn => 'Continue';

  @override
  String get newAchievement => 'NEW ACHIEVEMENT';

  @override
  String get newLevel => 'New level!';

  @override
  String get levelUpMessage => 'Keep going — you\'re doing great!';

  @override
  String get freeFor => 'FREE FOR';

  @override
  String get toNextLevel => 'To next level';

  @override
  String get keyResults => 'KEY RESULTS';

  @override
  String get progressSystem => 'PROGRESS SYSTEM';

  @override
  String get everyDayCloser => 'Every day moves you closer to the next level';

  @override
  String get current => 'Current';

  @override
  String get nextLevel => 'Next';

  @override
  String get smallSteps => 'Small steps. Big changes.';

  @override
  String get youAreFurther => 'You are already further than yesterday';

  @override
  String get madeForFuture => 'Made for a smoke-free future';

  @override
  String get dayStreakCaption => 'day streak';

  @override
  String get cigarettesAvoidedCaption => 'avoided';

  @override
  String get freeDaysCaption => 'free days';

  @override
  String get levelLabel => 'Level';

  @override
  String get keepStreakAlive => 'Keep your streak alive';

  @override
  String get failedToLoadProgress => 'Failed to load progress';

  @override
  String get levelTitle1 => 'First Breath';

  @override
  String get levelTitle2 => 'Sprout';

  @override
  String get levelTitle3 => 'Growth';

  @override
  String get levelTitle4 => 'Roots';

  @override
  String get levelTitle5 => 'Trunk';

  @override
  String get levelTitle6 => 'Strength';

  @override
  String get levelTitle7 => 'Fire';

  @override
  String get levelTitle8 => 'Spark';

  @override
  String get levelTitle9 => 'Champion';

  @override
  String get levelTitle10 => 'Master';

  @override
  String get levelTitle11 => 'Diamond';

  @override
  String get levelTitle12 => 'Star';

  @override
  String get levelTitle13 => 'Rocket';

  @override
  String get levelTitle14 => 'Legend';

  @override
  String get levelTitleDefault => 'Path';

  @override
  String get milestone1Title => 'Beginning of a new path';

  @override
  String get milestone1Desc =>
      'You have already taken the first step and keep moving forward.';

  @override
  String get milestone2Title => 'First changes';

  @override
  String get milestone2Desc =>
      'The body is gradually adapting to life without cigarettes.';

  @override
  String get milestone3Title => 'New stage';

  @override
  String get milestone3Desc =>
      'A new rhythm without the habit is gradually forming.';

  @override
  String get milestone4Title => 'Confident progress';

  @override
  String get milestone4Desc =>
      'Two weeks is a noticeable milestone on the way to a new habit.';

  @override
  String get milestone5Title => 'Big habit is changing';

  @override
  String get milestone5Desc =>
      'A month of consistency is a serious personal result.';

  @override
  String get milestone6Title => 'Big milestone';

  @override
  String get milestone6Desc =>
      'Continuing the path helps to consolidate a new lifestyle.';

  @override
  String get milestone7Title => 'Year of freedom';

  @override
  String get milestone7Desc =>
      'A year without cigarettes is a big milestone on your path.';

  @override
  String get navProgress => 'Progress';

  @override
  String get more => 'More';

  @override
  String get settingsSubtitle => 'Customize Puffree for yourself';

  @override
  String get sectionApp => 'App';

  @override
  String get sectionData => 'Data';

  @override
  String get sectionAbout => 'About';

  @override
  String get resetProgressSubtitle => 'Start the journey again';

  @override
  String get premiumActiveBadge => 'ACTIVE';

  @override
  String get splashCaption => 'Freedom from smoking';

  @override
  String get todayStartJourney => 'Today is the beginning of your new journey.';

  @override
  String realResultKeepGoing(int count, String daysWord) {
    return '$count $daysWord is already a real result. Keep going.';
  }

  @override
  String get notificationMorningTitle1 => 'Good morning ☀️';

  @override
  String notificationMorningBody1(int day) {
    return 'Day $day without cigarettes. Keep your momentum going.';
  }

  @override
  String get notificationMorningTitle2 => 'A new smoke-free day';

  @override
  String get notificationMorningBody2 =>
      'You don\'t need to think about the whole journey today. Just take this day.';

  @override
  String get notificationMorningTitle3 => 'Keep going';

  @override
  String get notificationMorningBody3 =>
      'Small decisions today are building your smoke-free future.';

  @override
  String get notificationMorningTitle4 => 'Your journey continues';

  @override
  String get notificationMorningBody4 =>
      'Every smoke-free day is another day you chose yourself.';

  @override
  String get notificationMorningTitle5 => 'You\'ve got this';

  @override
  String get notificationMorningBody5 => 'Take today one moment at a time.';

  @override
  String get notificationCheckInTitle1 => 'How was your day?';

  @override
  String get notificationCheckInBody1 =>
      'Take a moment to check in and keep your progress alive.';

  @override
  String get notificationCheckInTitle2 => 'Puffree check-in';

  @override
  String get notificationCheckInBody2 =>
      'Did you stay smoke-free today? Mark your progress.';

  @override
  String get notificationCheckInTitle3 => 'One more day';

  @override
  String get notificationCheckInBody3 =>
      'Your journey is built one day at a time.';

  @override
  String get notificationCheckInTitle4 => 'Keep your streak alive';

  @override
  String get notificationCheckInBody4 => 'Open Puffree and check in for today.';

  @override
  String get notificationEveningTitle1 => 'How are you feeling? 🌙';

  @override
  String get notificationEveningBody1 =>
      'Take a quiet moment and check in with yourself.';

  @override
  String get notificationEveningTitle2 => 'Evening check-in';

  @override
  String get notificationEveningBody2 =>
      'How did today feel? Your journal is waiting.';

  @override
  String get notificationEveningTitle3 => 'Before the day ends';

  @override
  String get notificationEveningBody3 =>
      'Take a moment to notice how far you\'ve come.';

  @override
  String get notificationEveningTitle4 => 'A moment for yourself';

  @override
  String get notificationEveningBody4 =>
      'Breathe, reflect and finish the day with intention.';

  @override
  String get notificationMilestone1Title => 'Your first day 🌱';

  @override
  String get notificationMilestone1Body =>
      'One smoke-free day is already a real step forward.';

  @override
  String get notificationMilestone3Title => 'Three days 🔥';

  @override
  String get notificationMilestone3Body =>
      'Three smoke-free days. You\'re building momentum.';

  @override
  String get notificationMilestone7Title => 'One full week! 🏆';

  @override
  String get notificationMilestone7Body =>
      'Seven days without cigarettes. That\'s a meaningful milestone.';

  @override
  String get notificationMilestone14Title => 'Two weeks 💪';

  @override
  String get notificationMilestone14Body =>
      'Fourteen smoke-free days. Keep building your new routine.';

  @override
  String get notificationMilestone21Title => 'Three weeks 🧠';

  @override
  String get notificationMilestone21Body =>
      'Twenty-one days behind you. Your journey keeps moving forward.';

  @override
  String get notificationMilestone30Title => 'One month! 👑';

  @override
  String get notificationMilestone30Body =>
      'Thirty smoke-free days. Look how far you\'ve already come.';

  @override
  String get notificationMilestone60Title => 'Two months 🚀';

  @override
  String get notificationMilestone60Body =>
      'Sixty days without cigarettes. Your consistency is becoming your strength.';

  @override
  String get notificationMilestone90Title => '90 days 💎';

  @override
  String get notificationMilestone90Body =>
      'Three months smoke-free. This is a major milestone on your journey.';

  @override
  String get notificationMilestone180Title => 'Half a year! ✨';

  @override
  String get notificationMilestone180Body =>
      '180 smoke-free days. You\'ve built an incredible amount of momentum.';

  @override
  String get notificationMilestone365Title => 'One year! 🏆';

  @override
  String get notificationMilestone365Body =>
      '365 days without cigarettes. One full year of your new journey.';

  @override
  String get notificationMilestoneGenericTitle => 'Another milestone';

  @override
  String notificationMilestoneGenericBody(int days) {
    return '$days smoke-free days. Keep moving forward.';
  }

  @override
  String get notificationRelapseTitle1 => 'It\'s okay';

  @override
  String get notificationRelapseBody1 =>
      'One difficult moment doesn\'t erase everything you\'ve built.';

  @override
  String get notificationRelapseTitle2 => 'Keep going';

  @override
  String get notificationRelapseBody2 =>
      'A setback is a moment, not the end of your journey.';

  @override
  String get notificationRelapseTitle3 => 'Come back to your path';

  @override
  String get notificationRelapseBody3 =>
      'Take a breath, learn from the moment and continue.';

  @override
  String get notificationInactive1Title => 'We haven\'t seen you today 👋';

  @override
  String get notificationInactive1Body =>
      'Open Puffree and check in when you\'re ready.';

  @override
  String get notificationInactive2Title => 'Your journey is still here';

  @override
  String get notificationInactive2Body =>
      'A few quiet days don\'t erase the progress you\'ve already made.';

  @override
  String get notificationInactive3Title => 'Come back when you\'re ready';

  @override
  String get notificationInactive3Body =>
      'You don\'t have to be perfect. Just take the next step.';

  @override
  String get onbTitle1 => 'What do you use?';

  @override
  String get onbSubtitle1 =>
      'We\'ll personalize everything based on your habit.';

  @override
  String get onbTitle2 => 'How much do you use?';

  @override
  String get onbSubtitle2 =>
      'Honest numbers help us calculate your real progress.';

  @override
  String get onbTitle3 => 'What does it cost you?';

  @override
  String get onbSubtitle3 => 'See how much money you can save every month.';

  @override
  String get onbTitle4 => 'How does your body feel?';

  @override
  String get onbSubtitle4 => 'Select the symptoms you notice most often.';

  @override
  String get onbTitle5 => 'Why do you want to quit?';

  @override
  String get onbSubtitle5 =>
      'Your reasons will power the plan we build for you.';

  @override
  String get onbTitle6 => 'Building your plan';

  @override
  String get onbSubtitle6 =>
      'We\'re creating a personalized path just for you.';

  @override
  String get onbTitle7 => 'Your plan is ready';

  @override
  String get onbSubtitle7 => 'Start your journey with a plan made for you.';

  @override
  String get onbEyebrowBeforeStart => 'BEFORE WE START';

  @override
  String get onbEyebrowStartingPoint => 'STARTING POINT';

  @override
  String get onbEyebrowRealCost => 'REAL COST';

  @override
  String get onbEyebrowSelfAwareness => 'SELF-AWARENESS';

  @override
  String get onbEyebrowYourReason => 'YOUR REASON';

  @override
  String get onbEyebrowPersonalization => 'PERSONALIZATION';

  @override
  String get onbEyebrowDone => 'YOU\'RE READY';

  @override
  String get onbHabitCigarettesTitle => 'Cigarettes';

  @override
  String get onbHabitCigarettesSubtitle => 'Regular or rolled cigarettes';

  @override
  String get onbHabitVapeTitle => 'Vape / Pods';

  @override
  String get onbHabitVapeSubtitle => 'Electronic cigarettes and pod systems';

  @override
  String get onbPodsPerWeekLabel => 'Pods per week';

  @override
  String get onbCigarettesPerDayLabel => 'Cigarettes per day';

  @override
  String get onbYearsSmokedLabel => 'Years smoked';

  @override
  String get onbUnitPieces => 'pcs';

  @override
  String get onbUnitYears => 'years';

  @override
  String get onbAmountVapeHint =>
      'This helps us estimate your weekly cost and progress.';

  @override
  String get onbPotentialSavingsLabel => 'Potential monthly savings';

  @override
  String get onbPerMonthQuitting => 'per month when you quit';

  @override
  String get onbPricePerPodLabel => 'Price per pod';

  @override
  String get onbPricePerPackLabel => 'Price per pack';

  @override
  String get onbCigarettesPerPackLabel => 'Cigarettes per pack';

  @override
  String get onbCurrencyLabel => 'Currency';

  @override
  String get onbSymptomBreath => 'Shortness of breath';

  @override
  String get onbSymptomAnxiety => 'Anxiety / restlessness';

  @override
  String get onbSymptomPulse => 'Fast or irregular heartbeat';

  @override
  String get onbSymptomMorning => 'Morning cough / phlegm';

  @override
  String get onbSymptomCough => 'Frequent cough';

  @override
  String get onbBodyHint =>
      'You can select several. This helps us focus on what matters to you.';

  @override
  String get onbMotivationHealth => 'Better health & energy';

  @override
  String get onbMotivationFreedom => 'Freedom from addiction';

  @override
  String get onbMotivationMoney => 'Save money';

  @override
  String get onbMotivationFamily => 'For my family / kids';

  @override
  String get onbMotivationControl => 'Regain control of my life';

  @override
  String get onbMotivationFuture => 'A healthier future';

  @override
  String get onbSelectMultipleHint => 'You can select multiple reasons';

  @override
  String get onbStartingMapLabel => 'Building your map';

  @override
  String get onbBuildingStepSave => 'Calculating your savings';

  @override
  String get onbBuildingStepGoal => 'Setting your main goal';

  @override
  String get onbBuildingStepScenarios => 'Creating personal scenarios';

  @override
  String get onbBuildingStepSteps => 'Preparing first steps';

  @override
  String get onbBuildingHint => 'This usually takes just a few seconds.';

  @override
  String get onbPleaseWait => 'Please wait a moment…';

  @override
  String get onbCreatingPlan => 'Creating your plan…';

  @override
  String get onbFirst30DaysLabel => 'First 30 days';

  @override
  String get onbLessExpensesLabel => 'Less expenses';

  @override
  String get onbSavingsPerMonth => 'Saved per month';

  @override
  String get onbSavingsPerYear => 'Saved per year';

  @override
  String get onbPlanPersonalizedTitle => 'Your personalized plan';

  @override
  String onbPlanPersonalizedSubtitle(int motivations, int symptoms) {
    return 'Based on $motivations reasons and $symptoms symptoms';
  }

  @override
  String get onbResultHint =>
      'You can always adjust these numbers later in settings.';

  @override
  String get onbBreathingHint => 'BREATHE';

  @override
  String get onbContinue => 'Continue';

  @override
  String get onbStartJourney => 'Start my journey';

  @override
  String get onboardingHabitTitle => 'Ready to take back control?';

  @override
  String get onboardingHabitSubtitle =>
      'First, let\'s understand your habit. No long forms — a few precise answers, and Puffree will build your path.';

  @override
  String get onboardingAmountTitle => 'Describe your typical day';

  @override
  String get onboardingAmountSubtitle =>
      'This is not to judge you. It\'s the starting point from which we\'ll measure progress.';

  @override
  String get onboardingMoneyTitle => 'How much does the habit take from you?';

  @override
  String get onboardingMoneySubtitle =>
      'The price updates live on the screen — you see not an abstract number, but the real cost of the habit.';

  @override
  String get onboardingBodyTitle => 'What do you notice in yourself?';

  @override
  String get onboardingBodySubtitle =>
      'Mark what applies to you. You can select several options or none.';

  @override
  String get onboardingMotivationTitle => 'What are you doing this for?';

  @override
  String get onboardingMotivationSubtitle =>
      'This will become your personal anchor. Puffree will bring you back to this reason when you need it.';

  @override
  String get onboardingBuildingTitle => 'Building your path';

  @override
  String get onboardingBuildingSubtitle =>
      'Not a medical diagnosis and not a promise of a perfect day. Just your starting point and clear next steps.';

  @override
  String get onboardingResultTitle =>
      'Your first progress screen is already here';

  @override
  String get onboardingResultSubtitle =>
      'We save the starting data on the device and turn it into measurable progress.';

  @override
  String get onboardingEyebrowBeforeStart => 'BEFORE YOU START';

  @override
  String get onboardingEyebrowStartPoint => 'YOUR STARTING POINT';

  @override
  String get onboardingEyebrowRealCost => 'THE REAL COST';

  @override
  String get onboardingEyebrowSelfFeeling => 'HOW YOU FEEL';

  @override
  String get onboardingEyebrowYourReason => 'YOUR REASON';

  @override
  String get onboardingEyebrowPersonalization => 'PERSONALIZATION';

  @override
  String get onboardingEyebrowDone => 'DONE';

  @override
  String get onboardingCigarettesChoice => 'I smoke cigarettes';

  @override
  String get onboardingCigarettesChoiceSubtitle => 'The main Puffree scenario';

  @override
  String get onboardingVapeChoice => 'I use a vape';

  @override
  String get onboardingVapeChoiceSubtitle =>
      'We\'ll save this choice for your profile';

  @override
  String get onboardingPodsPerWeek => 'Pods / disposables per week';

  @override
  String get onboardingUnitPcs => 'pcs';

  @override
  String get onboardingVapeHint =>
      'Later, the Puffree profile will be able to separate cigarette and vape scenarios without losing history.';

  @override
  String get onboardingCigarettesPerDay => 'Cigarettes per day';

  @override
  String get onboardingYearsSmoked => 'How many years has this been going on';

  @override
  String get onboardingUnitYears => 'years';

  @override
  String get onboardingPricePerPod => 'Price of one pod';

  @override
  String get onboardingPricePerPack => 'Pack price';

  @override
  String get onboardingCigarettesPerPack => 'Cigarettes per pack';

  @override
  String get onboardingPotentialSavings => 'Potential savings';

  @override
  String get onboardingPerMonthIfQuit => 'per month if you quit the habit';

  @override
  String get onboardingCurrency => 'Currency';

  @override
  String get onboardingSymptomBreath =>
      'I feel that breathing has become heavier';

  @override
  String get onboardingSymptomAnxiety => 'I sometimes feel strong anxiety';

  @override
  String get onboardingSymptomPulse => 'I notice a faster pulse';

  @override
  String get onboardingSymptomMorning =>
      'I especially crave the first cigarette in the morning';

  @override
  String get onboardingSymptomCough => 'I have a morning cough';

  @override
  String get onboardingBodyHint =>
      'This is self-description, not a diagnosis. If symptoms worry you, it\'s better to discuss them with a doctor.';

  @override
  String get onboardingMotivationHealth =>
      'I want to take better care of my health';

  @override
  String get onboardingMotivationFreedom => 'I want to feel freer';

  @override
  String get onboardingMotivationMoney =>
      'I want to stop spending money on this';

  @override
  String get onboardingMotivationFamily =>
      'I want to depend less on the habit around loved ones';

  @override
  String get onboardingMotivationControl =>
      'I want to regain a sense of control';

  @override
  String get onboardingMotivationFuture => 'I want to do this for my future';

  @override
  String get onboardingCanSelectSeveral => 'You can select several';

  @override
  String get onboardingYourStartCard => 'your starting card';

  @override
  String get onboardingStepSaveAnswers => 'Saving your answers';

  @override
  String get onboardingStepFinancialGoal => 'Calculating the financial goal';

  @override
  String get onboardingStepCravingScenarios => 'Building craving scenarios';

  @override
  String get onboardingStepFirstSteps => 'Preparing the first steps';

  @override
  String get onboardingBuildingHint =>
      'We deliberately do not promise “lung regeneration in X hours” — Puffree shows measurable things and separates fact from motivation.';

  @override
  String get onboardingSavingsPerMonth => 'savings / month';

  @override
  String get onboardingSavingsPerYear => 'savings / year';

  @override
  String get onboardingResultHint =>
      'These numbers are a calculation based on your answers, not a promise of results. Real progress depends on your behavior.';

  @override
  String get onboardingFirst30Days => 'First 30 days';

  @override
  String get onboardingLessSpendMoreControl => 'less spending → more control';

  @override
  String get onboardingPlanPersonalized => 'Plan is personalized';

  @override
  String onboardingMotivationsCount(int count) {
    return '$count personal motivations';
  }

  @override
  String onboardingSymptomsCount(int count) {
    return '$count noted states';
  }

  @override
  String get onboardingTakeFirstStep => 'take the first step';

  @override
  String get onboardingPleaseWait => 'Please wait a few seconds…';

  @override
  String get onboardingCreatingPlan => 'Creating plan…';

  @override
  String get onboardingStartMyJourney => 'Start my journey';

  @override
  String get onboardingContinue => 'Continue';

  @override
  String get premiumTitle => 'Puffree Premium';

  @override
  String get premiumSubtitle =>
      'More tools for your journey.\nChoose the plan that fits you.';

  @override
  String get oneMembership => 'One Premium access for everything';

  @override
  String get everythingIncluded => 'Everything included';

  @override
  String get everythingIncludedSubtitle =>
      'Premium unlocks the full Puffree experience.';

  @override
  String get choosePlan => 'Choose your plan';

  @override
  String get choosePlanSubtitle =>
      'You can change your choice before purchasing.';

  @override
  String get featureTasks => 'Extended missions';

  @override
  String get featureTasksSubtitle => 'More practices and challenges';

  @override
  String get featureStats => 'Full statistics';

  @override
  String get featureStatsSubtitle => 'Detailed progress insights';

  @override
  String get profileEditTitle => 'Profile';

  @override
  String get profileEditTapToChangePhoto => 'Tap photo to change';

  @override
  String get profileEditNameLabel => 'Name';

  @override
  String get profileEditNameHint => 'Enter your name';

  @override
  String get profileEditSaveButton => 'Save changes';

  @override
  String get profileEditErrorEmptyName => 'Please enter a name';

  @override
  String get profileEditSuccessUpdated => 'Profile updated successfully';

  @override
  String profileEditErrorUpdate(String error) {
    return 'Failed to update profile: $error';
  }

  @override
  String get authWelcomeBack => 'Welcome back!';

  @override
  String get authCreateAccount => 'Create account';

  @override
  String get authResetPassword => 'Reset password';

  @override
  String get authLoginSubtitle => 'Sign in to continue your journey';

  @override
  String get authRegisterSubtitle => 'Start a new smoke-free life today';

  @override
  String get authForgotSubtitle =>
      'Enter your email and we\'ll send you instructions';

  @override
  String get authTabLogin => 'Login';

  @override
  String get authTabRegister => 'Register';

  @override
  String get authNameHint => 'Your name';

  @override
  String get authNameRequired => 'Enter your name';

  @override
  String get authEmailHint => 'Email address';

  @override
  String get authEmailRequired => 'Enter email';

  @override
  String get authEmailInvalid => 'Invalid email';

  @override
  String get authPasswordHint => 'Password';

  @override
  String get authPasswordRequired => 'Enter password';

  @override
  String get authPasswordMinLength => 'Password must be at least 6 characters';

  @override
  String get authConfirmPasswordHint => 'Confirm password';

  @override
  String get authPasswordsDoNotMatch => 'Passwords do not match';

  @override
  String get authForgotPassword => 'Forgot password?';

  @override
  String get authLoginButton => 'Sign in';

  @override
  String get authRegisterButton => 'Sign up';

  @override
  String get authSendLinkButton => 'Send link';

  @override
  String get authBackToLogin => 'Back to login';

  @override
  String get authOrContinueWith => 'or continue with';

  @override
  String get authGoogle => 'Google';

  @override
  String get authApple => 'Apple';

  @override
  String get authResetLinkSent =>
      'Password reset link has been sent to your email!';

  @override
  String get authErrorGeneric =>
      'Something went wrong. Please check your details.';

  @override
  String get authErrorSocial => 'Social sign-in failed.';

  @override
  String get profileYourProfile => 'Your profile';

  @override
  String get profileEdit => 'Edit profile';

  @override
  String get switchAccountTitle => 'Sign in to another account?';

  @override
  String get switchAccountBody =>
      'The login page will open where you can sign in to another account.';

  @override
  String get switchAccountButton => 'Sign in to another account';

  @override
  String get switchAccountSubtitle => 'Open login page';

  @override
  String get continueAction => 'Continue';

  @override
  String get logoutTitle => 'Sign out?';

  @override
  String get logoutBody => 'Are you sure you want to sign out of your account?';

  @override
  String get logoutButton => 'Sign out';

  @override
  String get premiumBrand => 'Puffree Premium';

  @override
  String get motStartJourney =>
      'Today begins your new journey. One step already matters.';

  @override
  String get motMilestone1 =>
      'Your first day. You took the first big step. Keep going.';

  @override
  String get motMilestone3 =>
      'Three days. That is worth celebrating. You are staying on course.';

  @override
  String get motMilestone7 => 'A full week. Seven days of choosing yourself.';

  @override
  String get motMilestone10 =>
      '10 days. You have already built serious momentum.';

  @override
  String get motMilestone14 =>
      'Two weeks. You have made it through an important part of the journey.';

  @override
  String get motMilestone21 =>
      '21 days. You are proving that your habits can change.';

  @override
  String get motMilestone30 =>
      '30 days. A full month of new decisions. That is a big achievement.';

  @override
  String get motMilestone45 => '45 days. A month and a half of moving forward.';

  @override
  String get motMilestone60 =>
      '60 days. Two months of consistency. That is powerful.';

  @override
  String get motMilestone90 =>
      '90 days. Three months. Look how far you have come.';

  @override
  String get motMilestone120 =>
      '120 days. You keep choosing your path every day.';

  @override
  String get motMilestone180 =>
      'Six months. 180 days of consistency. That is seriously impressive.';

  @override
  String get motMilestone270 =>
      '270 days. You have created a huge distance from your old habit.';

  @override
  String get motMilestone365 =>
      'One year. 365 days of your journey. This is consistency, not luck.';

  @override
  String get motFirstWeek1 => 'Today, you only need to take the next step.';

  @override
  String get motFirstWeek2 =>
      'You do not have to finish the whole journey today. Just keep going.';

  @override
  String get motFirstWeek3 => 'Every day is its own win. Today is yours.';

  @override
  String get motFirstWeek4 =>
      'A difficult moment does not erase your progress.';

  @override
  String get motFirstWeek5 =>
      'You already started. Now give yourself a chance to continue.';

  @override
  String get motFirstWeek6 =>
      'One day at a time. That is how big changes are built.';

  @override
  String get motFirstWeek7 => 'You keep choosing yourself. That matters.';

  @override
  String get motSecondWeek1 =>
      'You are not where you started anymore. Keep moving.';

  @override
  String get motSecondWeek2 =>
      'Two weeks are closer than they seem. Keep your rhythm.';

  @override
  String get motSecondWeek3 => 'Your progress is built from small decisions.';

  @override
  String get motSecondWeek4 =>
      'Do not wait for a perfect day. Create the next good one.';

  @override
  String get motSecondWeek5 =>
      'You can get through a difficult craving and return to your plan.';

  @override
  String get motSecondWeek6 => 'Every new day builds more confidence.';

  @override
  String get motSecondWeek7 =>
      'You have already proven that you can handle difficult moments.';

  @override
  String get motFirstMonth1 =>
      'You are building a new habit one step at a time.';

  @override
  String get motFirstMonth2 => 'Your past does not define today’s choice.';

  @override
  String get motFirstMonth3 =>
      'Thirty days begin with one decision: keep going.';

  @override
  String get motFirstMonth4 => 'Confidence grows through many consistent days.';

  @override
  String get motFirstMonth5 => 'Every new day adds another page to your story.';

  @override
  String get motFirstMonth6 =>
      'Your progress belongs to you. Nobody can take it away.';

  @override
  String get motFirstMonth7 =>
      'You have already come far enough to be proud of yourself.';

  @override
  String get motFirstMonth8 =>
      'Keep going calmly. Big changes do not require rushing.';

  @override
  String get motSecondMonth1 => 'Two months is no longer a coincidence.';

  @override
  String get motSecondMonth2 => 'You are turning intention into consistency.';

  @override
  String get motSecondMonth3 =>
      'Your strength is in the decisions you make every day.';

  @override
  String get motSecondMonth4 =>
      'You already know you can handle difficult moments.';

  @override
  String get motSecondMonth5 => 'Keep building the life you want to live.';

  @override
  String get motSecondMonth6 =>
      'Every day away from the old habit is another step forward.';

  @override
  String get motSecondMonth7 =>
      'You are not competing with anyone. This path is yours.';

  @override
  String get motSecondMonth8 => 'Look back at day one. The progress is real.';

  @override
  String get motThirdMonth1 =>
      'Three months is serious distance. And you are still moving.';

  @override
  String get motThirdMonth2 =>
      'You have created a new starting point for yourself.';

  @override
  String get motThirdMonth3 =>
      'Consistency is stronger than motivation. You are proving it.';

  @override
  String get motThirdMonth4 => 'You keep choosing what matters to you.';

  @override
  String get motThirdMonth5 =>
      'With every day, the old pattern becomes less important.';

  @override
  String get motThirdMonth6 =>
      'You are not waiting for the right moment. You are creating it.';

  @override
  String get motThirdMonth7 => '90 days is a story made of many small wins.';

  @override
  String get motThirdMonth8 => 'You have come a long way. Keep building on it.';

  @override
  String get motLongTerm1 => 'You are far from where you started. Keep going.';

  @override
  String get motLongTerm2 =>
      'Freedom starts with a choice and grows through daily decisions.';

  @override
  String get motLongTerm3 =>
      'Your result is the sum of every day you kept going.';

  @override
  String get motLongTerm4 =>
      'You have created a distance you may once have thought impossible.';

  @override
  String get motLongTerm5 => 'Remember why you started.';

  @override
  String get motLongTerm6 => 'Every new day makes your story stronger.';

  @override
  String get motLongTerm7 =>
      'You are not going backward. You are moving forward.';

  @override
  String get motLongTerm8 =>
      'What once felt difficult is now part of your journey.';

  @override
  String get motLongTerm9 =>
      'You have already proven something important: change is possible.';

  @override
  String get motLongTerm10 => 'Keep living at your new rhythm.';

  @override
  String get motLevelDefault => 'New level. You keep moving forward.';

  @override
  String get motLevel1 =>
      'The journey has begun. The most important thing is taking the first step.';

  @override
  String get motLevel2 =>
      'The seed is growing. Protect your progress every day.';

  @override
  String get motLevel3 =>
      'You are growing. Small decisions create big changes.';

  @override
  String get motLevel4 =>
      'Your roots are getting stronger. Keep building your foundation.';

  @override
  String get motLevel5 =>
      'You are becoming more confident. Keep your momentum.';

  @override
  String get motLevel6 =>
      'Strength grows when you keep going through difficult moments.';

  @override
  String get motLevel7 => 'Your determination is becoming part of your story.';

  @override
  String get motLevel8 => 'The spark has become steady forward movement.';

  @override
  String get motLevel9 => 'You have come a long way. Give yourself credit.';

  @override
  String get motLevel10 =>
      'Level ten. You already understand the power of consistency.';

  @override
  String get motLevel11 =>
      'You keep growing even when the path gets difficult.';

  @override
  String get motLevel12 =>
      'You have become an example to yourself. Keep going.';

  @override
  String get motLevel13 =>
      'You have built serious momentum. Now protect your direction.';

  @override
  String get motLevel14 => 'Legendary level. Look at how far you have come.';

  @override
  String get motShort1 => 'Today is another step.';

  @override
  String get motShort2 => 'Keep moving forward.';

  @override
  String get motShort3 => 'You are doing it.';

  @override
  String get motShort4 => 'Your progress matters.';

  @override
  String get motShort5 => 'Do not let one difficult moment define the day.';

  @override
  String get motShort6 => 'You are stronger than your old habit.';

  @override
  String get motShort7 => 'Choose the next step.';

  @override
  String get motShort8 => 'You already started. Keep going.';

  @override
  String get motShort9 => 'Today’s choice matters.';

  @override
  String get motShort10 => 'One day at a time.';

  @override
  String get motShort11 => 'You can do more than you think.';

  @override
  String get motShort12 => 'Your journey belongs to you.';

  @override
  String get profileEditErrorPhotoNotFound =>
      'Could not get the selected photo';

  @override
  String get profileEditErrorOpenGallery => 'Could not open gallery';

  @override
  String get profileEditErrorPickPhoto =>
      'An error occurred while selecting a photo';

  @override
  String get featureMotivation => 'Personal motivation';

  @override
  String get featureMotivationSubtitle => 'Guidance for your journey';

  @override
  String get featureSupport => 'Extra support tools';

  @override
  String get featureSupportSubtitle => 'More tools when you need them';

  @override
  String get featureNotifications => 'Smart reminders';

  @override
  String get featureNotificationsSubtitle => 'Motivation at the right time';

  @override
  String get featureAds => 'Ad-free';

  @override
  String get featureAdsSubtitle => 'A calm, clean experience';

  @override
  String get planMonthly => 'Monthly';

  @override
  String get planMonthlySubtitle => 'Flexible with no long commitment';

  @override
  String get planYearly => 'Yearly';

  @override
  String get planYearlySubtitle => 'Best balance of value and features';

  @override
  String get planLifetime => 'Lifetime';

  @override
  String get planLifetimeSubtitle => 'One payment — Premium forever';

  @override
  String get perMonth => '/ month';

  @override
  String get perYear => '/ year';

  @override
  String get bestValue => 'BEST VALUE';

  @override
  String get oneTime => 'ONE-TIME';

  @override
  String get buyMonthly => 'Get Premium monthly';

  @override
  String get buyYearly => 'Get Premium yearly';

  @override
  String get buyLifetime => 'Get Premium forever';

  @override
  String get restorePurchases => 'Restore purchases';

  @override
  String get securePurchase => 'Secure purchase';

  @override
  String get cancelAnytime => 'Cancel anytime';

  @override
  String get restoreAnytime => 'Purchases can be restored';

  @override
  String get legalMonthly =>
      'The subscription renews automatically every month. You can cancel through your App Store or Google Play settings. The price is shown before purchase confirmation.';

  @override
  String get legalYearly =>
      'The subscription renews automatically every year. You can cancel through your App Store or Google Play settings. The price is shown before purchase confirmation.';

  @override
  String get legalLifetime =>
      'This is a one-time purchase and does not renew automatically. The price is shown before purchase confirmation.';

  @override
  String get legalContactEmail => 'support@puffreeapp.com';

  @override
  String get privacyPolicyTitle => 'Privacy Policy';

  @override
  String get privacyPolicyLastUpdated => 'Last updated: January 2026';

  @override
  String get privacyPolicyIntro =>
      'Puffree (\"we\", \"our\", \"the app\") helps you track and stay motivated on your journey to quit smoking. This policy explains what information we collect, how we use it, and the choices you have.';

  @override
  String get privacySection1Title => 'Information We Collect';

  @override
  String get privacySection1Body =>
      'Account details you provide when you sign in (email address, display name, and profile photo), or an anonymous identifier if you use the app without an account. We also store the smoke-free data you enter yourself, such as your quit date, cigarettes per day, cost per pack, and cravings you log.';

  @override
  String get privacySection2Title => 'How We Use Your Information';

  @override
  String get privacySection2Body =>
      'To calculate your streak, health milestones, and money saved; to sync your progress across devices; to send optional motivational reminders and notifications; to process Premium subscription purchases; and to diagnose crashes and improve the app.';

  @override
  String get privacySection3Title => 'Data Storage & Security';

  @override
  String get privacySection3Body =>
      'Your data is stored using Firebase (Google Cloud) with encryption in transit. We apply reasonable technical and organizational safeguards, but no method of storage or transmission over the internet is completely secure.';

  @override
  String get privacySection4Title => 'Third-Party Services';

  @override
  String get privacySection4Body =>
      'We use Firebase Authentication and Cloud Firestore to manage accounts and sync data, and the Apple App Store or Google Play billing systems to process Premium subscriptions. We do not sell your personal information to third parties.';

  @override
  String get privacySection5Title => 'Your Choices & Rights';

  @override
  String get privacySection5Body =>
      'You can review or edit your profile at any time, reset your local progress from Settings, disable push notifications in your device settings, and request access to, correction of, or deletion of your data by contacting us.';

  @override
  String get privacySection6Title => 'Children\'s Privacy';

  @override
  String get privacySection6Body =>
      'Puffree is not directed at children under 13 (or under 16 in the EU), and we do not knowingly collect personal information from them. If you believe a child has provided us data, please contact us so we can delete it.';

  @override
  String get privacySection7Title => 'Health Disclaimer';

  @override
  String get privacySection7Body =>
      'Puffree is a habit-tracking tool designed to support your smoke-free journey. It is not a medical device and does not provide medical advice, diagnosis, or treatment. Always consult a qualified healthcare professional about quitting smoking.';

  @override
  String get privacySection8Title => 'Changes & Contact';

  @override
  String get privacySection8Body =>
      'We may update this policy from time to time; significant changes will be announced in the app. If you have questions about this policy or your data, please reach out using the contact details below.';

  @override
  String get termsOfUseTitle => 'Terms of Use';

  @override
  String get termsOfUseLastUpdated => 'Last updated: January 2026';

  @override
  String get termsOfUseIntro =>
      'These Terms of Use govern your access to and use of Puffree. By creating an account or using the app, you agree to these terms. If you do not agree, please do not use the app.';

  @override
  String get termsSection1Title => 'Acceptance of Terms';

  @override
  String get termsSection1Body =>
      'By downloading, installing, or using Puffree, you confirm that you accept these Terms of Use and our Privacy Policy, and that you have the legal capacity to enter into this agreement.';

  @override
  String get termsSection2Title => 'Description of Service';

  @override
  String get termsSection2Body =>
      'Puffree is a habit-tracking and motivation app that helps you monitor progress after quitting smoking, including streaks, health milestones, money saved, and craving logs. It is a personal wellness tool, not a medical or clinical service.';

  @override
  String get termsSection3Title => 'Eligibility & Accounts';

  @override
  String get termsSection3Body =>
      'You must be at least 13 years old (or the minimum age of digital consent in your country) to use Puffree. You are responsible for maintaining the confidentiality of your account and for all activity that occurs under it.';

  @override
  String get termsSection4Title => 'Premium Subscriptions & Billing';

  @override
  String get termsSection4Body =>
      'Premium features are offered as an auto-renewing subscription billed through the Apple App Store or Google Play. Subscriptions renew automatically unless cancelled at least 24 hours before the end of the current period, and refunds are handled according to the relevant store\'s policy.';

  @override
  String get termsSection5Title => 'Health & Medical Disclaimer';

  @override
  String get termsSection5Body =>
      'Puffree does not provide medical advice and is not a substitute for professional care. Quitting smoking can involve withdrawal symptoms; please consult a doctor or licensed healthcare provider before making decisions about your health.';

  @override
  String get termsSection6Title => 'Acceptable Use';

  @override
  String get termsSection6Body =>
      'You agree not to misuse the app, attempt to reverse-engineer or disrupt its services, upload unlawful or harmful content, or use the app in any way that violates applicable laws or the rights of others.';

  @override
  String get termsSection7Title => 'Disclaimer & Limitation of Liability';

  @override
  String get termsSection7Body =>
      'Puffree is provided \"as is\" without warranties of any kind. To the maximum extent permitted by law, we are not liable for any indirect, incidental, or consequential damages arising from your use of the app.';

  @override
  String get termsSection8Title => 'Changes to These Terms & Contact';

  @override
  String get termsSection8Body =>
      'We may update these Terms from time to time; continued use of the app after changes take effect constitutes acceptance of the revised Terms. Questions can be sent to the contact address below.';

  @override
  String get systemThemeLabel => 'System';

  @override
  String get notificationsEnabledLabel => 'Notifications enabled';

  @override
  String get notificationsDisabledLabel => 'Notifications disabled';

  @override
  String get signInToAnotherAccount => 'Sign in to another account';

  @override
  String get openSignInPage => 'Open sign-in page';

  @override
  String get securePayment => 'Pago seguro';
}
