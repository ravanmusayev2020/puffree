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
}
