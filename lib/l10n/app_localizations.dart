import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_az.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('az'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('pt'),
    Locale('ru'),
    Locale('tr'),
    Locale('zh')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Puffree'**
  String get appName;

  /// No description provided for @tagline.
  ///
  /// In en, this message translates to:
  /// **'Freedom from smoking'**
  String get tagline;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @streak.
  ///
  /// In en, this message translates to:
  /// **'Streak'**
  String get streak;

  /// No description provided for @saved.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get saved;

  /// No description provided for @avoided.
  ///
  /// In en, this message translates to:
  /// **'Avoided'**
  String get avoided;

  /// No description provided for @totalDays.
  ///
  /// In en, this message translates to:
  /// **'Total days'**
  String get totalDays;

  /// No description provided for @dailyMotivation.
  ///
  /// In en, this message translates to:
  /// **'Daily motivation'**
  String get dailyMotivation;

  /// No description provided for @checkIn.
  ///
  /// In en, this message translates to:
  /// **'I didn\'t smoke today'**
  String get checkIn;

  /// No description provided for @checkedInToday.
  ///
  /// In en, this message translates to:
  /// **'Checked in today'**
  String get checkedInToday;

  /// No description provided for @missions.
  ///
  /// In en, this message translates to:
  /// **'Daily missions'**
  String get missions;

  /// No description provided for @completedOf.
  ///
  /// In en, this message translates to:
  /// **'Completed {completed} of {total}'**
  String completedOf(int completed, int total);

  /// No description provided for @premium.
  ///
  /// In en, this message translates to:
  /// **'Premium'**
  String get premium;

  /// No description provided for @tryFree.
  ///
  /// In en, this message translates to:
  /// **'Try 3 days free'**
  String get tryFree;

  /// No description provided for @buyPremium.
  ///
  /// In en, this message translates to:
  /// **'Buy Premium'**
  String get buyPremium;

  /// No description provided for @restore.
  ///
  /// In en, this message translates to:
  /// **'Restore purchases'**
  String get restore;

  /// No description provided for @premiumHint.
  ///
  /// In en, this message translates to:
  /// **'Unlock all features with Premium'**
  String get premiumHint;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @progress.
  ///
  /// In en, this message translates to:
  /// **'Your progress'**
  String get progress;

  /// No description provided for @statistics.
  ///
  /// In en, this message translates to:
  /// **'Statistics'**
  String get statistics;

  /// No description provided for @currentStreak.
  ///
  /// In en, this message translates to:
  /// **'Current streak'**
  String get currentStreak;

  /// No description provided for @record.
  ///
  /// In en, this message translates to:
  /// **'Record'**
  String get record;

  /// No description provided for @bodyChanges.
  ///
  /// In en, this message translates to:
  /// **'What happens to your body'**
  String get bodyChanges;

  /// No description provided for @resetProgress.
  ///
  /// In en, this message translates to:
  /// **'Reset progress'**
  String get resetProgress;

  /// No description provided for @resetConfirm.
  ///
  /// In en, this message translates to:
  /// **'All data about days, streak and statistics will be deleted. This cannot be undone.'**
  String get resetConfirm;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @journalTitle.
  ///
  /// In en, this message translates to:
  /// **'Journal'**
  String get journalTitle;

  /// No description provided for @journalHint.
  ///
  /// In en, this message translates to:
  /// **'Write down your thoughts'**
  String get journalHint;

  /// No description provided for @journalPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'How are you feeling today?'**
  String get journalPlaceholder;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @moodCheck.
  ///
  /// In en, this message translates to:
  /// **'How are you feeling?'**
  String get moodCheck;

  /// No description provided for @moodCheckHint.
  ///
  /// In en, this message translates to:
  /// **'Take a moment to check in with yourself.'**
  String get moodCheckHint;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @privacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy;

  /// No description provided for @terms.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get terms;

  /// No description provided for @disclaimer.
  ///
  /// In en, this message translates to:
  /// **'Puffree is a motivational app. It is not a medical device and does not replace professional medical advice. If you have a strong nicotine addiction, please consult a specialist.'**
  String get disclaimer;

  /// No description provided for @level.
  ///
  /// In en, this message translates to:
  /// **'Level {number}'**
  String level(int number);

  /// No description provided for @daysSmokeFree.
  ///
  /// In en, this message translates to:
  /// **'{count} days smoke-free'**
  String daysSmokeFree(int count);

  /// No description provided for @nextLevelProgress.
  ///
  /// In en, this message translates to:
  /// **'{percent}% to next level'**
  String nextLevelProgress(int percent);

  /// No description provided for @friend.
  ///
  /// In en, this message translates to:
  /// **'Friend'**
  String get friend;

  /// No description provided for @helloName.
  ///
  /// In en, this message translates to:
  /// **'Hello, {name}!'**
  String helloName(String name);

  /// No description provided for @pathToFreedom.
  ///
  /// In en, this message translates to:
  /// **'Your path to freedom'**
  String get pathToFreedom;

  /// No description provided for @withoutCigs.
  ///
  /// In en, this message translates to:
  /// **'without cigarettes'**
  String get withoutCigs;

  /// No description provided for @iSmoked.
  ///
  /// In en, this message translates to:
  /// **'I smoked'**
  String get iSmoked;

  /// No description provided for @relapseTitle.
  ///
  /// In en, this message translates to:
  /// **'It\'s okay'**
  String get relapseTitle;

  /// No description provided for @relapseBody.
  ///
  /// In en, this message translates to:
  /// **'One cigarette does not erase your progress. Learn from this moment and keep moving forward.'**
  String get relapseBody;

  /// No description provided for @relapseDone.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get relapseDone;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @tasks.
  ///
  /// In en, this message translates to:
  /// **'Tasks'**
  String get tasks;

  /// No description provided for @missionBreathe.
  ///
  /// In en, this message translates to:
  /// **'Deep breathing'**
  String get missionBreathe;

  /// No description provided for @missionWater.
  ///
  /// In en, this message translates to:
  /// **'Drink water'**
  String get missionWater;

  /// No description provided for @missionWalk.
  ///
  /// In en, this message translates to:
  /// **'10 min walk'**
  String get missionWalk;

  /// No description provided for @missionJournal.
  ///
  /// In en, this message translates to:
  /// **'Write a thought'**
  String get missionJournal;

  /// No description provided for @missionMeditation.
  ///
  /// In en, this message translates to:
  /// **'5 min meditation'**
  String get missionMeditation;

  /// No description provided for @missionFocus.
  ///
  /// In en, this message translates to:
  /// **'Focus without phone'**
  String get missionFocus;

  /// No description provided for @missionReflect.
  ///
  /// In en, this message translates to:
  /// **'Day reflection'**
  String get missionReflect;

  /// No description provided for @missionHelp.
  ///
  /// In en, this message translates to:
  /// **'Support someone'**
  String get missionHelp;

  /// No description provided for @missionBreatheDesc.
  ///
  /// In en, this message translates to:
  /// **'Take a few slow, deep breaths.'**
  String get missionBreatheDesc;

  /// No description provided for @missionWaterDesc.
  ///
  /// In en, this message translates to:
  /// **'Drink a glass of water.'**
  String get missionWaterDesc;

  /// No description provided for @missionWalkDesc.
  ///
  /// In en, this message translates to:
  /// **'Take a 10-minute walk.'**
  String get missionWalkDesc;

  /// No description provided for @missionJournalDesc.
  ///
  /// In en, this message translates to:
  /// **'Write down one thought about your day.'**
  String get missionJournalDesc;

  /// No description provided for @missionMeditationDesc.
  ///
  /// In en, this message translates to:
  /// **'Take 5 minutes to meditate.'**
  String get missionMeditationDesc;

  /// No description provided for @missionFocusDesc.
  ///
  /// In en, this message translates to:
  /// **'Spend some time focusing without your phone.'**
  String get missionFocusDesc;

  /// No description provided for @missionReflectDesc.
  ///
  /// In en, this message translates to:
  /// **'Think about how your day went.'**
  String get missionReflectDesc;

  /// No description provided for @missionHelpDesc.
  ///
  /// In en, this message translates to:
  /// **'Do something kind to support someone.'**
  String get missionHelpDesc;

  /// No description provided for @sosTitle.
  ///
  /// In en, this message translates to:
  /// **'SOS Support'**
  String get sosTitle;

  /// No description provided for @sosTimer.
  ///
  /// In en, this message translates to:
  /// **'Craving timer'**
  String get sosTimer;

  /// No description provided for @sosBreathe.
  ///
  /// In en, this message translates to:
  /// **'Breathe'**
  String get sosBreathe;

  /// No description provided for @sosChat.
  ///
  /// In en, this message translates to:
  /// **'Talk'**
  String get sosChat;

  /// No description provided for @sosStart.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get sosStart;

  /// No description provided for @sosDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get sosDone;

  /// No description provided for @sosManaged.
  ///
  /// In en, this message translates to:
  /// **'You managed the craving!'**
  String get sosManaged;

  /// No description provided for @sosWon.
  ///
  /// In en, this message translates to:
  /// **'You won!'**
  String get sosWon;

  /// No description provided for @sosLeft.
  ///
  /// In en, this message translates to:
  /// **'left'**
  String get sosLeft;

  /// No description provided for @sosTip1.
  ///
  /// In en, this message translates to:
  /// **'Take a few slow, deep breaths.'**
  String get sosTip1;

  /// No description provided for @sosTip2.
  ///
  /// In en, this message translates to:
  /// **'Drink a glass of water.'**
  String get sosTip2;

  /// No description provided for @sosTip3.
  ///
  /// In en, this message translates to:
  /// **'Move to a different place.'**
  String get sosTip3;

  /// No description provided for @sosTip4.
  ///
  /// In en, this message translates to:
  /// **'Keep your hands busy.'**
  String get sosTip4;

  /// No description provided for @sosTip5.
  ///
  /// In en, this message translates to:
  /// **'Think about why you started.'**
  String get sosTip5;

  /// No description provided for @sosTip6.
  ///
  /// In en, this message translates to:
  /// **'Give the craving a few minutes to pass.'**
  String get sosTip6;

  /// No description provided for @breatheIn.
  ///
  /// In en, this message translates to:
  /// **'Breathe in'**
  String get breatheIn;

  /// No description provided for @breatheHold.
  ///
  /// In en, this message translates to:
  /// **'Hold'**
  String get breatheHold;

  /// No description provided for @breatheOut.
  ///
  /// In en, this message translates to:
  /// **'Breathe out'**
  String get breatheOut;

  /// No description provided for @breatheHint.
  ///
  /// In en, this message translates to:
  /// **'Follow the circle and breathe slowly.'**
  String get breatheHint;

  /// No description provided for @breatheStart.
  ///
  /// In en, this message translates to:
  /// **'Start breathing'**
  String get breatheStart;

  /// No description provided for @chatPick.
  ///
  /// In en, this message translates to:
  /// **'What are you feeling right now?'**
  String get chatPick;

  /// No description provided for @chatCraving.
  ///
  /// In en, this message translates to:
  /// **'I\'m having a craving'**
  String get chatCraving;

  /// No description provided for @chatStress.
  ///
  /// In en, this message translates to:
  /// **'I\'m stressed'**
  String get chatStress;

  /// No description provided for @chatBoredom.
  ///
  /// In en, this message translates to:
  /// **'I\'m bored'**
  String get chatBoredom;

  /// No description provided for @chatNeedWalk.
  ///
  /// In en, this message translates to:
  /// **'I need a walk'**
  String get chatNeedWalk;

  /// No description provided for @chatNeedWater.
  ///
  /// In en, this message translates to:
  /// **'I need some water'**
  String get chatNeedWater;

  /// No description provided for @chatNeedBreathe.
  ///
  /// In en, this message translates to:
  /// **'I need to breathe'**
  String get chatNeedBreathe;

  /// No description provided for @chatIntroStress.
  ///
  /// In en, this message translates to:
  /// **'It sounds like you\'re feeling stressed. Let\'s get through this moment together.'**
  String get chatIntroStress;

  /// No description provided for @chatIntroBoredom.
  ///
  /// In en, this message translates to:
  /// **'Boredom can make cravings feel stronger. Let\'s find something else to focus on.'**
  String get chatIntroBoredom;

  /// No description provided for @chatIntroCraving.
  ///
  /// In en, this message translates to:
  /// **'A craving can feel intense, but it will pass. Let\'s take it one moment at a time.'**
  String get chatIntroCraving;

  /// No description provided for @chatReplyStress.
  ///
  /// In en, this message translates to:
  /// **'Try taking a few slow breaths and give yourself a short break. You don\'t have to act on the craving.'**
  String get chatReplyStress;

  /// No description provided for @chatReplyBoredom.
  ///
  /// In en, this message translates to:
  /// **'Let\'s change your environment. Take a short walk, drink some water, or do something that keeps your hands busy.'**
  String get chatReplyBoredom;

  /// No description provided for @chatReplyCraving.
  ///
  /// In en, this message translates to:
  /// **'Wait a few minutes before making any decision. Drink some water, breathe slowly, and remind yourself why you started.'**
  String get chatReplyCraving;

  /// No description provided for @onboardingTitle1.
  ///
  /// In en, this message translates to:
  /// **'Breathe freely'**
  String get onboardingTitle1;

  /// No description provided for @onboardingDesc1.
  ///
  /// In en, this message translates to:
  /// **'Puffree helps you quit smoking step by step — without pressure and with support.'**
  String get onboardingDesc1;

  /// No description provided for @onboardingTitle2.
  ///
  /// In en, this message translates to:
  /// **'Levels and progress'**
  String get onboardingTitle2;

  /// No description provided for @onboardingDesc2.
  ///
  /// In en, this message translates to:
  /// **'Every day without a cigarette unlocks a new level. Watch your strength and health grow.'**
  String get onboardingDesc2;

  /// No description provided for @onboardingTitle3.
  ///
  /// In en, this message translates to:
  /// **'Daily support'**
  String get onboardingTitle3;

  /// No description provided for @onboardingDesc3.
  ///
  /// In en, this message translates to:
  /// **'Motivation, missions and progress tracking. You are not alone on this path.'**
  String get onboardingDesc3;

  /// No description provided for @aboutYou.
  ///
  /// In en, this message translates to:
  /// **'A little about you'**
  String get aboutYou;

  /// No description provided for @aboutYouDesc.
  ///
  /// In en, this message translates to:
  /// **'This helps calculate money and cigarettes saved'**
  String get aboutYouDesc;

  /// No description provided for @cigsPerDay.
  ///
  /// In en, this message translates to:
  /// **'Cigarettes per day before'**
  String get cigsPerDay;

  /// No description provided for @pricePerPack.
  ///
  /// In en, this message translates to:
  /// **'Price per pack'**
  String get pricePerPack;

  /// No description provided for @startJourney.
  ///
  /// In en, this message translates to:
  /// **'Start the journey'**
  String get startJourney;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @youGotThis.
  ///
  /// In en, this message translates to:
  /// **'You got this. One moment at a time.'**
  String get youGotThis;

  /// No description provided for @waitTheWave.
  ///
  /// In en, this message translates to:
  /// **'Ride out the craving wave'**
  String get waitTheWave;

  /// No description provided for @youPassedThis.
  ///
  /// In en, this message translates to:
  /// **'You made it through this moment'**
  String get youPassedThis;

  /// No description provided for @greatJob.
  ///
  /// In en, this message translates to:
  /// **'Great job. You\'re in control.'**
  String get greatJob;

  /// No description provided for @giveYourselfMinutes.
  ///
  /// In en, this message translates to:
  /// **'Give yourself a few minutes and focus on the present moment.'**
  String get giveYourselfMinutes;

  /// No description provided for @keepGoing.
  ///
  /// In en, this message translates to:
  /// **'KEEP GOING'**
  String get keepGoing;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'DONE'**
  String get done;

  /// No description provided for @breatheSlowly.
  ///
  /// In en, this message translates to:
  /// **'Breathe slowly'**
  String get breatheSlowly;

  /// No description provided for @followTheCircle.
  ///
  /// In en, this message translates to:
  /// **'Follow the circle rhythm'**
  String get followTheCircle;

  /// No description provided for @chooseWhatFits.
  ///
  /// In en, this message translates to:
  /// **'Choose what matches how you feel right now.'**
  String get chooseWhatFits;

  /// No description provided for @yourResults.
  ///
  /// In en, this message translates to:
  /// **'Your results'**
  String get yourResults;

  /// No description provided for @whatChanged.
  ///
  /// In en, this message translates to:
  /// **'What has already changed thanks to you'**
  String get whatChanged;

  /// No description provided for @recoveryPath.
  ///
  /// In en, this message translates to:
  /// **'Recovery path'**
  String get recoveryPath;

  /// No description provided for @everyMilestone.
  ///
  /// In en, this message translates to:
  /// **'Every milestone is another step forward'**
  String get everyMilestone;

  /// No description provided for @levelProgress.
  ///
  /// In en, this message translates to:
  /// **'Progress to next level'**
  String get levelProgress;

  /// No description provided for @yourPathContinues.
  ///
  /// In en, this message translates to:
  /// **'Your path continues'**
  String get yourPathContinues;

  /// No description provided for @daysWordOne.
  ///
  /// In en, this message translates to:
  /// **'day'**
  String get daysWordOne;

  /// No description provided for @daysWordFew.
  ///
  /// In en, this message translates to:
  /// **'days'**
  String get daysWordFew;

  /// No description provided for @daysWordMany.
  ///
  /// In en, this message translates to:
  /// **'days'**
  String get daysWordMany;

  /// No description provided for @momentum.
  ///
  /// In en, this message translates to:
  /// **'MOMENTUM'**
  String get momentum;

  /// No description provided for @missionsLeft.
  ///
  /// In en, this message translates to:
  /// **'{count} missions left'**
  String missionsLeft(int count);

  /// No description provided for @allMissionsDone.
  ///
  /// In en, this message translates to:
  /// **'All missions completed'**
  String get allMissionsDone;

  /// No description provided for @dayComplete.
  ///
  /// In en, this message translates to:
  /// **'Day complete'**
  String get dayComplete;

  /// No description provided for @keepGoingShort.
  ///
  /// In en, this message translates to:
  /// **'Keep going'**
  String get keepGoingShort;

  /// No description provided for @inProgress.
  ///
  /// In en, this message translates to:
  /// **'IN PROGRESS'**
  String get inProgress;

  /// No description provided for @complete.
  ///
  /// In en, this message translates to:
  /// **'COMPLETE'**
  String get complete;

  /// No description provided for @yourPlanToday.
  ///
  /// In en, this message translates to:
  /// **'Your plan for today'**
  String get yourPlanToday;

  /// No description provided for @everythingDone.
  ///
  /// In en, this message translates to:
  /// **'Everything completed'**
  String get everythingDone;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @notificationsHint.
  ///
  /// In en, this message translates to:
  /// **'Reminders and motivation'**
  String get notificationsHint;

  /// No description provided for @data.
  ///
  /// In en, this message translates to:
  /// **'Data'**
  String get data;

  /// No description provided for @aboutApp.
  ///
  /// In en, this message translates to:
  /// **'About the app'**
  String get aboutApp;

  /// No description provided for @appTheme.
  ///
  /// In en, this message translates to:
  /// **'App theme'**
  String get appTheme;

  /// No description provided for @chooseTheme.
  ///
  /// In en, this message translates to:
  /// **'Choose how Puffree should look.'**
  String get chooseTheme;

  /// No description provided for @systemTheme.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get systemTheme;

  /// No description provided for @systemThemeDesc.
  ///
  /// In en, this message translates to:
  /// **'Follow phone settings'**
  String get systemThemeDesc;

  /// No description provided for @lightTheme.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get lightTheme;

  /// No description provided for @lightThemeDesc.
  ///
  /// In en, this message translates to:
  /// **'Always use light theme'**
  String get lightThemeDesc;

  /// No description provided for @darkTheme.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get darkTheme;

  /// No description provided for @darkThemeDesc.
  ///
  /// In en, this message translates to:
  /// **'Always use dark theme'**
  String get darkThemeDesc;

  /// No description provided for @premiumActive.
  ///
  /// In en, this message translates to:
  /// **'Premium is active'**
  String get premiumActive;

  /// No description provided for @trialActive.
  ///
  /// In en, this message translates to:
  /// **'Trial period is active'**
  String get trialActive;

  /// No description provided for @fullAccess.
  ///
  /// In en, this message translates to:
  /// **'Full access to all features'**
  String get fullAccess;

  /// No description provided for @openPremium.
  ///
  /// In en, this message translates to:
  /// **'Open Premium and subscription options'**
  String get openPremium;

  /// No description provided for @resetProgressTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset progress?'**
  String get resetProgressTitle;

  /// No description provided for @resetProgressBody.
  ///
  /// In en, this message translates to:
  /// **'All data about days, streak and statistics will be deleted. This action cannot be undone.'**
  String get resetProgressBody;

  /// No description provided for @excellent.
  ///
  /// In en, this message translates to:
  /// **'Excellent!'**
  String get excellent;

  /// No description provided for @anotherDayFree.
  ///
  /// In en, this message translates to:
  /// **'Another day without cigarettes'**
  String get anotherDayFree;

  /// No description provided for @continueBtn.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueBtn;

  /// No description provided for @newAchievement.
  ///
  /// In en, this message translates to:
  /// **'NEW ACHIEVEMENT'**
  String get newAchievement;

  /// No description provided for @newLevel.
  ///
  /// In en, this message translates to:
  /// **'New level!'**
  String get newLevel;

  /// No description provided for @levelUpMessage.
  ///
  /// In en, this message translates to:
  /// **'Keep going — you\'re doing great!'**
  String get levelUpMessage;

  /// No description provided for @freeFor.
  ///
  /// In en, this message translates to:
  /// **'FREE FOR'**
  String get freeFor;

  /// No description provided for @toNextLevel.
  ///
  /// In en, this message translates to:
  /// **'To next level'**
  String get toNextLevel;

  /// No description provided for @keyResults.
  ///
  /// In en, this message translates to:
  /// **'KEY RESULTS'**
  String get keyResults;

  /// No description provided for @progressSystem.
  ///
  /// In en, this message translates to:
  /// **'PROGRESS SYSTEM'**
  String get progressSystem;

  /// No description provided for @everyDayCloser.
  ///
  /// In en, this message translates to:
  /// **'Every day moves you closer to the next level'**
  String get everyDayCloser;

  /// No description provided for @current.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get current;

  /// No description provided for @nextLevel.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get nextLevel;

  /// No description provided for @smallSteps.
  ///
  /// In en, this message translates to:
  /// **'Small steps. Big changes.'**
  String get smallSteps;

  /// No description provided for @youAreFurther.
  ///
  /// In en, this message translates to:
  /// **'You are already further than yesterday'**
  String get youAreFurther;

  /// No description provided for @madeForFuture.
  ///
  /// In en, this message translates to:
  /// **'Made for a smoke-free future'**
  String get madeForFuture;

  /// No description provided for @dayStreakCaption.
  ///
  /// In en, this message translates to:
  /// **'day streak'**
  String get dayStreakCaption;

  /// No description provided for @cigarettesAvoidedCaption.
  ///
  /// In en, this message translates to:
  /// **'avoided'**
  String get cigarettesAvoidedCaption;

  /// No description provided for @freeDaysCaption.
  ///
  /// In en, this message translates to:
  /// **'free days'**
  String get freeDaysCaption;

  /// No description provided for @levelLabel.
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get levelLabel;

  /// No description provided for @keepStreakAlive.
  ///
  /// In en, this message translates to:
  /// **'Keep your streak alive'**
  String get keepStreakAlive;

  /// No description provided for @failedToLoadProgress.
  ///
  /// In en, this message translates to:
  /// **'Failed to load progress'**
  String get failedToLoadProgress;

  /// No description provided for @levelTitle1.
  ///
  /// In en, this message translates to:
  /// **'First Breath'**
  String get levelTitle1;

  /// No description provided for @levelTitle2.
  ///
  /// In en, this message translates to:
  /// **'Sprout'**
  String get levelTitle2;

  /// No description provided for @levelTitle3.
  ///
  /// In en, this message translates to:
  /// **'Growth'**
  String get levelTitle3;

  /// No description provided for @levelTitle4.
  ///
  /// In en, this message translates to:
  /// **'Roots'**
  String get levelTitle4;

  /// No description provided for @levelTitle5.
  ///
  /// In en, this message translates to:
  /// **'Trunk'**
  String get levelTitle5;

  /// No description provided for @levelTitle6.
  ///
  /// In en, this message translates to:
  /// **'Strength'**
  String get levelTitle6;

  /// No description provided for @levelTitle7.
  ///
  /// In en, this message translates to:
  /// **'Fire'**
  String get levelTitle7;

  /// No description provided for @levelTitle8.
  ///
  /// In en, this message translates to:
  /// **'Spark'**
  String get levelTitle8;

  /// No description provided for @levelTitle9.
  ///
  /// In en, this message translates to:
  /// **'Champion'**
  String get levelTitle9;

  /// No description provided for @levelTitle10.
  ///
  /// In en, this message translates to:
  /// **'Master'**
  String get levelTitle10;

  /// No description provided for @levelTitle11.
  ///
  /// In en, this message translates to:
  /// **'Diamond'**
  String get levelTitle11;

  /// No description provided for @levelTitle12.
  ///
  /// In en, this message translates to:
  /// **'Star'**
  String get levelTitle12;

  /// No description provided for @levelTitle13.
  ///
  /// In en, this message translates to:
  /// **'Rocket'**
  String get levelTitle13;

  /// No description provided for @levelTitle14.
  ///
  /// In en, this message translates to:
  /// **'Legend'**
  String get levelTitle14;

  /// No description provided for @levelTitleDefault.
  ///
  /// In en, this message translates to:
  /// **'Path'**
  String get levelTitleDefault;

  /// No description provided for @milestone1Title.
  ///
  /// In en, this message translates to:
  /// **'Beginning of a new path'**
  String get milestone1Title;

  /// No description provided for @milestone1Desc.
  ///
  /// In en, this message translates to:
  /// **'You have already taken the first step and keep moving forward.'**
  String get milestone1Desc;

  /// No description provided for @milestone2Title.
  ///
  /// In en, this message translates to:
  /// **'First changes'**
  String get milestone2Title;

  /// No description provided for @milestone2Desc.
  ///
  /// In en, this message translates to:
  /// **'The body is gradually adapting to life without cigarettes.'**
  String get milestone2Desc;

  /// No description provided for @milestone3Title.
  ///
  /// In en, this message translates to:
  /// **'New stage'**
  String get milestone3Title;

  /// No description provided for @milestone3Desc.
  ///
  /// In en, this message translates to:
  /// **'A new rhythm without the habit is gradually forming.'**
  String get milestone3Desc;

  /// No description provided for @milestone4Title.
  ///
  /// In en, this message translates to:
  /// **'Confident progress'**
  String get milestone4Title;

  /// No description provided for @milestone4Desc.
  ///
  /// In en, this message translates to:
  /// **'Two weeks is a noticeable milestone on the way to a new habit.'**
  String get milestone4Desc;

  /// No description provided for @milestone5Title.
  ///
  /// In en, this message translates to:
  /// **'Big habit is changing'**
  String get milestone5Title;

  /// No description provided for @milestone5Desc.
  ///
  /// In en, this message translates to:
  /// **'A month of consistency is a serious personal result.'**
  String get milestone5Desc;

  /// No description provided for @milestone6Title.
  ///
  /// In en, this message translates to:
  /// **'Big milestone'**
  String get milestone6Title;

  /// No description provided for @milestone6Desc.
  ///
  /// In en, this message translates to:
  /// **'Continuing the path helps to consolidate a new lifestyle.'**
  String get milestone6Desc;

  /// No description provided for @milestone7Title.
  ///
  /// In en, this message translates to:
  /// **'Year of freedom'**
  String get milestone7Title;

  /// No description provided for @milestone7Desc.
  ///
  /// In en, this message translates to:
  /// **'A year without cigarettes is a big milestone on your path.'**
  String get milestone7Desc;

  /// No description provided for @navProgress.
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get navProgress;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @settingsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Customize Puffree for yourself'**
  String get settingsSubtitle;

  /// No description provided for @sectionApp.
  ///
  /// In en, this message translates to:
  /// **'App'**
  String get sectionApp;

  /// No description provided for @sectionData.
  ///
  /// In en, this message translates to:
  /// **'Data'**
  String get sectionData;

  /// No description provided for @sectionAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get sectionAbout;

  /// No description provided for @resetProgressSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Start the journey again'**
  String get resetProgressSubtitle;

  /// No description provided for @premiumActiveBadge.
  ///
  /// In en, this message translates to:
  /// **'ACTIVE'**
  String get premiumActiveBadge;

  /// No description provided for @splashCaption.
  ///
  /// In en, this message translates to:
  /// **'Freedom from smoking'**
  String get splashCaption;

  /// No description provided for @todayStartJourney.
  ///
  /// In en, this message translates to:
  /// **'Today is the beginning of your new journey.'**
  String get todayStartJourney;

  /// No description provided for @realResultKeepGoing.
  ///
  /// In en, this message translates to:
  /// **'{count} {daysWord} is already a real result. Keep going.'**
  String realResultKeepGoing(int count, String daysWord);

  /// No description provided for @notificationMorningTitle1.
  ///
  /// In en, this message translates to:
  /// **'Good morning ☀️'**
  String get notificationMorningTitle1;

  /// No description provided for @notificationMorningBody1.
  ///
  /// In en, this message translates to:
  /// **'Day {day} without cigarettes. Keep your momentum going.'**
  String notificationMorningBody1(int day);

  /// No description provided for @notificationMorningTitle2.
  ///
  /// In en, this message translates to:
  /// **'A new smoke-free day'**
  String get notificationMorningTitle2;

  /// No description provided for @notificationMorningBody2.
  ///
  /// In en, this message translates to:
  /// **'You don\'t need to think about the whole journey today. Just take this day.'**
  String get notificationMorningBody2;

  /// No description provided for @notificationMorningTitle3.
  ///
  /// In en, this message translates to:
  /// **'Keep going'**
  String get notificationMorningTitle3;

  /// No description provided for @notificationMorningBody3.
  ///
  /// In en, this message translates to:
  /// **'Small decisions today are building your smoke-free future.'**
  String get notificationMorningBody3;

  /// No description provided for @notificationMorningTitle4.
  ///
  /// In en, this message translates to:
  /// **'Your journey continues'**
  String get notificationMorningTitle4;

  /// No description provided for @notificationMorningBody4.
  ///
  /// In en, this message translates to:
  /// **'Every smoke-free day is another day you chose yourself.'**
  String get notificationMorningBody4;

  /// No description provided for @notificationMorningTitle5.
  ///
  /// In en, this message translates to:
  /// **'You\'ve got this'**
  String get notificationMorningTitle5;

  /// No description provided for @notificationMorningBody5.
  ///
  /// In en, this message translates to:
  /// **'Take today one moment at a time.'**
  String get notificationMorningBody5;

  /// No description provided for @notificationCheckInTitle1.
  ///
  /// In en, this message translates to:
  /// **'How was your day?'**
  String get notificationCheckInTitle1;

  /// No description provided for @notificationCheckInBody1.
  ///
  /// In en, this message translates to:
  /// **'Take a moment to check in and keep your progress alive.'**
  String get notificationCheckInBody1;

  /// No description provided for @notificationCheckInTitle2.
  ///
  /// In en, this message translates to:
  /// **'Puffree check-in'**
  String get notificationCheckInTitle2;

  /// No description provided for @notificationCheckInBody2.
  ///
  /// In en, this message translates to:
  /// **'Did you stay smoke-free today? Mark your progress.'**
  String get notificationCheckInBody2;

  /// No description provided for @notificationCheckInTitle3.
  ///
  /// In en, this message translates to:
  /// **'One more day'**
  String get notificationCheckInTitle3;

  /// No description provided for @notificationCheckInBody3.
  ///
  /// In en, this message translates to:
  /// **'Your journey is built one day at a time.'**
  String get notificationCheckInBody3;

  /// No description provided for @notificationCheckInTitle4.
  ///
  /// In en, this message translates to:
  /// **'Keep your streak alive'**
  String get notificationCheckInTitle4;

  /// No description provided for @notificationCheckInBody4.
  ///
  /// In en, this message translates to:
  /// **'Open Puffree and check in for today.'**
  String get notificationCheckInBody4;

  /// No description provided for @notificationEveningTitle1.
  ///
  /// In en, this message translates to:
  /// **'How are you feeling? 🌙'**
  String get notificationEveningTitle1;

  /// No description provided for @notificationEveningBody1.
  ///
  /// In en, this message translates to:
  /// **'Take a quiet moment and check in with yourself.'**
  String get notificationEveningBody1;

  /// No description provided for @notificationEveningTitle2.
  ///
  /// In en, this message translates to:
  /// **'Evening check-in'**
  String get notificationEveningTitle2;

  /// No description provided for @notificationEveningBody2.
  ///
  /// In en, this message translates to:
  /// **'How did today feel? Your journal is waiting.'**
  String get notificationEveningBody2;

  /// No description provided for @notificationEveningTitle3.
  ///
  /// In en, this message translates to:
  /// **'Before the day ends'**
  String get notificationEveningTitle3;

  /// No description provided for @notificationEveningBody3.
  ///
  /// In en, this message translates to:
  /// **'Take a moment to notice how far you\'ve come.'**
  String get notificationEveningBody3;

  /// No description provided for @notificationEveningTitle4.
  ///
  /// In en, this message translates to:
  /// **'A moment for yourself'**
  String get notificationEveningTitle4;

  /// No description provided for @notificationEveningBody4.
  ///
  /// In en, this message translates to:
  /// **'Breathe, reflect and finish the day with intention.'**
  String get notificationEveningBody4;

  /// No description provided for @notificationMilestone1Title.
  ///
  /// In en, this message translates to:
  /// **'Your first day 🌱'**
  String get notificationMilestone1Title;

  /// No description provided for @notificationMilestone1Body.
  ///
  /// In en, this message translates to:
  /// **'One smoke-free day is already a real step forward.'**
  String get notificationMilestone1Body;

  /// No description provided for @notificationMilestone3Title.
  ///
  /// In en, this message translates to:
  /// **'Three days 🔥'**
  String get notificationMilestone3Title;

  /// No description provided for @notificationMilestone3Body.
  ///
  /// In en, this message translates to:
  /// **'Three smoke-free days. You\'re building momentum.'**
  String get notificationMilestone3Body;

  /// No description provided for @notificationMilestone7Title.
  ///
  /// In en, this message translates to:
  /// **'One full week! 🏆'**
  String get notificationMilestone7Title;

  /// No description provided for @notificationMilestone7Body.
  ///
  /// In en, this message translates to:
  /// **'Seven days without cigarettes. That\'s a meaningful milestone.'**
  String get notificationMilestone7Body;

  /// No description provided for @notificationMilestone14Title.
  ///
  /// In en, this message translates to:
  /// **'Two weeks 💪'**
  String get notificationMilestone14Title;

  /// No description provided for @notificationMilestone14Body.
  ///
  /// In en, this message translates to:
  /// **'Fourteen smoke-free days. Keep building your new routine.'**
  String get notificationMilestone14Body;

  /// No description provided for @notificationMilestone21Title.
  ///
  /// In en, this message translates to:
  /// **'Three weeks 🧠'**
  String get notificationMilestone21Title;

  /// No description provided for @notificationMilestone21Body.
  ///
  /// In en, this message translates to:
  /// **'Twenty-one days behind you. Your journey keeps moving forward.'**
  String get notificationMilestone21Body;

  /// No description provided for @notificationMilestone30Title.
  ///
  /// In en, this message translates to:
  /// **'One month! 👑'**
  String get notificationMilestone30Title;

  /// No description provided for @notificationMilestone30Body.
  ///
  /// In en, this message translates to:
  /// **'Thirty smoke-free days. Look how far you\'ve already come.'**
  String get notificationMilestone30Body;

  /// No description provided for @notificationMilestone60Title.
  ///
  /// In en, this message translates to:
  /// **'Two months 🚀'**
  String get notificationMilestone60Title;

  /// No description provided for @notificationMilestone60Body.
  ///
  /// In en, this message translates to:
  /// **'Sixty days without cigarettes. Your consistency is becoming your strength.'**
  String get notificationMilestone60Body;

  /// No description provided for @notificationMilestone90Title.
  ///
  /// In en, this message translates to:
  /// **'90 days 💎'**
  String get notificationMilestone90Title;

  /// No description provided for @notificationMilestone90Body.
  ///
  /// In en, this message translates to:
  /// **'Three months smoke-free. This is a major milestone on your journey.'**
  String get notificationMilestone90Body;

  /// No description provided for @notificationMilestone180Title.
  ///
  /// In en, this message translates to:
  /// **'Half a year! ✨'**
  String get notificationMilestone180Title;

  /// No description provided for @notificationMilestone180Body.
  ///
  /// In en, this message translates to:
  /// **'180 smoke-free days. You\'ve built an incredible amount of momentum.'**
  String get notificationMilestone180Body;

  /// No description provided for @notificationMilestone365Title.
  ///
  /// In en, this message translates to:
  /// **'One year! 🏆'**
  String get notificationMilestone365Title;

  /// No description provided for @notificationMilestone365Body.
  ///
  /// In en, this message translates to:
  /// **'365 days without cigarettes. One full year of your new journey.'**
  String get notificationMilestone365Body;

  /// No description provided for @notificationMilestoneGenericTitle.
  ///
  /// In en, this message translates to:
  /// **'Another milestone'**
  String get notificationMilestoneGenericTitle;

  /// No description provided for @notificationMilestoneGenericBody.
  ///
  /// In en, this message translates to:
  /// **'{days} smoke-free days. Keep moving forward.'**
  String notificationMilestoneGenericBody(int days);

  /// No description provided for @notificationRelapseTitle1.
  ///
  /// In en, this message translates to:
  /// **'It\'s okay'**
  String get notificationRelapseTitle1;

  /// No description provided for @notificationRelapseBody1.
  ///
  /// In en, this message translates to:
  /// **'One difficult moment doesn\'t erase everything you\'ve built.'**
  String get notificationRelapseBody1;

  /// No description provided for @notificationRelapseTitle2.
  ///
  /// In en, this message translates to:
  /// **'Keep going'**
  String get notificationRelapseTitle2;

  /// No description provided for @notificationRelapseBody2.
  ///
  /// In en, this message translates to:
  /// **'A setback is a moment, not the end of your journey.'**
  String get notificationRelapseBody2;

  /// No description provided for @notificationRelapseTitle3.
  ///
  /// In en, this message translates to:
  /// **'Come back to your path'**
  String get notificationRelapseTitle3;

  /// No description provided for @notificationRelapseBody3.
  ///
  /// In en, this message translates to:
  /// **'Take a breath, learn from the moment and continue.'**
  String get notificationRelapseBody3;

  /// No description provided for @notificationInactive1Title.
  ///
  /// In en, this message translates to:
  /// **'We haven\'t seen you today 👋'**
  String get notificationInactive1Title;

  /// No description provided for @notificationInactive1Body.
  ///
  /// In en, this message translates to:
  /// **'Open Puffree and check in when you\'re ready.'**
  String get notificationInactive1Body;

  /// No description provided for @notificationInactive2Title.
  ///
  /// In en, this message translates to:
  /// **'Your journey is still here'**
  String get notificationInactive2Title;

  /// No description provided for @notificationInactive2Body.
  ///
  /// In en, this message translates to:
  /// **'A few quiet days don\'t erase the progress you\'ve already made.'**
  String get notificationInactive2Body;

  /// No description provided for @notificationInactive3Title.
  ///
  /// In en, this message translates to:
  /// **'Come back when you\'re ready'**
  String get notificationInactive3Title;

  /// No description provided for @notificationInactive3Body.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have to be perfect. Just take the next step.'**
  String get notificationInactive3Body;

  /// No description provided for @onbTitle1.
  ///
  /// In en, this message translates to:
  /// **'What do you use?'**
  String get onbTitle1;

  /// No description provided for @onbSubtitle1.
  ///
  /// In en, this message translates to:
  /// **'We\'ll personalize everything based on your habit.'**
  String get onbSubtitle1;

  /// No description provided for @onbTitle2.
  ///
  /// In en, this message translates to:
  /// **'How much do you use?'**
  String get onbTitle2;

  /// No description provided for @onbSubtitle2.
  ///
  /// In en, this message translates to:
  /// **'Honest numbers help us calculate your real progress.'**
  String get onbSubtitle2;

  /// No description provided for @onbTitle3.
  ///
  /// In en, this message translates to:
  /// **'What does it cost you?'**
  String get onbTitle3;

  /// No description provided for @onbSubtitle3.
  ///
  /// In en, this message translates to:
  /// **'See how much money you can save every month.'**
  String get onbSubtitle3;

  /// No description provided for @onbTitle4.
  ///
  /// In en, this message translates to:
  /// **'How does your body feel?'**
  String get onbTitle4;

  /// No description provided for @onbSubtitle4.
  ///
  /// In en, this message translates to:
  /// **'Select the symptoms you notice most often.'**
  String get onbSubtitle4;

  /// No description provided for @onbTitle5.
  ///
  /// In en, this message translates to:
  /// **'Why do you want to quit?'**
  String get onbTitle5;

  /// No description provided for @onbSubtitle5.
  ///
  /// In en, this message translates to:
  /// **'Your reasons will power the plan we build for you.'**
  String get onbSubtitle5;

  /// No description provided for @onbTitle6.
  ///
  /// In en, this message translates to:
  /// **'Building your plan'**
  String get onbTitle6;

  /// No description provided for @onbSubtitle6.
  ///
  /// In en, this message translates to:
  /// **'We\'re creating a personalized path just for you.'**
  String get onbSubtitle6;

  /// No description provided for @onbTitle7.
  ///
  /// In en, this message translates to:
  /// **'Your plan is ready'**
  String get onbTitle7;

  /// No description provided for @onbSubtitle7.
  ///
  /// In en, this message translates to:
  /// **'Start your journey with a plan made for you.'**
  String get onbSubtitle7;

  /// No description provided for @onbEyebrowBeforeStart.
  ///
  /// In en, this message translates to:
  /// **'BEFORE WE START'**
  String get onbEyebrowBeforeStart;

  /// No description provided for @onbEyebrowStartingPoint.
  ///
  /// In en, this message translates to:
  /// **'STARTING POINT'**
  String get onbEyebrowStartingPoint;

  /// No description provided for @onbEyebrowRealCost.
  ///
  /// In en, this message translates to:
  /// **'REAL COST'**
  String get onbEyebrowRealCost;

  /// No description provided for @onbEyebrowSelfAwareness.
  ///
  /// In en, this message translates to:
  /// **'SELF-AWARENESS'**
  String get onbEyebrowSelfAwareness;

  /// No description provided for @onbEyebrowYourReason.
  ///
  /// In en, this message translates to:
  /// **'YOUR REASON'**
  String get onbEyebrowYourReason;

  /// No description provided for @onbEyebrowPersonalization.
  ///
  /// In en, this message translates to:
  /// **'PERSONALIZATION'**
  String get onbEyebrowPersonalization;

  /// No description provided for @onbEyebrowDone.
  ///
  /// In en, this message translates to:
  /// **'YOU\'RE READY'**
  String get onbEyebrowDone;

  /// No description provided for @onbHabitCigarettesTitle.
  ///
  /// In en, this message translates to:
  /// **'Cigarettes'**
  String get onbHabitCigarettesTitle;

  /// No description provided for @onbHabitCigarettesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Regular or rolled cigarettes'**
  String get onbHabitCigarettesSubtitle;

  /// No description provided for @onbHabitVapeTitle.
  ///
  /// In en, this message translates to:
  /// **'Vape / Pods'**
  String get onbHabitVapeTitle;

  /// No description provided for @onbHabitVapeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Electronic cigarettes and pod systems'**
  String get onbHabitVapeSubtitle;

  /// No description provided for @onbPodsPerWeekLabel.
  ///
  /// In en, this message translates to:
  /// **'Pods per week'**
  String get onbPodsPerWeekLabel;

  /// No description provided for @onbCigarettesPerDayLabel.
  ///
  /// In en, this message translates to:
  /// **'Cigarettes per day'**
  String get onbCigarettesPerDayLabel;

  /// No description provided for @onbYearsSmokedLabel.
  ///
  /// In en, this message translates to:
  /// **'Years smoked'**
  String get onbYearsSmokedLabel;

  /// No description provided for @onbUnitPieces.
  ///
  /// In en, this message translates to:
  /// **'pcs'**
  String get onbUnitPieces;

  /// No description provided for @onbUnitYears.
  ///
  /// In en, this message translates to:
  /// **'years'**
  String get onbUnitYears;

  /// No description provided for @onbAmountVapeHint.
  ///
  /// In en, this message translates to:
  /// **'This helps us estimate your weekly cost and progress.'**
  String get onbAmountVapeHint;

  /// No description provided for @onbPotentialSavingsLabel.
  ///
  /// In en, this message translates to:
  /// **'Potential monthly savings'**
  String get onbPotentialSavingsLabel;

  /// No description provided for @onbPerMonthQuitting.
  ///
  /// In en, this message translates to:
  /// **'per month when you quit'**
  String get onbPerMonthQuitting;

  /// No description provided for @onbPricePerPodLabel.
  ///
  /// In en, this message translates to:
  /// **'Price per pod'**
  String get onbPricePerPodLabel;

  /// No description provided for @onbPricePerPackLabel.
  ///
  /// In en, this message translates to:
  /// **'Price per pack'**
  String get onbPricePerPackLabel;

  /// No description provided for @onbCigarettesPerPackLabel.
  ///
  /// In en, this message translates to:
  /// **'Cigarettes per pack'**
  String get onbCigarettesPerPackLabel;

  /// No description provided for @onbCurrencyLabel.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get onbCurrencyLabel;

  /// No description provided for @onbSymptomBreath.
  ///
  /// In en, this message translates to:
  /// **'Shortness of breath'**
  String get onbSymptomBreath;

  /// No description provided for @onbSymptomAnxiety.
  ///
  /// In en, this message translates to:
  /// **'Anxiety / restlessness'**
  String get onbSymptomAnxiety;

  /// No description provided for @onbSymptomPulse.
  ///
  /// In en, this message translates to:
  /// **'Fast or irregular heartbeat'**
  String get onbSymptomPulse;

  /// No description provided for @onbSymptomMorning.
  ///
  /// In en, this message translates to:
  /// **'Morning cough / phlegm'**
  String get onbSymptomMorning;

  /// No description provided for @onbSymptomCough.
  ///
  /// In en, this message translates to:
  /// **'Frequent cough'**
  String get onbSymptomCough;

  /// No description provided for @onbBodyHint.
  ///
  /// In en, this message translates to:
  /// **'You can select several. This helps us focus on what matters to you.'**
  String get onbBodyHint;

  /// No description provided for @onbMotivationHealth.
  ///
  /// In en, this message translates to:
  /// **'Better health & energy'**
  String get onbMotivationHealth;

  /// No description provided for @onbMotivationFreedom.
  ///
  /// In en, this message translates to:
  /// **'Freedom from addiction'**
  String get onbMotivationFreedom;

  /// No description provided for @onbMotivationMoney.
  ///
  /// In en, this message translates to:
  /// **'Save money'**
  String get onbMotivationMoney;

  /// No description provided for @onbMotivationFamily.
  ///
  /// In en, this message translates to:
  /// **'For my family / kids'**
  String get onbMotivationFamily;

  /// No description provided for @onbMotivationControl.
  ///
  /// In en, this message translates to:
  /// **'Regain control of my life'**
  String get onbMotivationControl;

  /// No description provided for @onbMotivationFuture.
  ///
  /// In en, this message translates to:
  /// **'A healthier future'**
  String get onbMotivationFuture;

  /// No description provided for @onbSelectMultipleHint.
  ///
  /// In en, this message translates to:
  /// **'You can select multiple reasons'**
  String get onbSelectMultipleHint;

  /// No description provided for @onbStartingMapLabel.
  ///
  /// In en, this message translates to:
  /// **'Building your map'**
  String get onbStartingMapLabel;

  /// No description provided for @onbBuildingStepSave.
  ///
  /// In en, this message translates to:
  /// **'Calculating your savings'**
  String get onbBuildingStepSave;

  /// No description provided for @onbBuildingStepGoal.
  ///
  /// In en, this message translates to:
  /// **'Setting your main goal'**
  String get onbBuildingStepGoal;

  /// No description provided for @onbBuildingStepScenarios.
  ///
  /// In en, this message translates to:
  /// **'Creating personal scenarios'**
  String get onbBuildingStepScenarios;

  /// No description provided for @onbBuildingStepSteps.
  ///
  /// In en, this message translates to:
  /// **'Preparing first steps'**
  String get onbBuildingStepSteps;

  /// No description provided for @onbBuildingHint.
  ///
  /// In en, this message translates to:
  /// **'This usually takes just a few seconds.'**
  String get onbBuildingHint;

  /// No description provided for @onbPleaseWait.
  ///
  /// In en, this message translates to:
  /// **'Please wait a moment…'**
  String get onbPleaseWait;

  /// No description provided for @onbCreatingPlan.
  ///
  /// In en, this message translates to:
  /// **'Creating your plan…'**
  String get onbCreatingPlan;

  /// No description provided for @onbFirst30DaysLabel.
  ///
  /// In en, this message translates to:
  /// **'First 30 days'**
  String get onbFirst30DaysLabel;

  /// No description provided for @onbLessExpensesLabel.
  ///
  /// In en, this message translates to:
  /// **'Less expenses'**
  String get onbLessExpensesLabel;

  /// No description provided for @onbSavingsPerMonth.
  ///
  /// In en, this message translates to:
  /// **'Saved per month'**
  String get onbSavingsPerMonth;

  /// No description provided for @onbSavingsPerYear.
  ///
  /// In en, this message translates to:
  /// **'Saved per year'**
  String get onbSavingsPerYear;

  /// No description provided for @onbPlanPersonalizedTitle.
  ///
  /// In en, this message translates to:
  /// **'Your personalized plan'**
  String get onbPlanPersonalizedTitle;

  /// No description provided for @onbPlanPersonalizedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Based on {motivations} reasons and {symptoms} symptoms'**
  String onbPlanPersonalizedSubtitle(int motivations, int symptoms);

  /// No description provided for @onbResultHint.
  ///
  /// In en, this message translates to:
  /// **'You can always adjust these numbers later in settings.'**
  String get onbResultHint;

  /// No description provided for @onbBreathingHint.
  ///
  /// In en, this message translates to:
  /// **'BREATHE'**
  String get onbBreathingHint;

  /// No description provided for @onbContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get onbContinue;

  /// No description provided for @onbStartJourney.
  ///
  /// In en, this message translates to:
  /// **'Start my journey'**
  String get onbStartJourney;

  /// No description provided for @onboardingHabitTitle.
  ///
  /// In en, this message translates to:
  /// **'Ready to take back control?'**
  String get onboardingHabitTitle;

  /// No description provided for @onboardingHabitSubtitle.
  ///
  /// In en, this message translates to:
  /// **'First, let\'s understand your habit. No long forms — a few precise answers, and Puffree will build your path.'**
  String get onboardingHabitSubtitle;

  /// No description provided for @onboardingAmountTitle.
  ///
  /// In en, this message translates to:
  /// **'Describe your typical day'**
  String get onboardingAmountTitle;

  /// No description provided for @onboardingAmountSubtitle.
  ///
  /// In en, this message translates to:
  /// **'This is not to judge you. It\'s the starting point from which we\'ll measure progress.'**
  String get onboardingAmountSubtitle;

  /// No description provided for @onboardingMoneyTitle.
  ///
  /// In en, this message translates to:
  /// **'How much does the habit take from you?'**
  String get onboardingMoneyTitle;

  /// No description provided for @onboardingMoneySubtitle.
  ///
  /// In en, this message translates to:
  /// **'The price updates live on the screen — you see not an abstract number, but the real cost of the habit.'**
  String get onboardingMoneySubtitle;

  /// No description provided for @onboardingBodyTitle.
  ///
  /// In en, this message translates to:
  /// **'What do you notice in yourself?'**
  String get onboardingBodyTitle;

  /// No description provided for @onboardingBodySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Mark what applies to you. You can select several options or none.'**
  String get onboardingBodySubtitle;

  /// No description provided for @onboardingMotivationTitle.
  ///
  /// In en, this message translates to:
  /// **'What are you doing this for?'**
  String get onboardingMotivationTitle;

  /// No description provided for @onboardingMotivationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'This will become your personal anchor. Puffree will bring you back to this reason when you need it.'**
  String get onboardingMotivationSubtitle;

  /// No description provided for @onboardingBuildingTitle.
  ///
  /// In en, this message translates to:
  /// **'Building your path'**
  String get onboardingBuildingTitle;

  /// No description provided for @onboardingBuildingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Not a medical diagnosis and not a promise of a perfect day. Just your starting point and clear next steps.'**
  String get onboardingBuildingSubtitle;

  /// No description provided for @onboardingResultTitle.
  ///
  /// In en, this message translates to:
  /// **'Your first progress screen is already here'**
  String get onboardingResultTitle;

  /// No description provided for @onboardingResultSubtitle.
  ///
  /// In en, this message translates to:
  /// **'We save the starting data on the device and turn it into measurable progress.'**
  String get onboardingResultSubtitle;

  /// No description provided for @onboardingEyebrowBeforeStart.
  ///
  /// In en, this message translates to:
  /// **'BEFORE YOU START'**
  String get onboardingEyebrowBeforeStart;

  /// No description provided for @onboardingEyebrowStartPoint.
  ///
  /// In en, this message translates to:
  /// **'YOUR STARTING POINT'**
  String get onboardingEyebrowStartPoint;

  /// No description provided for @onboardingEyebrowRealCost.
  ///
  /// In en, this message translates to:
  /// **'THE REAL COST'**
  String get onboardingEyebrowRealCost;

  /// No description provided for @onboardingEyebrowSelfFeeling.
  ///
  /// In en, this message translates to:
  /// **'HOW YOU FEEL'**
  String get onboardingEyebrowSelfFeeling;

  /// No description provided for @onboardingEyebrowYourReason.
  ///
  /// In en, this message translates to:
  /// **'YOUR REASON'**
  String get onboardingEyebrowYourReason;

  /// No description provided for @onboardingEyebrowPersonalization.
  ///
  /// In en, this message translates to:
  /// **'PERSONALIZATION'**
  String get onboardingEyebrowPersonalization;

  /// No description provided for @onboardingEyebrowDone.
  ///
  /// In en, this message translates to:
  /// **'DONE'**
  String get onboardingEyebrowDone;

  /// No description provided for @onboardingCigarettesChoice.
  ///
  /// In en, this message translates to:
  /// **'I smoke cigarettes'**
  String get onboardingCigarettesChoice;

  /// No description provided for @onboardingCigarettesChoiceSubtitle.
  ///
  /// In en, this message translates to:
  /// **'The main Puffree scenario'**
  String get onboardingCigarettesChoiceSubtitle;

  /// No description provided for @onboardingVapeChoice.
  ///
  /// In en, this message translates to:
  /// **'I use a vape'**
  String get onboardingVapeChoice;

  /// No description provided for @onboardingVapeChoiceSubtitle.
  ///
  /// In en, this message translates to:
  /// **'We\'ll save this choice for your profile'**
  String get onboardingVapeChoiceSubtitle;

  /// No description provided for @onboardingPodsPerWeek.
  ///
  /// In en, this message translates to:
  /// **'Pods / disposables per week'**
  String get onboardingPodsPerWeek;

  /// No description provided for @onboardingUnitPcs.
  ///
  /// In en, this message translates to:
  /// **'pcs'**
  String get onboardingUnitPcs;

  /// No description provided for @onboardingVapeHint.
  ///
  /// In en, this message translates to:
  /// **'Later, the Puffree profile will be able to separate cigarette and vape scenarios without losing history.'**
  String get onboardingVapeHint;

  /// No description provided for @onboardingCigarettesPerDay.
  ///
  /// In en, this message translates to:
  /// **'Cigarettes per day'**
  String get onboardingCigarettesPerDay;

  /// No description provided for @onboardingYearsSmoked.
  ///
  /// In en, this message translates to:
  /// **'How many years has this been going on'**
  String get onboardingYearsSmoked;

  /// No description provided for @onboardingUnitYears.
  ///
  /// In en, this message translates to:
  /// **'years'**
  String get onboardingUnitYears;

  /// No description provided for @onboardingPricePerPod.
  ///
  /// In en, this message translates to:
  /// **'Price of one pod'**
  String get onboardingPricePerPod;

  /// No description provided for @onboardingPricePerPack.
  ///
  /// In en, this message translates to:
  /// **'Pack price'**
  String get onboardingPricePerPack;

  /// No description provided for @onboardingCigarettesPerPack.
  ///
  /// In en, this message translates to:
  /// **'Cigarettes per pack'**
  String get onboardingCigarettesPerPack;

  /// No description provided for @onboardingPotentialSavings.
  ///
  /// In en, this message translates to:
  /// **'Potential savings'**
  String get onboardingPotentialSavings;

  /// No description provided for @onboardingPerMonthIfQuit.
  ///
  /// In en, this message translates to:
  /// **'per month if you quit the habit'**
  String get onboardingPerMonthIfQuit;

  /// No description provided for @onboardingCurrency.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get onboardingCurrency;

  /// No description provided for @onboardingSymptomBreath.
  ///
  /// In en, this message translates to:
  /// **'I feel that breathing has become heavier'**
  String get onboardingSymptomBreath;

  /// No description provided for @onboardingSymptomAnxiety.
  ///
  /// In en, this message translates to:
  /// **'I sometimes feel strong anxiety'**
  String get onboardingSymptomAnxiety;

  /// No description provided for @onboardingSymptomPulse.
  ///
  /// In en, this message translates to:
  /// **'I notice a faster pulse'**
  String get onboardingSymptomPulse;

  /// No description provided for @onboardingSymptomMorning.
  ///
  /// In en, this message translates to:
  /// **'I especially crave the first cigarette in the morning'**
  String get onboardingSymptomMorning;

  /// No description provided for @onboardingSymptomCough.
  ///
  /// In en, this message translates to:
  /// **'I have a morning cough'**
  String get onboardingSymptomCough;

  /// No description provided for @onboardingBodyHint.
  ///
  /// In en, this message translates to:
  /// **'This is self-description, not a diagnosis. If symptoms worry you, it\'s better to discuss them with a doctor.'**
  String get onboardingBodyHint;

  /// No description provided for @onboardingMotivationHealth.
  ///
  /// In en, this message translates to:
  /// **'I want to take better care of my health'**
  String get onboardingMotivationHealth;

  /// No description provided for @onboardingMotivationFreedom.
  ///
  /// In en, this message translates to:
  /// **'I want to feel freer'**
  String get onboardingMotivationFreedom;

  /// No description provided for @onboardingMotivationMoney.
  ///
  /// In en, this message translates to:
  /// **'I want to stop spending money on this'**
  String get onboardingMotivationMoney;

  /// No description provided for @onboardingMotivationFamily.
  ///
  /// In en, this message translates to:
  /// **'I want to depend less on the habit around loved ones'**
  String get onboardingMotivationFamily;

  /// No description provided for @onboardingMotivationControl.
  ///
  /// In en, this message translates to:
  /// **'I want to regain a sense of control'**
  String get onboardingMotivationControl;

  /// No description provided for @onboardingMotivationFuture.
  ///
  /// In en, this message translates to:
  /// **'I want to do this for my future'**
  String get onboardingMotivationFuture;

  /// No description provided for @onboardingCanSelectSeveral.
  ///
  /// In en, this message translates to:
  /// **'You can select several'**
  String get onboardingCanSelectSeveral;

  /// No description provided for @onboardingYourStartCard.
  ///
  /// In en, this message translates to:
  /// **'your starting card'**
  String get onboardingYourStartCard;

  /// No description provided for @onboardingStepSaveAnswers.
  ///
  /// In en, this message translates to:
  /// **'Saving your answers'**
  String get onboardingStepSaveAnswers;

  /// No description provided for @onboardingStepFinancialGoal.
  ///
  /// In en, this message translates to:
  /// **'Calculating the financial goal'**
  String get onboardingStepFinancialGoal;

  /// No description provided for @onboardingStepCravingScenarios.
  ///
  /// In en, this message translates to:
  /// **'Building craving scenarios'**
  String get onboardingStepCravingScenarios;

  /// No description provided for @onboardingStepFirstSteps.
  ///
  /// In en, this message translates to:
  /// **'Preparing the first steps'**
  String get onboardingStepFirstSteps;

  /// No description provided for @onboardingBuildingHint.
  ///
  /// In en, this message translates to:
  /// **'We deliberately do not promise “lung regeneration in X hours” — Puffree shows measurable things and separates fact from motivation.'**
  String get onboardingBuildingHint;

  /// No description provided for @onboardingSavingsPerMonth.
  ///
  /// In en, this message translates to:
  /// **'savings / month'**
  String get onboardingSavingsPerMonth;

  /// No description provided for @onboardingSavingsPerYear.
  ///
  /// In en, this message translates to:
  /// **'savings / year'**
  String get onboardingSavingsPerYear;

  /// No description provided for @onboardingResultHint.
  ///
  /// In en, this message translates to:
  /// **'These numbers are a calculation based on your answers, not a promise of results. Real progress depends on your behavior.'**
  String get onboardingResultHint;

  /// No description provided for @onboardingFirst30Days.
  ///
  /// In en, this message translates to:
  /// **'First 30 days'**
  String get onboardingFirst30Days;

  /// No description provided for @onboardingLessSpendMoreControl.
  ///
  /// In en, this message translates to:
  /// **'less spending → more control'**
  String get onboardingLessSpendMoreControl;

  /// No description provided for @onboardingPlanPersonalized.
  ///
  /// In en, this message translates to:
  /// **'Plan is personalized'**
  String get onboardingPlanPersonalized;

  /// No description provided for @onboardingMotivationsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} personal motivations'**
  String onboardingMotivationsCount(int count);

  /// No description provided for @onboardingSymptomsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} noted states'**
  String onboardingSymptomsCount(int count);

  /// No description provided for @onboardingTakeFirstStep.
  ///
  /// In en, this message translates to:
  /// **'take the first step'**
  String get onboardingTakeFirstStep;

  /// No description provided for @onboardingPleaseWait.
  ///
  /// In en, this message translates to:
  /// **'Please wait a few seconds…'**
  String get onboardingPleaseWait;

  /// No description provided for @onboardingCreatingPlan.
  ///
  /// In en, this message translates to:
  /// **'Creating plan…'**
  String get onboardingCreatingPlan;

  /// No description provided for @onboardingStartMyJourney.
  ///
  /// In en, this message translates to:
  /// **'Start my journey'**
  String get onboardingStartMyJourney;

  /// No description provided for @onboardingContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get onboardingContinue;

  /// No description provided for @premiumTitle.
  ///
  /// In en, this message translates to:
  /// **'Puffree Premium'**
  String get premiumTitle;

  /// No description provided for @premiumSubtitle.
  ///
  /// In en, this message translates to:
  /// **'More tools for your journey.\nChoose the plan that fits you.'**
  String get premiumSubtitle;

  /// No description provided for @oneMembership.
  ///
  /// In en, this message translates to:
  /// **'One Premium access for everything'**
  String get oneMembership;

  /// No description provided for @everythingIncluded.
  ///
  /// In en, this message translates to:
  /// **'Everything included'**
  String get everythingIncluded;

  /// No description provided for @everythingIncludedSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Premium unlocks the full Puffree experience.'**
  String get everythingIncludedSubtitle;

  /// No description provided for @choosePlan.
  ///
  /// In en, this message translates to:
  /// **'Choose your plan'**
  String get choosePlan;

  /// No description provided for @choosePlanSubtitle.
  ///
  /// In en, this message translates to:
  /// **'You can change your choice before purchasing.'**
  String get choosePlanSubtitle;

  /// No description provided for @featureTasks.
  ///
  /// In en, this message translates to:
  /// **'Extended missions'**
  String get featureTasks;

  /// No description provided for @featureTasksSubtitle.
  ///
  /// In en, this message translates to:
  /// **'More practices and challenges'**
  String get featureTasksSubtitle;

  /// No description provided for @featureStats.
  ///
  /// In en, this message translates to:
  /// **'Full statistics'**
  String get featureStats;

  /// No description provided for @featureStatsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Detailed progress insights'**
  String get featureStatsSubtitle;

  /// No description provided for @profileEditTitle.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileEditTitle;

  /// No description provided for @profileEditTapToChangePhoto.
  ///
  /// In en, this message translates to:
  /// **'Tap photo to change'**
  String get profileEditTapToChangePhoto;

  /// No description provided for @profileEditNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get profileEditNameLabel;

  /// No description provided for @profileEditNameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get profileEditNameHint;

  /// No description provided for @profileEditSaveButton.
  ///
  /// In en, this message translates to:
  /// **'Save changes'**
  String get profileEditSaveButton;

  /// No description provided for @profileEditErrorEmptyName.
  ///
  /// In en, this message translates to:
  /// **'Please enter a name'**
  String get profileEditErrorEmptyName;

  /// No description provided for @profileEditSuccessUpdated.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully'**
  String get profileEditSuccessUpdated;

  /// No description provided for @profileEditErrorUpdate.
  ///
  /// In en, this message translates to:
  /// **'Failed to update profile: {error}'**
  String profileEditErrorUpdate(String error);

  /// No description provided for @authWelcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome back!'**
  String get authWelcomeBack;

  /// No description provided for @authCreateAccount.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get authCreateAccount;

  /// No description provided for @authResetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get authResetPassword;

  /// No description provided for @authLoginSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in to continue your journey'**
  String get authLoginSubtitle;

  /// No description provided for @authRegisterSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Start a new smoke-free life today'**
  String get authRegisterSubtitle;

  /// No description provided for @authForgotSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Enter your email and we\'ll send you instructions'**
  String get authForgotSubtitle;

  /// No description provided for @authTabLogin.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get authTabLogin;

  /// No description provided for @authTabRegister.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get authTabRegister;

  /// No description provided for @authNameHint.
  ///
  /// In en, this message translates to:
  /// **'Your name'**
  String get authNameHint;

  /// No description provided for @authNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get authNameRequired;

  /// No description provided for @authEmailHint.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get authEmailHint;

  /// No description provided for @authEmailRequired.
  ///
  /// In en, this message translates to:
  /// **'Enter email'**
  String get authEmailRequired;

  /// No description provided for @authEmailInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get authEmailInvalid;

  /// No description provided for @authPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get authPasswordHint;

  /// No description provided for @authPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'Enter password'**
  String get authPasswordRequired;

  /// No description provided for @authPasswordMinLength.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get authPasswordMinLength;

  /// No description provided for @authConfirmPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get authConfirmPasswordHint;

  /// No description provided for @authPasswordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get authPasswordsDoNotMatch;

  /// No description provided for @authForgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get authForgotPassword;

  /// No description provided for @authLoginButton.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get authLoginButton;

  /// No description provided for @authRegisterButton.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get authRegisterButton;

  /// No description provided for @authSendLinkButton.
  ///
  /// In en, this message translates to:
  /// **'Send link'**
  String get authSendLinkButton;

  /// No description provided for @authBackToLogin.
  ///
  /// In en, this message translates to:
  /// **'Back to login'**
  String get authBackToLogin;

  /// No description provided for @authOrContinueWith.
  ///
  /// In en, this message translates to:
  /// **'or continue with'**
  String get authOrContinueWith;

  /// No description provided for @authGoogle.
  ///
  /// In en, this message translates to:
  /// **'Google'**
  String get authGoogle;

  /// No description provided for @authApple.
  ///
  /// In en, this message translates to:
  /// **'Apple'**
  String get authApple;

  /// No description provided for @authResetLinkSent.
  ///
  /// In en, this message translates to:
  /// **'Password reset link has been sent to your email!'**
  String get authResetLinkSent;

  /// No description provided for @authErrorGeneric.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please check your details.'**
  String get authErrorGeneric;

  /// No description provided for @authErrorSocial.
  ///
  /// In en, this message translates to:
  /// **'Social sign-in failed.'**
  String get authErrorSocial;

  /// No description provided for @profileYourProfile.
  ///
  /// In en, this message translates to:
  /// **'Your profile'**
  String get profileYourProfile;

  /// No description provided for @profileEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get profileEdit;

  /// No description provided for @switchAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in to another account?'**
  String get switchAccountTitle;

  /// No description provided for @switchAccountBody.
  ///
  /// In en, this message translates to:
  /// **'The login page will open where you can sign in to another account.'**
  String get switchAccountBody;

  /// No description provided for @switchAccountButton.
  ///
  /// In en, this message translates to:
  /// **'Sign in to another account'**
  String get switchAccountButton;

  /// No description provided for @switchAccountSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Open login page'**
  String get switchAccountSubtitle;

  /// No description provided for @continueAction.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueAction;

  /// No description provided for @logoutTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign out?'**
  String get logoutTitle;

  /// No description provided for @logoutBody.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to sign out of your account?'**
  String get logoutBody;

  /// No description provided for @logoutButton.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get logoutButton;

  /// No description provided for @premiumBrand.
  ///
  /// In en, this message translates to:
  /// **'Puffree Premium'**
  String get premiumBrand;

  /// No description provided for @motStartJourney.
  ///
  /// In en, this message translates to:
  /// **'Today begins your new journey. One step already matters.'**
  String get motStartJourney;

  /// No description provided for @motMilestone1.
  ///
  /// In en, this message translates to:
  /// **'Your first day. You took the first big step. Keep going.'**
  String get motMilestone1;

  /// No description provided for @motMilestone3.
  ///
  /// In en, this message translates to:
  /// **'Three days. That is worth celebrating. You are staying on course.'**
  String get motMilestone3;

  /// No description provided for @motMilestone7.
  ///
  /// In en, this message translates to:
  /// **'A full week. Seven days of choosing yourself.'**
  String get motMilestone7;

  /// No description provided for @motMilestone10.
  ///
  /// In en, this message translates to:
  /// **'10 days. You have already built serious momentum.'**
  String get motMilestone10;

  /// No description provided for @motMilestone14.
  ///
  /// In en, this message translates to:
  /// **'Two weeks. You have made it through an important part of the journey.'**
  String get motMilestone14;

  /// No description provided for @motMilestone21.
  ///
  /// In en, this message translates to:
  /// **'21 days. You are proving that your habits can change.'**
  String get motMilestone21;

  /// No description provided for @motMilestone30.
  ///
  /// In en, this message translates to:
  /// **'30 days. A full month of new decisions. That is a big achievement.'**
  String get motMilestone30;

  /// No description provided for @motMilestone45.
  ///
  /// In en, this message translates to:
  /// **'45 days. A month and a half of moving forward.'**
  String get motMilestone45;

  /// No description provided for @motMilestone60.
  ///
  /// In en, this message translates to:
  /// **'60 days. Two months of consistency. That is powerful.'**
  String get motMilestone60;

  /// No description provided for @motMilestone90.
  ///
  /// In en, this message translates to:
  /// **'90 days. Three months. Look how far you have come.'**
  String get motMilestone90;

  /// No description provided for @motMilestone120.
  ///
  /// In en, this message translates to:
  /// **'120 days. You keep choosing your path every day.'**
  String get motMilestone120;

  /// No description provided for @motMilestone180.
  ///
  /// In en, this message translates to:
  /// **'Six months. 180 days of consistency. That is seriously impressive.'**
  String get motMilestone180;

  /// No description provided for @motMilestone270.
  ///
  /// In en, this message translates to:
  /// **'270 days. You have created a huge distance from your old habit.'**
  String get motMilestone270;

  /// No description provided for @motMilestone365.
  ///
  /// In en, this message translates to:
  /// **'One year. 365 days of your journey. This is consistency, not luck.'**
  String get motMilestone365;

  /// No description provided for @motFirstWeek1.
  ///
  /// In en, this message translates to:
  /// **'Today, you only need to take the next step.'**
  String get motFirstWeek1;

  /// No description provided for @motFirstWeek2.
  ///
  /// In en, this message translates to:
  /// **'You do not have to finish the whole journey today. Just keep going.'**
  String get motFirstWeek2;

  /// No description provided for @motFirstWeek3.
  ///
  /// In en, this message translates to:
  /// **'Every day is its own win. Today is yours.'**
  String get motFirstWeek3;

  /// No description provided for @motFirstWeek4.
  ///
  /// In en, this message translates to:
  /// **'A difficult moment does not erase your progress.'**
  String get motFirstWeek4;

  /// No description provided for @motFirstWeek5.
  ///
  /// In en, this message translates to:
  /// **'You already started. Now give yourself a chance to continue.'**
  String get motFirstWeek5;

  /// No description provided for @motFirstWeek6.
  ///
  /// In en, this message translates to:
  /// **'One day at a time. That is how big changes are built.'**
  String get motFirstWeek6;

  /// No description provided for @motFirstWeek7.
  ///
  /// In en, this message translates to:
  /// **'You keep choosing yourself. That matters.'**
  String get motFirstWeek7;

  /// No description provided for @motSecondWeek1.
  ///
  /// In en, this message translates to:
  /// **'You are not where you started anymore. Keep moving.'**
  String get motSecondWeek1;

  /// No description provided for @motSecondWeek2.
  ///
  /// In en, this message translates to:
  /// **'Two weeks are closer than they seem. Keep your rhythm.'**
  String get motSecondWeek2;

  /// No description provided for @motSecondWeek3.
  ///
  /// In en, this message translates to:
  /// **'Your progress is built from small decisions.'**
  String get motSecondWeek3;

  /// No description provided for @motSecondWeek4.
  ///
  /// In en, this message translates to:
  /// **'Do not wait for a perfect day. Create the next good one.'**
  String get motSecondWeek4;

  /// No description provided for @motSecondWeek5.
  ///
  /// In en, this message translates to:
  /// **'You can get through a difficult craving and return to your plan.'**
  String get motSecondWeek5;

  /// No description provided for @motSecondWeek6.
  ///
  /// In en, this message translates to:
  /// **'Every new day builds more confidence.'**
  String get motSecondWeek6;

  /// No description provided for @motSecondWeek7.
  ///
  /// In en, this message translates to:
  /// **'You have already proven that you can handle difficult moments.'**
  String get motSecondWeek7;

  /// No description provided for @motFirstMonth1.
  ///
  /// In en, this message translates to:
  /// **'You are building a new habit one step at a time.'**
  String get motFirstMonth1;

  /// No description provided for @motFirstMonth2.
  ///
  /// In en, this message translates to:
  /// **'Your past does not define today’s choice.'**
  String get motFirstMonth2;

  /// No description provided for @motFirstMonth3.
  ///
  /// In en, this message translates to:
  /// **'Thirty days begin with one decision: keep going.'**
  String get motFirstMonth3;

  /// No description provided for @motFirstMonth4.
  ///
  /// In en, this message translates to:
  /// **'Confidence grows through many consistent days.'**
  String get motFirstMonth4;

  /// No description provided for @motFirstMonth5.
  ///
  /// In en, this message translates to:
  /// **'Every new day adds another page to your story.'**
  String get motFirstMonth5;

  /// No description provided for @motFirstMonth6.
  ///
  /// In en, this message translates to:
  /// **'Your progress belongs to you. Nobody can take it away.'**
  String get motFirstMonth6;

  /// No description provided for @motFirstMonth7.
  ///
  /// In en, this message translates to:
  /// **'You have already come far enough to be proud of yourself.'**
  String get motFirstMonth7;

  /// No description provided for @motFirstMonth8.
  ///
  /// In en, this message translates to:
  /// **'Keep going calmly. Big changes do not require rushing.'**
  String get motFirstMonth8;

  /// No description provided for @motSecondMonth1.
  ///
  /// In en, this message translates to:
  /// **'Two months is no longer a coincidence.'**
  String get motSecondMonth1;

  /// No description provided for @motSecondMonth2.
  ///
  /// In en, this message translates to:
  /// **'You are turning intention into consistency.'**
  String get motSecondMonth2;

  /// No description provided for @motSecondMonth3.
  ///
  /// In en, this message translates to:
  /// **'Your strength is in the decisions you make every day.'**
  String get motSecondMonth3;

  /// No description provided for @motSecondMonth4.
  ///
  /// In en, this message translates to:
  /// **'You already know you can handle difficult moments.'**
  String get motSecondMonth4;

  /// No description provided for @motSecondMonth5.
  ///
  /// In en, this message translates to:
  /// **'Keep building the life you want to live.'**
  String get motSecondMonth5;

  /// No description provided for @motSecondMonth6.
  ///
  /// In en, this message translates to:
  /// **'Every day away from the old habit is another step forward.'**
  String get motSecondMonth6;

  /// No description provided for @motSecondMonth7.
  ///
  /// In en, this message translates to:
  /// **'You are not competing with anyone. This path is yours.'**
  String get motSecondMonth7;

  /// No description provided for @motSecondMonth8.
  ///
  /// In en, this message translates to:
  /// **'Look back at day one. The progress is real.'**
  String get motSecondMonth8;

  /// No description provided for @motThirdMonth1.
  ///
  /// In en, this message translates to:
  /// **'Three months is serious distance. And you are still moving.'**
  String get motThirdMonth1;

  /// No description provided for @motThirdMonth2.
  ///
  /// In en, this message translates to:
  /// **'You have created a new starting point for yourself.'**
  String get motThirdMonth2;

  /// No description provided for @motThirdMonth3.
  ///
  /// In en, this message translates to:
  /// **'Consistency is stronger than motivation. You are proving it.'**
  String get motThirdMonth3;

  /// No description provided for @motThirdMonth4.
  ///
  /// In en, this message translates to:
  /// **'You keep choosing what matters to you.'**
  String get motThirdMonth4;

  /// No description provided for @motThirdMonth5.
  ///
  /// In en, this message translates to:
  /// **'With every day, the old pattern becomes less important.'**
  String get motThirdMonth5;

  /// No description provided for @motThirdMonth6.
  ///
  /// In en, this message translates to:
  /// **'You are not waiting for the right moment. You are creating it.'**
  String get motThirdMonth6;

  /// No description provided for @motThirdMonth7.
  ///
  /// In en, this message translates to:
  /// **'90 days is a story made of many small wins.'**
  String get motThirdMonth7;

  /// No description provided for @motThirdMonth8.
  ///
  /// In en, this message translates to:
  /// **'You have come a long way. Keep building on it.'**
  String get motThirdMonth8;

  /// No description provided for @motLongTerm1.
  ///
  /// In en, this message translates to:
  /// **'You are far from where you started. Keep going.'**
  String get motLongTerm1;

  /// No description provided for @motLongTerm2.
  ///
  /// In en, this message translates to:
  /// **'Freedom starts with a choice and grows through daily decisions.'**
  String get motLongTerm2;

  /// No description provided for @motLongTerm3.
  ///
  /// In en, this message translates to:
  /// **'Your result is the sum of every day you kept going.'**
  String get motLongTerm3;

  /// No description provided for @motLongTerm4.
  ///
  /// In en, this message translates to:
  /// **'You have created a distance you may once have thought impossible.'**
  String get motLongTerm4;

  /// No description provided for @motLongTerm5.
  ///
  /// In en, this message translates to:
  /// **'Remember why you started.'**
  String get motLongTerm5;

  /// No description provided for @motLongTerm6.
  ///
  /// In en, this message translates to:
  /// **'Every new day makes your story stronger.'**
  String get motLongTerm6;

  /// No description provided for @motLongTerm7.
  ///
  /// In en, this message translates to:
  /// **'You are not going backward. You are moving forward.'**
  String get motLongTerm7;

  /// No description provided for @motLongTerm8.
  ///
  /// In en, this message translates to:
  /// **'What once felt difficult is now part of your journey.'**
  String get motLongTerm8;

  /// No description provided for @motLongTerm9.
  ///
  /// In en, this message translates to:
  /// **'You have already proven something important: change is possible.'**
  String get motLongTerm9;

  /// No description provided for @motLongTerm10.
  ///
  /// In en, this message translates to:
  /// **'Keep living at your new rhythm.'**
  String get motLongTerm10;

  /// No description provided for @motLevelDefault.
  ///
  /// In en, this message translates to:
  /// **'New level. You keep moving forward.'**
  String get motLevelDefault;

  /// No description provided for @motLevel1.
  ///
  /// In en, this message translates to:
  /// **'The journey has begun. The most important thing is taking the first step.'**
  String get motLevel1;

  /// No description provided for @motLevel2.
  ///
  /// In en, this message translates to:
  /// **'The seed is growing. Protect your progress every day.'**
  String get motLevel2;

  /// No description provided for @motLevel3.
  ///
  /// In en, this message translates to:
  /// **'You are growing. Small decisions create big changes.'**
  String get motLevel3;

  /// No description provided for @motLevel4.
  ///
  /// In en, this message translates to:
  /// **'Your roots are getting stronger. Keep building your foundation.'**
  String get motLevel4;

  /// No description provided for @motLevel5.
  ///
  /// In en, this message translates to:
  /// **'You are becoming more confident. Keep your momentum.'**
  String get motLevel5;

  /// No description provided for @motLevel6.
  ///
  /// In en, this message translates to:
  /// **'Strength grows when you keep going through difficult moments.'**
  String get motLevel6;

  /// No description provided for @motLevel7.
  ///
  /// In en, this message translates to:
  /// **'Your determination is becoming part of your story.'**
  String get motLevel7;

  /// No description provided for @motLevel8.
  ///
  /// In en, this message translates to:
  /// **'The spark has become steady forward movement.'**
  String get motLevel8;

  /// No description provided for @motLevel9.
  ///
  /// In en, this message translates to:
  /// **'You have come a long way. Give yourself credit.'**
  String get motLevel9;

  /// No description provided for @motLevel10.
  ///
  /// In en, this message translates to:
  /// **'Level ten. You already understand the power of consistency.'**
  String get motLevel10;

  /// No description provided for @motLevel11.
  ///
  /// In en, this message translates to:
  /// **'You keep growing even when the path gets difficult.'**
  String get motLevel11;

  /// No description provided for @motLevel12.
  ///
  /// In en, this message translates to:
  /// **'You have become an example to yourself. Keep going.'**
  String get motLevel12;

  /// No description provided for @motLevel13.
  ///
  /// In en, this message translates to:
  /// **'You have built serious momentum. Now protect your direction.'**
  String get motLevel13;

  /// No description provided for @motLevel14.
  ///
  /// In en, this message translates to:
  /// **'Legendary level. Look at how far you have come.'**
  String get motLevel14;

  /// No description provided for @motShort1.
  ///
  /// In en, this message translates to:
  /// **'Today is another step.'**
  String get motShort1;

  /// No description provided for @motShort2.
  ///
  /// In en, this message translates to:
  /// **'Keep moving forward.'**
  String get motShort2;

  /// No description provided for @motShort3.
  ///
  /// In en, this message translates to:
  /// **'You are doing it.'**
  String get motShort3;

  /// No description provided for @motShort4.
  ///
  /// In en, this message translates to:
  /// **'Your progress matters.'**
  String get motShort4;

  /// No description provided for @motShort5.
  ///
  /// In en, this message translates to:
  /// **'Do not let one difficult moment define the day.'**
  String get motShort5;

  /// No description provided for @motShort6.
  ///
  /// In en, this message translates to:
  /// **'You are stronger than your old habit.'**
  String get motShort6;

  /// No description provided for @motShort7.
  ///
  /// In en, this message translates to:
  /// **'Choose the next step.'**
  String get motShort7;

  /// No description provided for @motShort8.
  ///
  /// In en, this message translates to:
  /// **'You already started. Keep going.'**
  String get motShort8;

  /// No description provided for @motShort9.
  ///
  /// In en, this message translates to:
  /// **'Today’s choice matters.'**
  String get motShort9;

  /// No description provided for @motShort10.
  ///
  /// In en, this message translates to:
  /// **'One day at a time.'**
  String get motShort10;

  /// No description provided for @motShort11.
  ///
  /// In en, this message translates to:
  /// **'You can do more than you think.'**
  String get motShort11;

  /// No description provided for @motShort12.
  ///
  /// In en, this message translates to:
  /// **'Your journey belongs to you.'**
  String get motShort12;

  /// No description provided for @profileEditErrorPhotoNotFound.
  ///
  /// In en, this message translates to:
  /// **'Could not get the selected photo'**
  String get profileEditErrorPhotoNotFound;

  /// No description provided for @profileEditErrorOpenGallery.
  ///
  /// In en, this message translates to:
  /// **'Could not open gallery'**
  String get profileEditErrorOpenGallery;

  /// No description provided for @profileEditErrorPickPhoto.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while selecting a photo'**
  String get profileEditErrorPickPhoto;

  /// No description provided for @featureMotivation.
  ///
  /// In en, this message translates to:
  /// **'Personal motivation'**
  String get featureMotivation;

  /// No description provided for @featureMotivationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Guidance for your journey'**
  String get featureMotivationSubtitle;

  /// No description provided for @featureSupport.
  ///
  /// In en, this message translates to:
  /// **'Extra support tools'**
  String get featureSupport;

  /// No description provided for @featureSupportSubtitle.
  ///
  /// In en, this message translates to:
  /// **'More tools when you need them'**
  String get featureSupportSubtitle;

  /// No description provided for @featureNotifications.
  ///
  /// In en, this message translates to:
  /// **'Smart reminders'**
  String get featureNotifications;

  /// No description provided for @featureNotificationsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Motivation at the right time'**
  String get featureNotificationsSubtitle;

  /// No description provided for @featureAds.
  ///
  /// In en, this message translates to:
  /// **'Ad-free'**
  String get featureAds;

  /// No description provided for @featureAdsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A calm, clean experience'**
  String get featureAdsSubtitle;

  /// No description provided for @planMonthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get planMonthly;

  /// No description provided for @planMonthlySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Flexible with no long commitment'**
  String get planMonthlySubtitle;

  /// No description provided for @planYearly.
  ///
  /// In en, this message translates to:
  /// **'Yearly'**
  String get planYearly;

  /// No description provided for @planYearlySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Best balance of value and features'**
  String get planYearlySubtitle;

  /// No description provided for @planLifetime.
  ///
  /// In en, this message translates to:
  /// **'Lifetime'**
  String get planLifetime;

  /// No description provided for @planLifetimeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'One payment — Premium forever'**
  String get planLifetimeSubtitle;

  /// No description provided for @perMonth.
  ///
  /// In en, this message translates to:
  /// **'/ month'**
  String get perMonth;

  /// No description provided for @perYear.
  ///
  /// In en, this message translates to:
  /// **'/ year'**
  String get perYear;

  /// No description provided for @bestValue.
  ///
  /// In en, this message translates to:
  /// **'BEST VALUE'**
  String get bestValue;

  /// No description provided for @oneTime.
  ///
  /// In en, this message translates to:
  /// **'ONE-TIME'**
  String get oneTime;

  /// No description provided for @buyMonthly.
  ///
  /// In en, this message translates to:
  /// **'Get Premium monthly'**
  String get buyMonthly;

  /// No description provided for @buyYearly.
  ///
  /// In en, this message translates to:
  /// **'Get Premium yearly'**
  String get buyYearly;

  /// No description provided for @buyLifetime.
  ///
  /// In en, this message translates to:
  /// **'Get Premium forever'**
  String get buyLifetime;

  /// No description provided for @restorePurchases.
  ///
  /// In en, this message translates to:
  /// **'Restore purchases'**
  String get restorePurchases;

  /// No description provided for @securePurchase.
  ///
  /// In en, this message translates to:
  /// **'Secure purchase'**
  String get securePurchase;

  /// No description provided for @cancelAnytime.
  ///
  /// In en, this message translates to:
  /// **'Cancel anytime'**
  String get cancelAnytime;

  /// No description provided for @restoreAnytime.
  ///
  /// In en, this message translates to:
  /// **'Purchases can be restored'**
  String get restoreAnytime;

  /// No description provided for @legalMonthly.
  ///
  /// In en, this message translates to:
  /// **'The subscription renews automatically every month. You can cancel through your App Store or Google Play settings. The price is shown before purchase confirmation.'**
  String get legalMonthly;

  /// No description provided for @legalYearly.
  ///
  /// In en, this message translates to:
  /// **'The subscription renews automatically every year. You can cancel through your App Store or Google Play settings. The price is shown before purchase confirmation.'**
  String get legalYearly;

  /// No description provided for @legalLifetime.
  ///
  /// In en, this message translates to:
  /// **'This is a one-time purchase and does not renew automatically. The price is shown before purchase confirmation.'**
  String get legalLifetime;

  /// Support email shown on legal pages — replace with your real address
  ///
  /// In en, this message translates to:
  /// **'support@puffreeapp.com'**
  String get legalContactEmail;

  /// No description provided for @privacyPolicyTitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicyTitle;

  /// No description provided for @privacyPolicyLastUpdated.
  ///
  /// In en, this message translates to:
  /// **'Last updated: January 2026'**
  String get privacyPolicyLastUpdated;

  /// No description provided for @privacyPolicyIntro.
  ///
  /// In en, this message translates to:
  /// **'Puffree (\"we\", \"our\", \"the app\") helps you track and stay motivated on your journey to quit smoking. This policy explains what information we collect, how we use it, and the choices you have.'**
  String get privacyPolicyIntro;

  /// No description provided for @privacySection1Title.
  ///
  /// In en, this message translates to:
  /// **'Information We Collect'**
  String get privacySection1Title;

  /// No description provided for @privacySection1Body.
  ///
  /// In en, this message translates to:
  /// **'Account details you provide when you sign in (email address, display name, and profile photo), or an anonymous identifier if you use the app without an account. We also store the smoke-free data you enter yourself, such as your quit date, cigarettes per day, cost per pack, and cravings you log.'**
  String get privacySection1Body;

  /// No description provided for @privacySection2Title.
  ///
  /// In en, this message translates to:
  /// **'How We Use Your Information'**
  String get privacySection2Title;

  /// No description provided for @privacySection2Body.
  ///
  /// In en, this message translates to:
  /// **'To calculate your streak, health milestones, and money saved; to sync your progress across devices; to send optional motivational reminders and notifications; to process Premium subscription purchases; and to diagnose crashes and improve the app.'**
  String get privacySection2Body;

  /// No description provided for @privacySection3Title.
  ///
  /// In en, this message translates to:
  /// **'Data Storage & Security'**
  String get privacySection3Title;

  /// No description provided for @privacySection3Body.
  ///
  /// In en, this message translates to:
  /// **'Your data is stored using Firebase (Google Cloud) with encryption in transit. We apply reasonable technical and organizational safeguards, but no method of storage or transmission over the internet is completely secure.'**
  String get privacySection3Body;

  /// No description provided for @privacySection4Title.
  ///
  /// In en, this message translates to:
  /// **'Third-Party Services'**
  String get privacySection4Title;

  /// No description provided for @privacySection4Body.
  ///
  /// In en, this message translates to:
  /// **'We use Firebase Authentication and Cloud Firestore to manage accounts and sync data, and the Apple App Store or Google Play billing systems to process Premium subscriptions. We do not sell your personal information to third parties.'**
  String get privacySection4Body;

  /// No description provided for @privacySection5Title.
  ///
  /// In en, this message translates to:
  /// **'Your Choices & Rights'**
  String get privacySection5Title;

  /// No description provided for @privacySection5Body.
  ///
  /// In en, this message translates to:
  /// **'You can review or edit your profile at any time, reset your local progress from Settings, disable push notifications in your device settings, and request access to, correction of, or deletion of your data by contacting us.'**
  String get privacySection5Body;

  /// No description provided for @privacySection6Title.
  ///
  /// In en, this message translates to:
  /// **'Children\'s Privacy'**
  String get privacySection6Title;

  /// No description provided for @privacySection6Body.
  ///
  /// In en, this message translates to:
  /// **'Puffree is not directed at children under 13 (or under 16 in the EU), and we do not knowingly collect personal information from them. If you believe a child has provided us data, please contact us so we can delete it.'**
  String get privacySection6Body;

  /// No description provided for @privacySection7Title.
  ///
  /// In en, this message translates to:
  /// **'Health Disclaimer'**
  String get privacySection7Title;

  /// No description provided for @privacySection7Body.
  ///
  /// In en, this message translates to:
  /// **'Puffree is a habit-tracking tool designed to support your smoke-free journey. It is not a medical device and does not provide medical advice, diagnosis, or treatment. Always consult a qualified healthcare professional about quitting smoking.'**
  String get privacySection7Body;

  /// No description provided for @privacySection8Title.
  ///
  /// In en, this message translates to:
  /// **'Changes & Contact'**
  String get privacySection8Title;

  /// No description provided for @privacySection8Body.
  ///
  /// In en, this message translates to:
  /// **'We may update this policy from time to time; significant changes will be announced in the app. If you have questions about this policy or your data, please reach out using the contact details below.'**
  String get privacySection8Body;

  /// No description provided for @termsOfUseTitle.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get termsOfUseTitle;

  /// No description provided for @termsOfUseLastUpdated.
  ///
  /// In en, this message translates to:
  /// **'Last updated: January 2026'**
  String get termsOfUseLastUpdated;

  /// No description provided for @termsOfUseIntro.
  ///
  /// In en, this message translates to:
  /// **'These Terms of Use govern your access to and use of Puffree. By creating an account or using the app, you agree to these terms. If you do not agree, please do not use the app.'**
  String get termsOfUseIntro;

  /// No description provided for @termsSection1Title.
  ///
  /// In en, this message translates to:
  /// **'Acceptance of Terms'**
  String get termsSection1Title;

  /// No description provided for @termsSection1Body.
  ///
  /// In en, this message translates to:
  /// **'By downloading, installing, or using Puffree, you confirm that you accept these Terms of Use and our Privacy Policy, and that you have the legal capacity to enter into this agreement.'**
  String get termsSection1Body;

  /// No description provided for @termsSection2Title.
  ///
  /// In en, this message translates to:
  /// **'Description of Service'**
  String get termsSection2Title;

  /// No description provided for @termsSection2Body.
  ///
  /// In en, this message translates to:
  /// **'Puffree is a habit-tracking and motivation app that helps you monitor progress after quitting smoking, including streaks, health milestones, money saved, and craving logs. It is a personal wellness tool, not a medical or clinical service.'**
  String get termsSection2Body;

  /// No description provided for @termsSection3Title.
  ///
  /// In en, this message translates to:
  /// **'Eligibility & Accounts'**
  String get termsSection3Title;

  /// No description provided for @termsSection3Body.
  ///
  /// In en, this message translates to:
  /// **'You must be at least 13 years old (or the minimum age of digital consent in your country) to use Puffree. You are responsible for maintaining the confidentiality of your account and for all activity that occurs under it.'**
  String get termsSection3Body;

  /// No description provided for @termsSection4Title.
  ///
  /// In en, this message translates to:
  /// **'Premium Subscriptions & Billing'**
  String get termsSection4Title;

  /// No description provided for @termsSection4Body.
  ///
  /// In en, this message translates to:
  /// **'Premium features are offered as an auto-renewing subscription billed through the Apple App Store or Google Play. Subscriptions renew automatically unless cancelled at least 24 hours before the end of the current period, and refunds are handled according to the relevant store\'s policy.'**
  String get termsSection4Body;

  /// No description provided for @termsSection5Title.
  ///
  /// In en, this message translates to:
  /// **'Health & Medical Disclaimer'**
  String get termsSection5Title;

  /// No description provided for @termsSection5Body.
  ///
  /// In en, this message translates to:
  /// **'Puffree does not provide medical advice and is not a substitute for professional care. Quitting smoking can involve withdrawal symptoms; please consult a doctor or licensed healthcare provider before making decisions about your health.'**
  String get termsSection5Body;

  /// No description provided for @termsSection6Title.
  ///
  /// In en, this message translates to:
  /// **'Acceptable Use'**
  String get termsSection6Title;

  /// No description provided for @termsSection6Body.
  ///
  /// In en, this message translates to:
  /// **'You agree not to misuse the app, attempt to reverse-engineer or disrupt its services, upload unlawful or harmful content, or use the app in any way that violates applicable laws or the rights of others.'**
  String get termsSection6Body;

  /// No description provided for @termsSection7Title.
  ///
  /// In en, this message translates to:
  /// **'Disclaimer & Limitation of Liability'**
  String get termsSection7Title;

  /// No description provided for @termsSection7Body.
  ///
  /// In en, this message translates to:
  /// **'Puffree is provided \"as is\" without warranties of any kind. To the maximum extent permitted by law, we are not liable for any indirect, incidental, or consequential damages arising from your use of the app.'**
  String get termsSection7Body;

  /// No description provided for @termsSection8Title.
  ///
  /// In en, this message translates to:
  /// **'Changes to These Terms & Contact'**
  String get termsSection8Title;

  /// No description provided for @termsSection8Body.
  ///
  /// In en, this message translates to:
  /// **'We may update these Terms from time to time; continued use of the app after changes take effect constitutes acceptance of the revised Terms. Questions can be sent to the contact address below.'**
  String get termsSection8Body;

  /// No description provided for @systemThemeLabel.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get systemThemeLabel;

  /// No description provided for @notificationsEnabledLabel.
  ///
  /// In en, this message translates to:
  /// **'Notifications enabled'**
  String get notificationsEnabledLabel;

  /// No description provided for @notificationsDisabledLabel.
  ///
  /// In en, this message translates to:
  /// **'Notifications disabled'**
  String get notificationsDisabledLabel;

  /// No description provided for @signInToAnotherAccount.
  ///
  /// In en, this message translates to:
  /// **'Sign in to another account'**
  String get signInToAnotherAccount;

  /// No description provided for @openSignInPage.
  ///
  /// In en, this message translates to:
  /// **'Open sign-in page'**
  String get openSignInPage;

  /// No description provided for @securePayment.
  ///
  /// In en, this message translates to:
  /// **'Pago seguro'**
  String get securePayment;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'az',
        'de',
        'en',
        'es',
        'fr',
        'hi',
        'it',
        'ja',
        'ko',
        'pt',
        'ru',
        'tr',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'az':
      return AppLocalizationsAz();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'tr':
      return AppLocalizationsTr();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
