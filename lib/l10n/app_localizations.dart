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
