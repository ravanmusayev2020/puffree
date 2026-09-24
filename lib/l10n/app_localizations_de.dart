// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'Puffree';

  @override
  String get tagline => 'Freiheit vom Rauchen';

  @override
  String get today => 'Heute';

  @override
  String get streak => 'Serie';

  @override
  String get saved => 'Gespart';

  @override
  String get avoided => 'Vermieden';

  @override
  String get totalDays => 'Gesamttage';

  @override
  String get dailyMotivation => 'Motivation des Tages';

  @override
  String get checkIn => 'Ich habe heute nicht geraucht';

  @override
  String get checkedInToday => 'Heute eingecheckt';

  @override
  String get missions => 'Tägliche Missionen';

  @override
  String completedOf(int completed, int total) {
    return '$completed von $total erledigt';
  }

  @override
  String get premium => 'Premium';

  @override
  String get tryFree => '3 Tage kostenlos testen';

  @override
  String get buyPremium => 'Premium kaufen';

  @override
  String get restore => 'Käufe wiederherstellen';

  @override
  String get premiumHint => 'Schalte alle Funktionen mit Premium frei';

  @override
  String get settings => 'Einstellungen';

  @override
  String get progress => 'Dein Fortschritt';

  @override
  String get statistics => 'Statistiken';

  @override
  String get currentStreak => 'Aktuelle Serie';

  @override
  String get record => 'Rekord';

  @override
  String get bodyChanges => 'Was mit deinem Körper passiert';

  @override
  String get resetProgress => 'Fortschritt zurücksetzen';

  @override
  String get resetConfirm =>
      'Alle Daten zu Tagen, Serie und Statistiken werden gelöscht. Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get reset => 'Zurücksetzen';

  @override
  String get journalTitle => 'Tagebuch';

  @override
  String get journalHint => 'Schreibe deine Gedanken auf';

  @override
  String get journalPlaceholder => 'Wie fühlst du dich heute?';

  @override
  String get save => 'Speichern';

  @override
  String get moodCheck => 'Wie fühlst du dich?';

  @override
  String get moodCheckHint =>
      'Nimm dir einen Moment, um dich selbst zu checken.';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Datenschutzrichtlinie';

  @override
  String get terms => 'Nutzungsbedingungen';

  @override
  String get disclaimer =>
      'Puffree ist eine Motivations-App. Sie ist kein medizinisches Gerät und ersetzt keine fachliche Beratung. Bei starker Nikotinabhängigkeit wende dich bitte an einen Spezialisten.';

  @override
  String level(int number) {
    return 'Level $number';
  }

  @override
  String daysSmokeFree(int count) {
    return '$count Tage rauchfrei';
  }

  @override
  String nextLevelProgress(int percent) {
    return '$percent% bis zum nächsten Level';
  }

  @override
  String get friend => 'Freund';

  @override
  String helloName(String name) {
    return 'Hallo, $name!';
  }

  @override
  String get pathToFreedom => 'Dein Weg zur Freiheit';

  @override
  String get withoutCigs => 'ohne Zigaretten';

  @override
  String get iSmoked => 'Ich habe geraucht';

  @override
  String get relapseTitle => 'Alles in Ordnung';

  @override
  String get relapseBody =>
      'Eine Zigarette löscht deinen Fortschritt nicht aus. Lerne aus diesem Moment und gehe weiter voran.';

  @override
  String get relapseDone => 'Weiter';

  @override
  String get home => 'Start';

  @override
  String get tasks => 'Aufgaben';

  @override
  String get missionBreathe => 'Tief atmen';

  @override
  String get missionWater => 'Wasser trinken';

  @override
  String get missionWalk => '10 Min. spazieren';

  @override
  String get missionJournal => 'Gedanken aufschreiben';

  @override
  String get missionMeditation => '5 Min. meditieren';

  @override
  String get missionFocus => 'Fokus ohne Handy';

  @override
  String get missionReflect => 'Tagesreflexion';

  @override
  String get missionHelp => 'Jemanden unterstützen';

  @override
  String get missionBreatheDesc => 'Mache ein paar langsame, tiefe Atemzüge.';

  @override
  String get missionWaterDesc => 'Trinke ein Glas Wasser.';

  @override
  String get missionWalkDesc => 'Mache einen 10-minütigen Spaziergang.';

  @override
  String get missionJournalDesc =>
      'Schreibe einen Gedanken über deinen Tag auf.';

  @override
  String get missionMeditationDesc => 'Nimm dir 5 Minuten zum Meditieren.';

  @override
  String get missionFocusDesc => 'Verbringe Zeit mit Fokus ohne Handy.';

  @override
  String get missionReflectDesc => 'Denke darüber nach, wie dein Tag war.';

  @override
  String get missionHelpDesc =>
      'Tu etwas Freundliches, um jemanden zu unterstützen.';

  @override
  String get sosTitle => 'SOS-Unterstützung';

  @override
  String get sosTimer => 'Verlangen-Timer';

  @override
  String get sosBreathe => 'Atmen';

  @override
  String get sosChat => 'Sprechen';

  @override
  String get sosStart => 'Starten';

  @override
  String get sosDone => 'Fertig';

  @override
  String get sosManaged => 'Du hast das Verlangen bewältigt!';

  @override
  String get sosWon => 'Du hast gewonnen!';

  @override
  String get sosLeft => 'übrig';

  @override
  String get sosTip1 => 'Mache ein paar langsame, tiefe Atemzüge.';

  @override
  String get sosTip2 => 'Trinke ein Glas Wasser.';

  @override
  String get sosTip3 => 'Wechsle den Ort.';

  @override
  String get sosTip4 => 'Halte deine Hände beschäftigt.';

  @override
  String get sosTip5 => 'Denke daran, warum du angefangen hast.';

  @override
  String get sosTip6 => 'Gib dem Verlangen ein paar Minuten, um zu vergehen.';

  @override
  String get breatheIn => 'Einatmen';

  @override
  String get breatheHold => 'Halten';

  @override
  String get breatheOut => 'Ausatmen';

  @override
  String get breatheHint => 'Folge dem Kreis und atme langsam.';

  @override
  String get breatheStart => 'Atmung starten';

  @override
  String get chatPick => 'Was fühlst du gerade?';

  @override
  String get chatCraving => 'Ich habe Verlangen';

  @override
  String get chatStress => 'Ich bin gestresst';

  @override
  String get chatBoredom => 'Mir ist langweilig';

  @override
  String get chatNeedWalk => 'Ich brauche einen Spaziergang';

  @override
  String get chatNeedWater => 'Ich brauche Wasser';

  @override
  String get chatNeedBreathe => 'Ich muss atmen';

  @override
  String get chatIntroStress =>
      'Es scheint, als würdest du Stress empfinden. Lass uns diesen Moment gemeinsam durchstehen.';

  @override
  String get chatIntroBoredom =>
      'Langeweile kann das Verlangen verstärken. Lass uns etwas anderes finden, worauf wir uns konzentrieren können.';

  @override
  String get chatIntroCraving =>
      'Verlangen kann intensiv sein, aber es vergeht. Lass uns es Moment für Moment angehen.';

  @override
  String get chatReplyStress =>
      'Versuche ein paar langsame Atemzüge und gönne dir eine kurze Pause. Du musst dem Verlangen nicht nachgeben.';

  @override
  String get chatReplyBoredom =>
      'Lass uns die Umgebung wechseln. Geh kurz spazieren, trinke Wasser oder halte deine Hände beschäftigt.';

  @override
  String get chatReplyCraving =>
      'Warte ein paar Minuten, bevor du eine Entscheidung triffst. Trinke Wasser, atme langsam und erinnere dich, warum du angefangen hast.';

  @override
  String get onboardingTitle1 => 'Frei atmen';

  @override
  String get onboardingDesc1 =>
      'Puffree hilft dir, Schritt für Schritt mit dem Rauchen aufzuhören — ohne Druck und mit Unterstützung.';

  @override
  String get onboardingTitle2 => 'Level und Fortschritt';

  @override
  String get onboardingDesc2 =>
      'Jeder Tag ohne Zigarette schaltet ein neues Level frei. Beobachte, wie deine Kraft und Gesundheit wachsen.';

  @override
  String get onboardingTitle3 => 'Tägliche Unterstützung';

  @override
  String get onboardingDesc3 =>
      'Motivation, Missionen und Fortschrittsverfolgung. Du bist nicht allein auf diesem Weg.';

  @override
  String get aboutYou => 'Ein wenig über dich';

  @override
  String get aboutYouDesc =>
      'Das hilft, gespartes Geld und Zigaretten zu berechnen';

  @override
  String get cigsPerDay => 'Zigaretten pro Tag vorher';

  @override
  String get pricePerPack => 'Preis pro Packung';

  @override
  String get startJourney => 'Reise starten';

  @override
  String get next => 'Weiter';

  @override
  String get skip => 'Überspringen';

  @override
  String get youGotThis => 'Du schaffst das. Einen Moment nach dem anderen.';

  @override
  String get waitTheWave => 'Reite die Welle des Verlangens aus';

  @override
  String get youPassedThis => 'Du hast diesen Moment überstanden';

  @override
  String get greatJob => 'Tolle Arbeit. Du hast die Kontrolle.';

  @override
  String get giveYourselfMinutes =>
      'Nimm dir ein paar Minuten und konzentriere dich auf den gegenwärtigen Moment.';

  @override
  String get keepGoing => 'WEITERMACHEN';

  @override
  String get done => 'FERTIG';

  @override
  String get breatheSlowly => 'Langsam atmen';

  @override
  String get followTheCircle => 'Folge dem Rhythmus des Kreises';

  @override
  String get chooseWhatFits =>
      'Wähle, was am besten zu deinem aktuellen Gefühl passt.';

  @override
  String get yourResults => 'Deine Ergebnisse';

  @override
  String get whatChanged => 'Was sich bereits durch dich verändert hat';

  @override
  String get recoveryPath => 'Erholungsweg';

  @override
  String get everyMilestone =>
      'Jeder Meilenstein ist ein weiterer Schritt vorwärts';

  @override
  String get levelProgress => 'Fortschritt zum nächsten Level';

  @override
  String get yourPathContinues => 'Dein Weg geht weiter';

  @override
  String get daysWordOne => 'Tag';

  @override
  String get daysWordFew => 'Tage';

  @override
  String get daysWordMany => 'Tage';

  @override
  String get momentum => 'SCHWUNG';

  @override
  String missionsLeft(int count) {
    return 'Noch $count Missionen';
  }

  @override
  String get allMissionsDone => 'Alle Missionen erledigt';

  @override
  String get dayComplete => 'Tag abgeschlossen';

  @override
  String get keepGoingShort => 'Weitermachen';

  @override
  String get inProgress => 'IN ARBEIT';

  @override
  String get complete => 'ABGESCHLOSSEN';

  @override
  String get yourPlanToday => 'Dein Plan für heute';

  @override
  String get everythingDone => 'Alles erledigt';

  @override
  String get theme => 'Design';

  @override
  String get language => 'Sprache';

  @override
  String get notifications => 'Benachrichtigungen';

  @override
  String get notificationsHint => 'Erinnerungen und Motivation';

  @override
  String get data => 'Daten';

  @override
  String get aboutApp => 'Über die App';

  @override
  String get appTheme => 'App-Design';

  @override
  String get chooseTheme => 'Wähle, wie Puffree aussehen soll.';

  @override
  String get systemTheme => 'System';

  @override
  String get systemThemeDesc => 'Den Telefoneinstellungen folgen';

  @override
  String get lightTheme => 'Hell';

  @override
  String get lightThemeDesc => 'Immer helles Design verwenden';

  @override
  String get darkTheme => 'Dunkel';

  @override
  String get darkThemeDesc => 'Immer dunkles Design verwenden';

  @override
  String get premiumActive => 'Premium aktiv';

  @override
  String get trialActive => 'Testzeitraum aktiv';

  @override
  String get fullAccess => 'Vollzugriff auf alle Funktionen';

  @override
  String get openPremium => 'Premium und Abonnementoptionen öffnen';

  @override
  String get resetProgressTitle => 'Fortschritt zurücksetzen?';

  @override
  String get resetProgressBody =>
      'Alle Daten zu Tagen, Serie und Statistiken werden gelöscht. Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get excellent => 'Ausgezeichnet!';

  @override
  String get anotherDayFree => 'Noch ein Tag ohne Zigaretten';

  @override
  String get continueBtn => 'Weiter';

  @override
  String get newAchievement => 'NEUER ERFOLG';

  @override
  String get newLevel => 'Neues Level!';

  @override
  String get levelUpMessage => 'Weiter so — du machst das großartig!';

  @override
  String get freeFor => 'FREI SEIT';

  @override
  String get toNextLevel => 'Zum nächsten Level';

  @override
  String get keyResults => 'WICHTIGE ERGEBNISSE';

  @override
  String get progressSystem => 'FORTSCHRITTSSYSTEM';

  @override
  String get everyDayCloser => 'Jeder Tag bringt dich dem nächsten Level näher';

  @override
  String get current => 'Aktuell';

  @override
  String get nextLevel => 'Nächstes';

  @override
  String get smallSteps => 'Kleine Schritte. Große Veränderungen.';

  @override
  String get youAreFurther => 'Du bist schon weiter als gestern';

  @override
  String get madeForFuture => 'Gemacht für eine rauchfreie Zukunft';

  @override
  String get dayStreakCaption => 'Tage in Folge';

  @override
  String get cigarettesAvoidedCaption => 'vermieden';

  @override
  String get freeDaysCaption => 'rauchfreie Tage';

  @override
  String get levelLabel => 'Stufe';

  @override
  String get keepStreakAlive => 'Halte deine Serie aufrecht';

  @override
  String get failedToLoadProgress => 'Fortschritt konnte nicht geladen werden';

  @override
  String get levelTitle1 => 'Erster Atemzug';

  @override
  String get levelTitle2 => 'Keimling';

  @override
  String get levelTitle3 => 'Wachstum';

  @override
  String get levelTitle4 => 'Wurzeln';

  @override
  String get levelTitle5 => 'Stamm';

  @override
  String get levelTitle6 => 'Kraft';

  @override
  String get levelTitle7 => 'Feuer';

  @override
  String get levelTitle8 => 'Funke';

  @override
  String get levelTitle9 => 'Champion';

  @override
  String get levelTitle10 => 'Meister';

  @override
  String get levelTitle11 => 'Diamant';

  @override
  String get levelTitle12 => 'Stern';

  @override
  String get levelTitle13 => 'Rakete';

  @override
  String get levelTitle14 => 'Legende';

  @override
  String get levelTitleDefault => 'Pfad';

  @override
  String get milestone1Title => 'Beginn eines neuen Weges';

  @override
  String get milestone1Desc =>
      'Du hast bereits den ersten Schritt getan und gehst weiter voran.';

  @override
  String get milestone2Title => 'Erste Veränderungen';

  @override
  String get milestone2Desc =>
      'Der Körper passt sich allmählich an ein Leben ohne Zigaretten an.';

  @override
  String get milestone3Title => 'Neue Etappe';

  @override
  String get milestone3Desc =>
      'Allmählich bildet sich ein neuer Rhythmus ohne die Gewohnheit.';

  @override
  String get milestone4Title => 'Zuversichtlicher Fortschritt';

  @override
  String get milestone4Desc =>
      'Zwei Wochen sind ein bemerkenswerter Meilenstein auf dem Weg zu einer neuen Gewohnheit.';

  @override
  String get milestone5Title => 'Große Gewohnheit ändert sich';

  @override
  String get milestone5Desc =>
      'Ein Monat Beständigkeit ist ein ernsthaftes persönliches Ergebnis.';

  @override
  String get milestone6Title => 'Großer Meilenstein';

  @override
  String get milestone6Desc =>
      'Den Weg fortzusetzen hilft, einen neuen Lebensstil zu festigen.';

  @override
  String get milestone7Title => 'Jahr der Freiheit';

  @override
  String get milestone7Desc =>
      'Ein Jahr ohne Zigaretten ist ein großer Meilenstein auf deinem Weg.';

  @override
  String get navProgress => 'Fortschritt';

  @override
  String get more => 'Mehr';

  @override
  String get settingsSubtitle => 'Passe Puffree an dich an';

  @override
  String get sectionApp => 'App';

  @override
  String get sectionData => 'Daten';

  @override
  String get sectionAbout => 'Über die App';

  @override
  String get resetProgressSubtitle => 'Reise neu starten';

  @override
  String get premiumActiveBadge => 'AKTIV';

  @override
  String get splashCaption => 'Freiheit vom Rauchen';

  @override
  String get todayStartJourney => 'Heute beginnt deine neue Reise.';

  @override
  String realResultKeepGoing(int count, String daysWord) {
    return '$count $daysWord ist bereits ein echtes Ergebnis. Mach weiter.';
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
  String get onbTitle1 => 'Was nutzt du?';

  @override
  String get onbSubtitle1 =>
      'Wir personalisieren alles basierend auf deiner Gewohnheit.';

  @override
  String get onbTitle2 => 'Wie viel nutzt du?';

  @override
  String get onbSubtitle2 =>
      'Ehrliche Zahlen helfen uns, deinen echten Fortschritt zu berechnen.';

  @override
  String get onbTitle3 => 'Was kostet dich das?';

  @override
  String get onbSubtitle3 =>
      'Sieh, wie viel Geld du jeden Monat sparen kannst.';

  @override
  String get onbTitle4 => 'Wie fühlt sich dein Körper an?';

  @override
  String get onbSubtitle4 =>
      'Wähle die Symptome aus, die du am häufigsten bemerkst.';

  @override
  String get onbTitle5 => 'Warum möchtest du aufhören?';

  @override
  String get onbSubtitle5 =>
      'Deine Gründe bilden die Basis für den Plan, den wir für dich erstellen.';

  @override
  String get onbTitle6 => 'Dein Plan wird erstellt';

  @override
  String get onbSubtitle6 =>
      'Wir erstellen einen personalisierten Weg nur für dich.';

  @override
  String get onbTitle7 => 'Dein Plan ist fertig';

  @override
  String get onbSubtitle7 =>
      'Starte deine Reise mit einem Plan, der für dich gemacht wurde.';

  @override
  String get onbEyebrowBeforeStart => 'BEVOR WIR STARTEN';

  @override
  String get onbEyebrowStartingPoint => 'AUSGANGSPUNKT';

  @override
  String get onbEyebrowRealCost => 'ECHTE KOSTEN';

  @override
  String get onbEyebrowSelfAwareness => 'SELBSTWAHRNEHMUNG';

  @override
  String get onbEyebrowYourReason => 'DEIN GRUND';

  @override
  String get onbEyebrowPersonalization => 'PERSONALISIERUNG';

  @override
  String get onbEyebrowDone => 'DU BIST BEREIT';

  @override
  String get onbHabitCigarettesTitle => 'Zigaretten';

  @override
  String get onbHabitCigarettesSubtitle =>
      'Normale oder selbstgedrehte Zigaretten';

  @override
  String get onbHabitVapeTitle => 'Vape / Pods';

  @override
  String get onbHabitVapeSubtitle => 'E-Zigaretten und Pod-Systeme';

  @override
  String get onbPodsPerWeekLabel => 'Pods pro Woche';

  @override
  String get onbCigarettesPerDayLabel => 'Zigaretten pro Tag';

  @override
  String get onbYearsSmokedLabel => 'Jahre geraucht';

  @override
  String get onbUnitPieces => 'Stk';

  @override
  String get onbUnitYears => 'Jahre';

  @override
  String get onbAmountVapeHint =>
      'Das hilft uns, deine wöchentlichen Kosten und deinen Fortschritt zu schätzen.';

  @override
  String get onbPotentialSavingsLabel => 'Mögliche monatliche Ersparnis';

  @override
  String get onbPerMonthQuitting => 'pro Monat, wenn du aufhörst';

  @override
  String get onbPricePerPodLabel => 'Preis pro Pod';

  @override
  String get onbPricePerPackLabel => 'Preis pro Packung';

  @override
  String get onbCigarettesPerPackLabel => 'Zigaretten pro Packung';

  @override
  String get onbCurrencyLabel => 'Währung';

  @override
  String get onbSymptomBreath => 'Atemnot';

  @override
  String get onbSymptomAnxiety => 'Angst / Unruhe';

  @override
  String get onbSymptomPulse => 'Schneller oder unregelmäßiger Herzschlag';

  @override
  String get onbSymptomMorning => 'Morgendlicher Husten / Auswurf';

  @override
  String get onbSymptomCough => 'Häufiger Husten';

  @override
  String get onbBodyHint =>
      'Du kannst mehrere auswählen. Das hilft uns, uns auf das zu konzentrieren, was dir wichtig ist.';

  @override
  String get onbMotivationHealth => 'Bessere Gesundheit & Energie';

  @override
  String get onbMotivationFreedom => 'Freiheit von der Sucht';

  @override
  String get onbMotivationMoney => 'Geld sparen';

  @override
  String get onbMotivationFamily => 'Für meine Familie / Kinder';

  @override
  String get onbMotivationControl => 'Kontrolle über mein Leben zurückgewinnen';

  @override
  String get onbMotivationFuture => 'Eine gesündere Zukunft';

  @override
  String get onbSelectMultipleHint => 'Du kannst mehrere Gründe auswählen';

  @override
  String get onbStartingMapLabel => 'Deine Karte wird erstellt';

  @override
  String get onbBuildingStepSave => 'Deine Ersparnisse berechnen';

  @override
  String get onbBuildingStepGoal => 'Dein Hauptziel festlegen';

  @override
  String get onbBuildingStepScenarios => 'Persönliche Szenarien erstellen';

  @override
  String get onbBuildingStepSteps => 'Erste Schritte vorbereiten';

  @override
  String get onbBuildingHint =>
      'Das dauert normalerweise nur ein paar Sekunden.';

  @override
  String get onbPleaseWait => 'Bitte warte einen Moment…';

  @override
  String get onbCreatingPlan => 'Dein Plan wird erstellt…';

  @override
  String get onbFirst30DaysLabel => 'Erste 30 Tage';

  @override
  String get onbLessExpensesLabel => 'Weniger Ausgaben';

  @override
  String get onbSavingsPerMonth => 'Ersparnis pro Monat';

  @override
  String get onbSavingsPerYear => 'Ersparnis pro Jahr';

  @override
  String get onbPlanPersonalizedTitle => 'Dein persönlicher Plan';

  @override
  String onbPlanPersonalizedSubtitle(int motivations, int symptoms) {
    return 'Basierend auf $motivations Gründen und $symptoms Symptomen';
  }

  @override
  String get onbResultHint =>
      'Du kannst diese Zahlen später jederzeit in den Einstellungen anpassen.';

  @override
  String get onbBreathingHint => 'ATME';

  @override
  String get onbContinue => 'Weiter';

  @override
  String get onbStartJourney => 'Meine Reise starten';

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
      'Mehr Tools für deinen Weg.\nWähle den Plan, der zu dir passt.';

  @override
  String get oneMembership => 'Ein Premium-Zugang für alles';

  @override
  String get everythingIncluded => 'Alles inklusive';

  @override
  String get everythingIncludedSubtitle =>
      'Premium schaltet das volle Puffree-Erlebnis frei.';

  @override
  String get choosePlan => 'Wähle deinen Plan';

  @override
  String get choosePlanSubtitle =>
      'Du kannst deine Auswahl vor dem Kauf ändern.';

  @override
  String get featureTasks => 'Erweiterte Missionen';

  @override
  String get featureTasksSubtitle => 'Mehr Übungen und Herausforderungen';

  @override
  String get featureStats => 'Vollständige Statistiken';

  @override
  String get featureStatsSubtitle => 'Detaillierte Fortschrittseinblicke';

  @override
  String get profileEditTitle => 'Profil';

  @override
  String get profileEditTapToChangePhoto => 'Tippe auf das Foto zum Ändern';

  @override
  String get profileEditNameLabel => 'Name';

  @override
  String get profileEditNameHint => 'Namen eingeben';

  @override
  String get profileEditSaveButton => 'Änderungen speichern';

  @override
  String get profileEditErrorEmptyName => 'Bitte gib einen Namen ein';

  @override
  String get profileEditSuccessUpdated => 'Profil erfolgreich aktualisiert';

  @override
  String profileEditErrorUpdate(String error) {
    return 'Profil konnte nicht aktualisiert werden: $error';
  }

  @override
  String get authWelcomeBack => 'Willkommen zurück!';

  @override
  String get authCreateAccount => 'Konto erstellen';

  @override
  String get authResetPassword => 'Passwort zurücksetzen';

  @override
  String get authLoginSubtitle => 'Melde dich an, um deinen Weg fortzusetzen';

  @override
  String get authRegisterSubtitle => 'Starte noch heute ein rauchfreies Leben';

  @override
  String get authForgotSubtitle =>
      'Gib deine E-Mail ein, wir senden dir Anweisungen';

  @override
  String get authTabLogin => 'Anmelden';

  @override
  String get authTabRegister => 'Registrieren';

  @override
  String get authNameHint => 'Dein Name';

  @override
  String get authNameRequired => 'Gib deinen Namen ein';

  @override
  String get authEmailHint => 'E-Mail-Adresse';

  @override
  String get authEmailRequired => 'E-Mail eingeben';

  @override
  String get authEmailInvalid => 'Ungültige E-Mail';

  @override
  String get authPasswordHint => 'Passwort';

  @override
  String get authPasswordRequired => 'Passwort eingeben';

  @override
  String get authPasswordMinLength =>
      'Passwort muss mindestens 6 Zeichen haben';

  @override
  String get authConfirmPasswordHint => 'Passwort wiederholen';

  @override
  String get authPasswordsDoNotMatch => 'Passwörter stimmen nicht überein';

  @override
  String get authForgotPassword => 'Passwort vergessen?';

  @override
  String get authLoginButton => 'Anmelden';

  @override
  String get authRegisterButton => 'Registrieren';

  @override
  String get authSendLinkButton => 'Link senden';

  @override
  String get authBackToLogin => 'Zurück zur Anmeldung';

  @override
  String get authOrContinueWith => 'oder weiter mit';

  @override
  String get authGoogle => 'Google';

  @override
  String get authApple => 'Apple';

  @override
  String get authResetLinkSent =>
      'Link zum Zurücksetzen wurde an deine E-Mail gesendet!';

  @override
  String get authErrorGeneric =>
      'Etwas ist schiefgelaufen. Bitte Daten prüfen.';

  @override
  String get authErrorSocial => 'Social-Login fehlgeschlagen.';

  @override
  String get profileEditErrorPhotoNotFound =>
      'Das ausgewählte Foto konnte nicht geladen werden';

  @override
  String get profileEditErrorOpenGallery =>
      'Galerie konnte nicht geöffnet werden';

  @override
  String get profileEditErrorPickPhoto =>
      'Beim Auswählen des Fotos ist ein Fehler aufgetreten';

  @override
  String get featureMotivation => 'Persönliche Motivation';

  @override
  String get featureMotivationSubtitle => 'Begleitung auf deinem Weg';

  @override
  String get featureSupport => 'Extra-Support-Tools';

  @override
  String get featureSupportSubtitle => 'Mehr Hilfe, wenn du sie brauchst';

  @override
  String get featureNotifications => 'Smarte Erinnerungen';

  @override
  String get featureNotificationsSubtitle => 'Motivation zur richtigen Zeit';

  @override
  String get featureAds => 'Werbefrei';

  @override
  String get featureAdsSubtitle => 'Ruhiges, klares Erlebnis';

  @override
  String get planMonthly => 'Monatlich';

  @override
  String get planMonthlySubtitle => 'Flexibel ohne lange Bindung';

  @override
  String get planYearly => 'Jährlich';

  @override
  String get planYearlySubtitle => 'Bestes Preis-Leistungs-Verhältnis';

  @override
  String get planLifetime => 'Lebenslang';

  @override
  String get planLifetimeSubtitle => 'Eine Zahlung — Premium für immer';

  @override
  String get perMonth => '/ Monat';

  @override
  String get perYear => '/ Jahr';

  @override
  String get bestValue => 'BESTES ANGEBOT';

  @override
  String get oneTime => 'EINMALIG';

  @override
  String get buyMonthly => 'Premium monatlich holen';

  @override
  String get buyYearly => 'Premium jährlich holen';

  @override
  String get buyLifetime => 'Premium für immer holen';

  @override
  String get restorePurchases => 'Käufe wiederherstellen';

  @override
  String get securePurchase => 'Sicherer Kauf';

  @override
  String get cancelAnytime => 'Jederzeit kündbar';

  @override
  String get restoreAnytime => 'Käufe können wiederhergestellt werden';

  @override
  String get legalMonthly =>
      'Das Abonnement verlängert sich automatisch jeden Monat. Du kannst es in den Einstellungen von App Store oder Google Play kündigen. Der Preis wird vor der Kaufbestätigung angezeigt.';

  @override
  String get legalYearly =>
      'Das Abonnement verlängert sich automatisch jedes Jahr. Du kannst es in den Einstellungen von App Store oder Google Play kündigen. Der Preis wird vor der Kaufbestätigung angezeigt.';

  @override
  String get legalLifetime =>
      'Dies ist ein einmaliger Kauf und verlängert sich nicht automatisch. Der Preis wird vor der Kaufbestätigung angezeigt.';
}
