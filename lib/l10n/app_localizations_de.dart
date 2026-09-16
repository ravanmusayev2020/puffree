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
}
