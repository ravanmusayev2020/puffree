// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

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
}
