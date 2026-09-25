// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

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
  String get premiumActive => 'Premium सक्रिय है';

  @override
  String get trialActive => 'ट्रायल अवधि सक्रिय है';

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
  String get onbTitle1 => 'आप क्या इस्तेमाल करते हैं?';

  @override
  String get onbSubtitle1 => 'हम आपकी आदत के आधार पर सब कुछ व्यक्तिगत बनाएंगे।';

  @override
  String get onbTitle2 => 'आप कितना इस्तेमाल करते हैं?';

  @override
  String get onbSubtitle2 =>
      'ईमानदार आंकड़े हमें आपकी असली प्रगति की गणना करने में मदद करते हैं।';

  @override
  String get onbTitle3 => 'इसकी आपको कितनी लागत आती है?';

  @override
  String get onbSubtitle3 => 'देखें कि आप हर महीने कितना पैसा बचा सकते हैं।';

  @override
  String get onbTitle4 => 'आपका शरीर कैसा महसूस करता है?';

  @override
  String get onbSubtitle4 => 'वे लक्षण चुनें जो आप सबसे अधिक देखते हैं।';

  @override
  String get onbTitle5 => 'आप क्यों छोड़ना चाहते हैं?';

  @override
  String get onbSubtitle5 =>
      'आपके कारण उस योजना को शक्ति देंगे जो हम आपके लिए बना रहे हैं।';

  @override
  String get onbTitle6 => 'आपकी योजना बनाई जा रही है';

  @override
  String get onbSubtitle6 =>
      'हम सिर्फ आपके लिए एक व्यक्तिगत मार्ग बना रहे हैं।';

  @override
  String get onbTitle7 => 'आपकी योजना तैयार है';

  @override
  String get onbSubtitle7 =>
      'आपके लिए बनाई गई योजना के साथ अपनी यात्रा शुरू करें।';

  @override
  String get onbEyebrowBeforeStart => 'शुरू करने से पहले';

  @override
  String get onbEyebrowStartingPoint => 'शुरुआती बिंदु';

  @override
  String get onbEyebrowRealCost => 'वास्तविक लागत';

  @override
  String get onbEyebrowSelfAwareness => 'आत्म-जागरूकता';

  @override
  String get onbEyebrowYourReason => 'आपका कारण';

  @override
  String get onbEyebrowPersonalization => 'व्यक्तिगतकरण';

  @override
  String get onbEyebrowDone => 'आप तैयार हैं';

  @override
  String get onbHabitCigarettesTitle => 'सिगरेट';

  @override
  String get onbHabitCigarettesSubtitle => 'सामान्य या रोल की हुई सिगरेट';

  @override
  String get onbHabitVapeTitle => 'वेप / पॉड्स';

  @override
  String get onbHabitVapeSubtitle => 'इलेक्ट्रॉनिक सिगरेट और पॉड सिस्टम';

  @override
  String get onbPodsPerWeekLabel => 'प्रति सप्ताह पॉड्स';

  @override
  String get onbCigarettesPerDayLabel => 'प्रति दिन सिगरेट';

  @override
  String get onbYearsSmokedLabel => 'धूम्रपान के वर्ष';

  @override
  String get onbUnitPieces => 'नग';

  @override
  String get onbUnitYears => 'वर्ष';

  @override
  String get onbAmountVapeHint =>
      'यह हमें आपके साप्ताहिक खर्च और प्रगति का अनुमान लगाने में मदद करता है।';

  @override
  String get onbPotentialSavingsLabel => 'संभावित मासिक बचत';

  @override
  String get onbPerMonthQuitting => 'छोड़ने पर प्रति माह';

  @override
  String get onbPricePerPodLabel => 'प्रति पॉड कीमत';

  @override
  String get onbPricePerPackLabel => 'प्रति पैक कीमत';

  @override
  String get onbCigarettesPerPackLabel => 'प्रति पैक सिगरेट';

  @override
  String get onbCurrencyLabel => 'मुद्रा';

  @override
  String get onbSymptomBreath => 'सांस फूलना';

  @override
  String get onbSymptomAnxiety => 'चिंता / बेचैनी';

  @override
  String get onbSymptomPulse => 'तेज़ या अनियमित धड़कन';

  @override
  String get onbSymptomMorning => 'सुबह की खांसी / कफ';

  @override
  String get onbSymptomCough => 'बार-बार खांसी';

  @override
  String get onbBodyHint =>
      'आप कई चुन सकते हैं। इससे हमें उस पर ध्यान केंद्रित करने में मदद मिलती है जो आपके लिए महत्वपूर्ण है।';

  @override
  String get onbMotivationHealth => 'बेहतर स्वास्थ्य और ऊर्जा';

  @override
  String get onbMotivationFreedom => 'लत से मुक्ति';

  @override
  String get onbMotivationMoney => 'पैसे बचाना';

  @override
  String get onbMotivationFamily => 'मेरे परिवार / बच्चों के लिए';

  @override
  String get onbMotivationControl => 'अपने जीवन पर नियंत्रण वापस पाना';

  @override
  String get onbMotivationFuture => 'एक स्वस्थ भविष्य';

  @override
  String get onbSelectMultipleHint => 'आप कई कारण चुन सकते हैं';

  @override
  String get onbStartingMapLabel => 'आपका नक्शा बनाया जा रहा है';

  @override
  String get onbBuildingStepSave => 'आपकी बचत की गणना';

  @override
  String get onbBuildingStepGoal => 'आपका मुख्य लक्ष्य निर्धारित करना';

  @override
  String get onbBuildingStepScenarios => 'व्यक्तिगत परिदृश्य बनाना';

  @override
  String get onbBuildingStepSteps => 'पहले कदम तैयार करना';

  @override
  String get onbBuildingHint => 'यह आमतौर पर बस कुछ सेकंड लेता है।';

  @override
  String get onbPleaseWait => 'कृपया थोड़ा इंतज़ार करें…';

  @override
  String get onbCreatingPlan => 'आपकी योजना बनाई जा रही है…';

  @override
  String get onbFirst30DaysLabel => 'पहले 30 दिन';

  @override
  String get onbLessExpensesLabel => 'कम खर्च';

  @override
  String get onbSavingsPerMonth => 'प्रति माह बचत';

  @override
  String get onbSavingsPerYear => 'प्रति वर्ष बचत';

  @override
  String get onbPlanPersonalizedTitle => 'आपकी व्यक्तिगत योजना';

  @override
  String onbPlanPersonalizedSubtitle(int motivations, int symptoms) {
    return '$motivations कारणों और $symptoms लक्षणों के आधार पर';
  }

  @override
  String get onbResultHint =>
      'आप बाद में सेटिंग्स में इन आंकड़ों को हमेशा बदल सकते हैं।';

  @override
  String get onbBreathingHint => 'सांस लें';

  @override
  String get onbContinue => 'जारी रखें';

  @override
  String get onbStartJourney => 'मेरी यात्रा शुरू करें';

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
      'अपनी यात्रा के लिए और अधिक टूल।\nवह प्लान चुनें जो आपके लिए सही हो।';

  @override
  String get oneMembership => 'सब कुछ के लिए एक Premium एक्सेस';

  @override
  String get everythingIncluded => 'सब कुछ शामिल';

  @override
  String get everythingIncludedSubtitle =>
      'Premium पूरे Puffree अनुभव को अनलॉक करता है।';

  @override
  String get choosePlan => 'अपना प्लान चुनें';

  @override
  String get choosePlanSubtitle => 'खरीदने से पहले आप अपनी पसंद बदल सकते हैं।';

  @override
  String get featureTasks => 'विस्तारित मिशन';

  @override
  String get featureTasksSubtitle => 'और अधिक अभ्यास और चुनौतियाँ';

  @override
  String get featureStats => 'पूर्ण आँकड़े';

  @override
  String get featureStatsSubtitle => 'विस्तृत प्रगति जानकारी';

  @override
  String get profileEditTitle => 'प्रोफ़ाइल';

  @override
  String get profileEditTapToChangePhoto => 'बदलने के लिए फ़ोटो पर टैप करें';

  @override
  String get profileEditNameLabel => 'नाम';

  @override
  String get profileEditNameHint => 'अपना नाम दर्ज करें';

  @override
  String get profileEditSaveButton => 'परिवर्तन सहेजें';

  @override
  String get profileEditErrorEmptyName => 'कृपया नाम दर्ज करें';

  @override
  String get profileEditSuccessUpdated => 'प्रोफ़ाइल सफलतापूर्वक अपडेट हो गई';

  @override
  String profileEditErrorUpdate(String error) {
    return 'प्रोफ़ाइल अपडेट करने में विफल: $error';
  }

  @override
  String get authWelcomeBack => 'वापसी पर स्वागत है!';

  @override
  String get authCreateAccount => 'खाता बनाएं';

  @override
  String get authResetPassword => 'पासवर्ड रीसेट करें';

  @override
  String get authLoginSubtitle => 'अपनी यात्रा जारी रखने के लिए साइन इन करें';

  @override
  String get authRegisterSubtitle => 'आज ही धूम्रपान-मुक्त जीवन शुरू करें';

  @override
  String get authForgotSubtitle => 'अपना ईमेल दर्ज करें, हम निर्देश भेजेंगे';

  @override
  String get authTabLogin => 'लॉगिन';

  @override
  String get authTabRegister => 'रजिस्टर';

  @override
  String get authNameHint => 'आपका नाम';

  @override
  String get authNameRequired => 'अपना नाम दर्ज करें';

  @override
  String get authEmailHint => 'ईमेल पता';

  @override
  String get authEmailRequired => 'ईमेल दर्ज करें';

  @override
  String get authEmailInvalid => 'अमान्य ईमेल';

  @override
  String get authPasswordHint => 'पासवर्ड';

  @override
  String get authPasswordRequired => 'पासवर्ड दर्ज करें';

  @override
  String get authPasswordMinLength => 'पासवर्ड कम से कम 6 अक्षर का होना चाहिए';

  @override
  String get authConfirmPasswordHint => 'पासवर्ड दोबारा दर्ज करें';

  @override
  String get authPasswordsDoNotMatch => 'पासवर्ड मेल नहीं खाते';

  @override
  String get authForgotPassword => 'पासवर्ड भूल गए?';

  @override
  String get authLoginButton => 'साइन इन';

  @override
  String get authRegisterButton => 'साइन अप';

  @override
  String get authSendLinkButton => 'लिंक भेजें';

  @override
  String get authBackToLogin => 'लॉगिन पर वापस जाएं';

  @override
  String get authOrContinueWith => 'या इसके साथ जारी रखें';

  @override
  String get authGoogle => 'Google';

  @override
  String get authApple => 'Apple';

  @override
  String get authResetLinkSent =>
      'पासवर्ड रीसेट लिंक आपके ईमेल पर भेज दिया गया!';

  @override
  String get authErrorGeneric => 'कुछ गलत हो गया। कृपया विवरण जांचें।';

  @override
  String get authErrorSocial => 'सोशल साइन-इन विफल।';

  @override
  String get profileYourProfile => 'आपकी प्रोफ़ाइल';

  @override
  String get profileEdit => 'प्रोफ़ाइल संपादित करें';

  @override
  String get switchAccountTitle => 'दूसरे खाते में साइन इन करें?';

  @override
  String get switchAccountBody =>
      'लॉगिन पेज खुलेगा जहाँ आप दूसरे खाते में साइन इन कर सकते हैं।';

  @override
  String get switchAccountButton => 'दूसरे खाते में साइन इन करें';

  @override
  String get switchAccountSubtitle => 'लॉगिन पेज खोलें';

  @override
  String get continueAction => 'जारी रखें';

  @override
  String get logoutTitle => 'साइन आउट करें?';

  @override
  String get logoutBody => 'क्या आप वाकई अपने खाते से साइन आउट करना चाहते हैं?';

  @override
  String get logoutButton => 'साइन आउट';

  @override
  String get premiumBrand => 'Puffree Premium';

  @override
  String get motStartJourney =>
      'आज आपकी नई यात्रा शुरू हो रही है। एक कदम भी बहुत मायने रखता है।';

  @override
  String get motMilestone1 =>
      'पहला दिन। आपने पहला बड़ा कदम उठाया है। जारी रखें।';

  @override
  String get motMilestone3 =>
      'तीन दिन। यह जश्न मनाने के काबिल है। आप सही रास्ते पर हैं।';

  @override
  String get motMilestone7 =>
      'पूरा एक हफ़्ता। सात दिन अपने हित में फैसले लेने के।';

  @override
  String get motMilestone10 =>
      '10 दिन। आपने पहले ही एक मजबूत आत्मविश्वास बना लिया है।';

  @override
  String get motMilestone14 =>
      'दो हफ़्ते। आपने यात्रा का एक महत्वपूर्ण हिस्सा पार कर लिया है।';

  @override
  String get motMilestone21 =>
      '21 दिन। आप साबित कर रहे हैं कि आप अपनी आदतें बदल सकते हैं।';

  @override
  String get motMilestone30 =>
      '30 दिन। नए फैसलों का एक पूरा महीना। यह एक बड़ी उपलब्धि है।';

  @override
  String get motMilestone45 =>
      '45 दिन। डेढ़ महीना और आप लगातार आगे बढ़ रहे हैं।';

  @override
  String get motMilestone60 =>
      '60 दिन। दो महीने की निरंतरता। एक बहुत मजबूत परिणाम।';

  @override
  String get motMilestone90 =>
      '90 दिन। तीन महीने। देखिए आप कितनी दूर आ गए हैं।';

  @override
  String get motMilestone120 =>
      '120 दिन। आप हर दिन अपना रास्ता चुनना जारी रखते हैं।';

  @override
  String get motMilestone180 =>
      'आधा साल। 180 दिनों की निरंतरता। यह वाकई शानदार है।';

  @override
  String get motMilestone270 =>
      '270 दिन। आपने अपनी पुरानी आदत से बहुत बड़ी दूरी बना ली है।';

  @override
  String get motMilestone365 =>
      'एक साल। आपकी यात्रा के 365 दिन। यह इत्तेफाक नहीं, आपकी मेहनत है।';

  @override
  String get motFirstWeek1 => 'आज सिर्फ अगला कदम उठाना ही काफी है।';

  @override
  String get motFirstWeek2 =>
      'आपको आज ही पूरी यात्रा खत्म करने की ज़रूरत नहीं है। बस चलते रहें।';

  @override
  String get motFirstWeek3 => 'हर दिन एक नई जीत है। आज का दिन आपका है।';

  @override
  String get motFirstWeek4 => 'एक मुश्किल पल आपकी प्रगति को मिटा नहीं सकता।';

  @override
  String get motFirstWeek5 =>
      'आप शुरुआत कर चुके हैं। अब खुद को आगे बढ़ने का मौका दें।';

  @override
  String get motFirstWeek6 => 'एक के बाद एक दिन। बड़े बदलाव इसी तरह बनते हैं।';

  @override
  String get motFirstWeek7 =>
      'आप बार-बार खुद को चुन रहे हैं। यह बहुत मायने रखता है।';

  @override
  String get motSecondWeek1 =>
      'आप अब वहां नहीं हैं जहां से शुरुआत की थी। आगे बढ़ते रहें।';

  @override
  String get motSecondWeek2 =>
      'दो हफ़्ते जितने लगते हैं उससे ज़्यादा करीब हैं। अपनी लय बनाए रखें।';

  @override
  String get motSecondWeek3 => 'आपकी प्रगति छोटे-छोटे फैसलों से मिलकर बनती है।';

  @override
  String get motSecondWeek4 =>
      'एक सही दिन का इंतज़ार न करें। अगले दिन को बेहतर बनाएं।';

  @override
  String get motSecondWeek5 =>
      'आप तलब के पल को पार करने और अपनी योजना पर लौटने में सक्षम हैं।';

  @override
  String get motSecondWeek6 =>
      'हर नया दिन आपके आत्मविश्वास को और मजबूत करता है।';

  @override
  String get motSecondWeek7 =>
      'आप साबित कर चुके हैं कि आप कठिन पलों को संभाल सकते हैं।';

  @override
  String get motFirstMonth1 => 'आप कदम दर कदम एक नई आदत बना रहे हैं।';

  @override
  String get motFirstMonth2 => 'आपका बीता हुआ कल आज का फैसला तय नहीं करता।';

  @override
  String get motFirstMonth3 =>
      'तीस दिनों की शुरुआत एक ही फैसले से होती है — जारी रखना।';

  @override
  String get motFirstMonth4 =>
      'आत्मविश्वास एक दिन में नहीं, लगातार प्रयासों से बढ़ता है।';

  @override
  String get motFirstMonth5 =>
      'हर नया दिन आपकी कहानी में एक और पन्ना जोड़ता है।';

  @override
  String get motFirstMonth6 =>
      'आपकी प्रगति आपकी अपनी है। इसे कोई आपसे छीन नहीं सकता।';

  @override
  String get motFirstMonth7 =>
      'आप खुद पर गर्व करने के लिए काफी दूर तक आ चुके हैं।';

  @override
  String get motFirstMonth8 =>
      'शांति से आगे बढ़ें। बड़े बदलावों में जल्दबाजी की ज़रूरत नहीं होती।';

  @override
  String get motSecondMonth1 => 'दो महीने अब कोई इत्तेफाक नहीं हैं।';

  @override
  String get motSecondMonth2 => 'आप अपने इरादे को निरंतरता में बदल रहे हैं।';

  @override
  String get motSecondMonth3 =>
      'आपकी ताकत उन फैसलों में है जो आप हर दिन लेते हैं।';

  @override
  String get motSecondMonth4 =>
      'आप पहले से ही जानते हैं कि आप कठिन पलों से निपट सकते हैं।';

  @override
  String get motSecondMonth5 =>
      'वैसी ज़िंदगी बनाते रहें जैसी आप जीना चाहते हैं।';

  @override
  String get motSecondMonth6 =>
      'पुरानी आदत के बिना बिताया हर दिन आगे की ओर एक और कदम है।';

  @override
  String get motSecondMonth7 =>
      'आप किसी के साथ होड़ नहीं कर रहे। यह सिर्फ आपका रास्ता है।';

  @override
  String get motSecondMonth8 =>
      'पीछे मुड़कर खुद की तुलना पहले दिन से करें। बदलाव साफ दिख रहा है।';

  @override
  String get motThirdMonth1 =>
      'तीन महीने एक गंभीर दूरी है। और आप अभी भी आगे बढ़ रहे हैं।';

  @override
  String get motThirdMonth2 => 'आपने अपने लिए एक नया शुरुआती बिंदु बनाया है।';

  @override
  String get motThirdMonth3 =>
      'स्थिरता प्रेरणा से ज़्यादा मजबूत होती है। आप इसे साबित कर रहे हैं।';

  @override
  String get motThirdMonth4 =>
      'आप वही चुनना जारी रखते हैं जो आपके लिए सच में अहम है।';

  @override
  String get motThirdMonth5 =>
      'हर दिन के साथ पुराना ढर्रा कम महत्वपूर्ण होता जा रहा है।';

  @override
  String get motThirdMonth6 =>
      'अब आप सही मौके का इंतज़ार नहीं करते, बल्कि खुद उसे बनाते हैं।';

  @override
  String get motThirdMonth7 => '90 दिन कई छोटी-छोटी जीतों से बनी एक कहानी है।';

  @override
  String get motThirdMonth8 => 'आप बहुत दूर आ चुके हैं। यहाँ मत रुकिए।';

  @override
  String get motLongTerm1 => 'आप शुरुआत के बिंदु से बहुत दूर हैं। जारी रखें।';

  @override
  String get motLongTerm2 =>
      'आज़ादी एक चुनाव से शुरू होती है और रोज़ के फैसलों से बढ़ती है।';

  @override
  String get motLongTerm3 =>
      'आपका परिणाम उन सभी दिनों का जोड़ है जब आपने कोशिश जारी रखी।';

  @override
  String get motLongTerm4 => 'आपने एक ऐसी दूरी बना ली है जो कभी असंभव लगती थी।';

  @override
  String get motLongTerm5 => 'याद रखें कि आपने शुरुआत क्यों की थी।';

  @override
  String get motLongTerm6 => 'हर नया दिन आपकी कहानी को और मजबूत बनाता है।';

  @override
  String get motLongTerm7 => 'आप पीछे नहीं लौट रहे। आप आगे बढ़ रहे हैं।';

  @override
  String get motLongTerm8 =>
      'जो कभी मुश्किल लगता था, आज आपकी यात्रा का हिस्सा बन गया है।';

  @override
  String get motLongTerm9 =>
      'आपने खुद को सबसे मुख्य बात साबित कर दी है: बदलाव मुमकिन है।';

  @override
  String get motLongTerm10 => 'अपनी नई लय में जीना जारी रखें।';

  @override
  String get motLevelDefault => 'नया स्तर। आप लगातार आगे बढ़ रहे हैं।';

  @override
  String get motLevel1 =>
      'यात्रा शुरू हो चुकी है। सबसे महत्वपूर्ण बात पहला कदम उठाना है।';

  @override
  String get motLevel2 =>
      'पौधा निकल आया है। हर दिन अपनी प्रगति की देखभाल करें।';

  @override
  String get motLevel3 => 'आप बढ़ रहे हैं। छोटे फैसले बड़े बदलाव लाते हैं।';

  @override
  String get motLevel4 => 'जड़ें मजबूत हो रही हैं। अपनी नींव बनाते रहें।';

  @override
  String get motLevel5 =>
      'आपका आत्मविश्वास बढ़ रहा है। अपनी गति कम न होने दें।';

  @override
  String get motLevel6 =>
      'ताकत तब पैदा होती है जब आप कठिनाइयों के बावजूद आगे बढ़ते हैं।';

  @override
  String get motLevel7 => 'आपका संकल्प आपकी कहानी का हिस्सा बन रहा है।';

  @override
  String get motLevel8 => 'चिंगारी एक स्थिर आगे बढ़ने की गति में बदल चुकी है।';

  @override
  String get motLevel9 =>
      'आपने एक लंबा सफर तय किया है। अपनी प्रगति को स्वीकार करें।';

  @override
  String get motLevel10 => 'दसवां स्तर। आप निरंतरता की कीमत समझ चुके हैं।';

  @override
  String get motLevel11 =>
      'रास्ता कठिन होने पर भी आप लगातार सीख और बढ़ रहे हैं।';

  @override
  String get motLevel12 => 'आप खुद के लिए एक मिसाल बन गए हैं। जारी रखें।';

  @override
  String get motLevel13 => 'आपने एक बड़ी गति हासिल कर ली है। अब दिशा सही रखें।';

  @override
  String get motLevel14 => 'शानदार स्तर। देखिए आपने क्या-कुछ हासिल कर लिया है।';

  @override
  String get motShort1 => 'आज एक और कदम।';

  @override
  String get motShort2 => 'अपनी यात्रा जारी रखें।';

  @override
  String get motShort3 => 'आप अच्छा कर रहे हैं।';

  @override
  String get motShort4 => 'आपकी प्रगति मायने रखती है।';

  @override
  String get motShort5 => 'एक मुश्किल पल के लिए मत रुकें।';

  @override
  String get motShort6 => 'आप अपनी पुरानी आदत से ज़्यादा मजबूत हैं।';

  @override
  String get motShort7 => 'अगला कदम चुनें।';

  @override
  String get motShort8 => 'आप शुरू कर चुके हैं। जारी रखें।';

  @override
  String get motShort9 => 'आज का चुनाव महत्वपूर्ण है।';

  @override
  String get motShort10 => 'एक-एक दिन करके।';

  @override
  String get motShort11 => 'आप जितना सोचते हैं उससे ज़्यादा कर सकते हैं।';

  @override
  String get motShort12 => 'आपकी यात्रा सिर्फ आपकी है।';

  @override
  String get profileEditErrorPhotoNotFound => 'चयनित फ़ोटो प्राप्त नहीं कर सका';

  @override
  String get profileEditErrorOpenGallery => 'गैलरी नहीं खोल सका';

  @override
  String get profileEditErrorPickPhoto => 'फ़ोटो चुनते समय एक त्रुटि हुई';

  @override
  String get featureMotivation => 'व्यक्तिगत प्रेरणा';

  @override
  String get featureMotivationSubtitle => 'आपकी यात्रा के लिए मार्गदर्शन';

  @override
  String get featureSupport => 'अतिरिक्त सहायता टूल';

  @override
  String get featureSupportSubtitle => 'जरूरत पड़ने पर और अधिक मदद';

  @override
  String get featureNotifications => 'स्मार्ट रिमाइंडर';

  @override
  String get featureNotificationsSubtitle => 'सही समय पर प्रेरणा';

  @override
  String get featureAds => 'बिना विज्ञापन';

  @override
  String get featureAdsSubtitle => 'शांत और साफ़ अनुभव';

  @override
  String get planMonthly => 'मासिक';

  @override
  String get planMonthlySubtitle => 'लचीला, बिना लंबी प्रतिबद्धता';

  @override
  String get planYearly => 'वार्षिक';

  @override
  String get planYearlySubtitle => 'मूल्य और सुविधाओं का सर्वश्रेष्ठ संतुलन';

  @override
  String get planLifetime => 'आजीवन';

  @override
  String get planLifetimeSubtitle => 'एक भुगतान — Premium हमेशा के लिए';

  @override
  String get perMonth => '/ महीना';

  @override
  String get perYear => '/ वर्ष';

  @override
  String get bestValue => 'सर्वोत्तम मूल्य';

  @override
  String get oneTime => 'एक बार';

  @override
  String get buyMonthly => 'मासिक Premium लें';

  @override
  String get buyYearly => 'वार्षिक Premium लें';

  @override
  String get buyLifetime => 'हमेशा के लिए Premium लें';

  @override
  String get restorePurchases => 'खरीदारी पुनर्स्थापित करें';

  @override
  String get securePurchase => 'सुरक्षित खरीदारी';

  @override
  String get cancelAnytime => 'कभी भी रद्द करें';

  @override
  String get restoreAnytime => 'खरीदारी पुनर्स्थापित की जा सकती है';

  @override
  String get legalMonthly =>
      'सदस्यता हर महीने स्वचालित रूप से नवीनीकृत होती है। आप App Store या Google Play सेटिंग्स से इसे रद्द कर सकते हैं। कीमत खरीद की पुष्टि से पहले दिखाई जाती है।';

  @override
  String get legalYearly =>
      'सदस्यता हर साल स्वचालित रूप से नवीनीकृत होती है। आप App Store या Google Play सेटिंग्स से इसे रद्द कर सकते हैं। कीमत खरीद की पुष्टि से पहले दिखाई जाती है।';

  @override
  String get legalLifetime =>
      'यह एक बार की खरीदारी है और स्वचालित रूप से नवीनीकृत नहीं होती। कीमत खरीद की पुष्टि से पहले दिखाई जाती है।';

  @override
  String get legalContactEmail => 'support@puffreeapp.com';

  @override
  String get privacyPolicyTitle => 'गोपनीयता नीति';

  @override
  String get privacyPolicyLastUpdated => 'अंतिम अपडेट: जनवरी 2026';

  @override
  String get privacyPolicyIntro =>
      'Puffree (\"हम\", \"हमारा\", \"ऐप\") धूम्रपान छोड़ने की आपकी यात्रा को ट्रैक करने और प्रेरित रहने में आपकी मदद करता है। यह नीति बताती है कि हम कौन-सी जानकारी एकत्र करते हैं, उसका उपयोग कैसे करते हैं और आपके पास कौन-से विकल्प हैं।';

  @override
  String get privacySection1Title => 'हम कौन-सी जानकारी एकत्र करते हैं';

  @override
  String get privacySection1Body =>
      'साइन इन करते समय आपके द्वारा दी गई खाता जानकारी (ईमेल पता, प्रदर्शन नाम और प्रोफ़ाइल फ़ोटो), या यदि आप बिना खाते के ऐप का उपयोग करते हैं तो एक अनाम पहचानकर्ता। हम आपके द्वारा स्वयं दर्ज की गई धूम्रपान-मुक्त प्रगति से संबंधित जानकारी भी संग्रहीत करते हैं, जैसे धूम्रपान छोड़ने की तारीख, प्रतिदिन सिगरेट की संख्या, प्रति पैकेट कीमत और आपके द्वारा दर्ज की गई धूम्रपान की इच्छाएँ।';

  @override
  String get privacySection2Title => 'हम आपकी जानकारी का उपयोग कैसे करते हैं';

  @override
  String get privacySection2Body =>
      'आपकी धूम्रपान-मुक्त अवधि, स्वास्थ्य उपलब्धियों और बचाए गए पैसे की गणना करने के लिए; आपके प्रगति डेटा को विभिन्न डिवाइसों के बीच सिंक करने के लिए; वैकल्पिक प्रेरणादायक रिमाइंडर और सूचनाएँ भेजने के लिए; Premium सदस्यता की खरीदारी को संसाधित करने के लिए; तथा क्रैश का पता लगाने और ऐप को बेहतर बनाने के लिए।';

  @override
  String get privacySection3Title => 'डेटा संग्रहण और सुरक्षा';

  @override
  String get privacySection3Body =>
      'आपका डेटा Firebase (Google Cloud) का उपयोग करके संग्रहीत किया जाता है और डेटा ट्रांसफर के दौरान एन्क्रिप्ट किया जाता है। हम उचित तकनीकी और संगठनात्मक सुरक्षा उपाय लागू करते हैं, लेकिन इंटरनेट पर डेटा संग्रहण या प्रसारण की कोई भी विधि पूरी तरह सुरक्षित नहीं है।';

  @override
  String get privacySection4Title => 'तृतीय-पक्ष सेवाएँ';

  @override
  String get privacySection4Body =>
      'हम खातों को प्रबंधित करने और डेटा सिंक करने के लिए Firebase Authentication और Cloud Firestore का उपयोग करते हैं, तथा Premium सदस्यताओं के भुगतान को संसाधित करने के लिए Apple App Store या Google Play की बिलिंग प्रणालियों का उपयोग करते हैं। हम आपकी व्यक्तिगत जानकारी तीसरे पक्ष को नहीं बेचते हैं।';

  @override
  String get privacySection5Title => 'आपके विकल्प और अधिकार';

  @override
  String get privacySection5Body =>
      'आप किसी भी समय अपनी प्रोफ़ाइल देख या संपादित कर सकते हैं, Settings से अपनी स्थानीय प्रगति रीसेट कर सकते हैं, अपने डिवाइस की सेटिंग्स से push notifications बंद कर सकते हैं और हमसे संपर्क करके अपने डेटा तक पहुँच, उसमें सुधार या उसे हटाने का अनुरोध कर सकते हैं।';

  @override
  String get privacySection6Title => 'बच्चों की गोपनीयता';

  @override
  String get privacySection6Body =>
      'Puffree 13 वर्ष से कम उम्र के बच्चों (या यूरोपीय संघ में 16 वर्ष से कम उम्र के बच्चों) के लिए नहीं है और हम जानबूझकर उनसे व्यक्तिगत जानकारी एकत्र नहीं करते हैं। यदि आपको लगता है कि किसी बच्चे ने हमें अपना डेटा प्रदान किया है, तो कृपया हमसे संपर्क करें ताकि हम उसे हटा सकें।';

  @override
  String get privacySection7Title => 'स्वास्थ्य संबंधी अस्वीकरण';

  @override
  String get privacySection7Body =>
      'Puffree एक आदत-ट्रैकिंग टूल है जिसे धूम्रपान-मुक्त जीवन की आपकी यात्रा में सहायता करने के लिए बनाया गया है। यह कोई चिकित्सा उपकरण नहीं है और चिकित्सा सलाह, निदान या उपचार प्रदान नहीं करता है। धूम्रपान छोड़ने के संबंध में हमेशा किसी योग्य स्वास्थ्य विशेषज्ञ से परामर्श करें।';

  @override
  String get privacySection8Title => 'परिवर्तन और संपर्क';

  @override
  String get privacySection8Body =>
      'हम समय-समय पर इस नीति को अपडेट कर सकते हैं; महत्वपूर्ण बदलावों की घोषणा ऐप में की जाएगी। यदि इस नीति या आपके डेटा के बारे में आपके कोई प्रश्न हैं, तो नीचे दिए गए संपर्क विवरण का उपयोग करके हमसे संपर्क करें।';

  @override
  String get termsOfUseTitle => 'उपयोग की शर्तें';

  @override
  String get termsOfUseLastUpdated => 'अंतिम अपडेट: जनवरी 2026';

  @override
  String get termsOfUseIntro =>
      'ये उपयोग की शर्तें Puffree तक आपकी पहुँच और ऐप के आपके उपयोग को नियंत्रित करती हैं। खाता बनाकर या ऐप का उपयोग करके, आप इन शर्तों से सहमत होते हैं। यदि आप सहमत नहीं हैं, तो कृपया ऐप का उपयोग न करें।';

  @override
  String get termsSection1Title => 'शर्तों की स्वीकृति';

  @override
  String get termsSection1Body =>
      'Puffree को डाउनलोड, इंस्टॉल या उपयोग करके, आप पुष्टि करते हैं कि आप इन उपयोग की शर्तों और हमारी गोपनीयता नीति को स्वीकार करते हैं और आपके पास इस समझौते में प्रवेश करने की कानूनी क्षमता है।';

  @override
  String get termsSection2Title => 'सेवा का विवरण';

  @override
  String get termsSection2Body =>
      'Puffree एक आदत-ट्रैकिंग और प्रेरणा ऐप है जो धूम्रपान छोड़ने के बाद आपकी प्रगति पर नज़र रखने में मदद करता है, जिसमें धूम्रपान-मुक्त अवधि, स्वास्थ्य उपलब्धियाँ, बचाए गए पैसे और धूम्रपान की इच्छाओं के रिकॉर्ड शामिल हैं। यह व्यक्तिगत स्वास्थ्य और कल्याण का टूल है, कोई चिकित्सा या क्लिनिकल सेवा नहीं।';

  @override
  String get termsSection3Title => 'पात्रता और खाते';

  @override
  String get termsSection3Body =>
      'Puffree का उपयोग करने के लिए आपकी आयु कम से कम 13 वर्ष होनी चाहिए (या आपके देश में निर्धारित डिजिटल सहमति की न्यूनतम आयु पूरी होनी चाहिए)। अपने खाते की गोपनीयता बनाए रखना और उसके माध्यम से होने वाली सभी गतिविधियों के लिए आप जिम्मेदार हैं।';

  @override
  String get termsSection4Title => 'Premium सदस्यताएँ और बिलिंग';

  @override
  String get termsSection4Body =>
      'Premium सुविधाएँ Apple App Store या Google Play के माध्यम से बिल की जाने वाली स्वचालित रूप से नवीनीकृत होने वाली सदस्यता के रूप में उपलब्ध हैं। सदस्यताएँ वर्तमान अवधि समाप्त होने से कम से कम 24 घंटे पहले रद्द न किए जाने पर स्वतः नवीनीकृत हो जाती हैं। रिफंड संबंधित स्टोर की नीति के अनुसार संभाले जाते हैं।';

  @override
  String get termsSection5Title => 'स्वास्थ्य और चिकित्सा संबंधी अस्वीकरण';

  @override
  String get termsSection5Body =>
      'Puffree चिकित्सा सलाह प्रदान नहीं करता और पेशेवर चिकित्सा देखभाल का विकल्प नहीं है। धूम्रपान छोड़ने के दौरान withdrawal symptoms हो सकते हैं; अपने स्वास्थ्य से संबंधित निर्णय लेने से पहले डॉक्टर या लाइसेंस प्राप्त स्वास्थ्य सेवा प्रदाता से परामर्श करें।';

  @override
  String get termsSection6Title => 'स्वीकार्य उपयोग';

  @override
  String get termsSection6Body =>
      'आप ऐप का दुरुपयोग न करने, इसकी reverse engineering करने या इसकी सेवाओं को बाधित करने का प्रयास न करने, गैरकानूनी या हानिकारक सामग्री अपलोड न करने और ऐप का उपयोग लागू कानूनों या अन्य लोगों के अधिकारों का उल्लंघन करने वाले तरीके से न करने के लिए सहमत हैं।';

  @override
  String get termsSection7Title => 'अस्वीकरण और दायित्व की सीमा';

  @override
  String get termsSection7Body =>
      'Puffree किसी भी प्रकार की वारंटी के बिना \"जैसा है\" के आधार पर प्रदान किया जाता है। कानून द्वारा अनुमत अधिकतम सीमा तक, ऐप के आपके उपयोग से होने वाले किसी भी अप्रत्यक्ष, आकस्मिक या परिणामी नुकसान के लिए हम उत्तरदायी नहीं हैं।';

  @override
  String get termsSection8Title => 'इन शर्तों में बदलाव और संपर्क';

  @override
  String get termsSection8Body =>
      'हम समय-समय पर इन शर्तों को अपडेट कर सकते हैं; बदलाव प्रभावी होने के बाद ऐप का उपयोग जारी रखना संशोधित शर्तों की स्वीकृति माना जाएगा। प्रश्न नीचे दिए गए संपर्क पते पर भेजे जा सकते हैं।';

  @override
  String get systemThemeLabel => 'सिस्टम';

  @override
  String get notificationsEnabledLabel => 'सूचनाएँ सक्षम हैं';

  @override
  String get notificationsDisabledLabel => 'सूचनाएँ अक्षम हैं';

  @override
  String get signInToAnotherAccount => 'दूसरे खाते में साइन इन करें';

  @override
  String get openSignInPage => 'साइन-इन पेज खोलें';

  @override
  String get securePayment => 'सुरक्षित भुगतान';
}
