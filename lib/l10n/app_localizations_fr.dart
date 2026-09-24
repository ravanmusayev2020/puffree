// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Puffree';

  @override
  String get tagline => 'Liberté face au tabac';

  @override
  String get today => 'Aujourd\'hui';

  @override
  String get streak => 'Série';

  @override
  String get saved => 'Économisé';

  @override
  String get avoided => 'Évités';

  @override
  String get totalDays => 'Jours totaux';

  @override
  String get dailyMotivation => 'Motivation du jour';

  @override
  String get checkIn => 'Je n\'ai pas fumé aujourd\'hui';

  @override
  String get checkedInToday => 'Enregistré aujourd\'hui';

  @override
  String get missions => 'Missions du jour';

  @override
  String completedOf(int completed, int total) {
    return 'Terminées $completed sur $total';
  }

  @override
  String get premium => 'Premium';

  @override
  String get tryFree => 'Essayer 3 jours gratuits';

  @override
  String get buyPremium => 'Acheter Premium';

  @override
  String get restore => 'Restaurer les achats';

  @override
  String get premiumHint => 'Débloquez toutes les fonctions avec Premium';

  @override
  String get settings => 'Paramètres';

  @override
  String get progress => 'Vos progrès';

  @override
  String get statistics => 'Statistiques';

  @override
  String get currentStreak => 'Série actuelle';

  @override
  String get record => 'Record';

  @override
  String get bodyChanges => 'Ce qui se passe dans votre corps';

  @override
  String get resetProgress => 'Réinitialiser les progrès';

  @override
  String get resetConfirm =>
      'Toutes les données sur les jours, la série et les statistiques seront supprimées. Cette action est irréversible.';

  @override
  String get cancel => 'Annuler';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get journalTitle => 'Journal';

  @override
  String get journalHint => 'Notez vos pensées';

  @override
  String get journalPlaceholder => 'Comment vous sentez-vous aujourd\'hui ?';

  @override
  String get save => 'Enregistrer';

  @override
  String get moodCheck => 'Comment vous sentez-vous ?';

  @override
  String get moodCheckHint =>
      'Prenez un moment pour faire le point avec vous-même.';

  @override
  String get version => 'Version';

  @override
  String get privacy => 'Politique de confidentialité';

  @override
  String get terms => 'Conditions d\'utilisation';

  @override
  String get disclaimer =>
      'Puffree est une application de motivation. Ce n\'est pas un dispositif médical et ne remplace pas un avis médical professionnel. En cas de forte dépendance à la nicotine, consultez un spécialiste.';

  @override
  String level(int number) {
    return 'Niveau $number';
  }

  @override
  String daysSmokeFree(int count) {
    return '$count jours sans cigarette';
  }

  @override
  String nextLevelProgress(int percent) {
    return '$percent% jusqu\'au niveau suivant';
  }

  @override
  String get friend => 'Ami';

  @override
  String helloName(String name) {
    return 'Bonjour, $name !';
  }

  @override
  String get pathToFreedom => 'Votre chemin vers la liberté';

  @override
  String get withoutCigs => 'sans cigarettes';

  @override
  String get iSmoked => 'J\'ai fumé';

  @override
  String get relapseTitle => 'Ce n\'est pas grave';

  @override
  String get relapseBody =>
      'Une cigarette n\'efface pas vos progrès. Apprenez de ce moment et continuez d\'avancer.';

  @override
  String get relapseDone => 'Continuer';

  @override
  String get home => 'Accueil';

  @override
  String get tasks => 'Tâches';

  @override
  String get missionBreathe => 'Respiration profonde';

  @override
  String get missionWater => 'Boire de l\'eau';

  @override
  String get missionWalk => 'Marche 10 min';

  @override
  String get missionJournal => 'Écrire une pensée';

  @override
  String get missionMeditation => 'Méditation 5 min';

  @override
  String get missionFocus => 'Focus sans téléphone';

  @override
  String get missionReflect => 'Réflexion du jour';

  @override
  String get missionHelp => 'Soutenir quelqu\'un';

  @override
  String get missionBreatheDesc =>
      'Prenez quelques respirations lentes et profondes.';

  @override
  String get missionWaterDesc => 'Buvez un verre d\'eau.';

  @override
  String get missionWalkDesc => 'Faites une marche de 10 minutes.';

  @override
  String get missionJournalDesc => 'Écrivez une pensée sur votre journée.';

  @override
  String get missionMeditationDesc => 'Prenez 5 minutes pour méditer.';

  @override
  String get missionFocusDesc => 'Passez un moment concentré sans téléphone.';

  @override
  String get missionReflectDesc =>
      'Réfléchissez à comment s\'est passée votre journée.';

  @override
  String get missionHelpDesc =>
      'Faites quelque chose de gentil pour soutenir quelqu\'un.';

  @override
  String get sosTitle => 'Support SOS';

  @override
  String get sosTimer => 'Minuteur d\'envie';

  @override
  String get sosBreathe => 'Respirer';

  @override
  String get sosChat => 'Parler';

  @override
  String get sosStart => 'Commencer';

  @override
  String get sosDone => 'Terminé';

  @override
  String get sosManaged => 'Vous avez géré l\'envie !';

  @override
  String get sosWon => 'Vous avez gagné !';

  @override
  String get sosLeft => 'restant';

  @override
  String get sosTip1 => 'Prenez quelques respirations lentes et profondes.';

  @override
  String get sosTip2 => 'Buvez un verre d\'eau.';

  @override
  String get sosTip3 => 'Changez de place.';

  @override
  String get sosTip4 => 'Occupez vos mains.';

  @override
  String get sosTip5 => 'Pensez à pourquoi vous avez commencé.';

  @override
  String get sosTip6 => 'Donnez à l\'envie quelques minutes pour passer.';

  @override
  String get breatheIn => 'Inspirez';

  @override
  String get breatheHold => 'Retenez';

  @override
  String get breatheOut => 'Expirez';

  @override
  String get breatheHint => 'Suivez le cercle et respirez lentement.';

  @override
  String get breatheStart => 'Commencer à respirer';

  @override
  String get chatPick => 'Que ressentez-vous en ce moment ?';

  @override
  String get chatCraving => 'J\'ai une envie';

  @override
  String get chatStress => 'Je suis stressé';

  @override
  String get chatBoredom => 'Je m\'ennuie';

  @override
  String get chatNeedWalk => 'J\'ai besoin de marcher';

  @override
  String get chatNeedWater => 'J\'ai besoin d\'eau';

  @override
  String get chatNeedBreathe => 'J\'ai besoin de respirer';

  @override
  String get chatIntroStress =>
      'Il semble que vous ressentiez du stress. Surmontons ce moment ensemble.';

  @override
  String get chatIntroBoredom =>
      'L\'ennui peut rendre l\'envie plus forte. Trouvons autre chose sur quoi vous concentrer.';

  @override
  String get chatIntroCraving =>
      'L\'envie peut être intense, mais elle passera. Prenons-la moment par moment.';

  @override
  String get chatReplyStress =>
      'Essayez de prendre quelques respirations lentes et accordez-vous une courte pause. Vous n\'êtes pas obligé d\'agir sur l\'envie.';

  @override
  String get chatReplyBoredom =>
      'Changeons d\'environnement. Faites une courte marche, buvez de l\'eau ou occupez vos mains.';

  @override
  String get chatReplyCraving =>
      'Attendez quelques minutes avant de prendre une décision. Buvez de l\'eau, respirez lentement et rappelez-vous pourquoi vous avez commencé.';

  @override
  String get onboardingTitle1 => 'Respirez librement';

  @override
  String get onboardingDesc1 =>
      'Puffree vous aide à arrêter de fumer étape par étape — sans pression et avec du soutien.';

  @override
  String get onboardingTitle2 => 'Niveaux et progrès';

  @override
  String get onboardingDesc2 =>
      'Chaque jour sans cigarette débloque un nouveau niveau. Observez votre force et votre santé grandir.';

  @override
  String get onboardingTitle3 => 'Soutien quotidien';

  @override
  String get onboardingDesc3 =>
      'Motivation, missions et suivi des progrès. Vous n\'êtes pas seul sur ce chemin.';

  @override
  String get aboutYou => 'Un peu sur vous';

  @override
  String get aboutYouDesc =>
      'Cela aide à calculer l\'argent et les cigarettes économisés';

  @override
  String get cigsPerDay => 'Cigarettes par jour avant';

  @override
  String get pricePerPack => 'Prix du paquet';

  @override
  String get startJourney => 'Commencer le voyage';

  @override
  String get next => 'Suivant';

  @override
  String get skip => 'Passer';

  @override
  String get youGotThis => 'Vous y arriverez. Un moment à la fois.';

  @override
  String get waitTheWave => 'Surmontez la vague d\'envie';

  @override
  String get youPassedThis => 'Vous avez passé ce moment';

  @override
  String get greatJob => 'Excellent travail. Vous avez le contrôle.';

  @override
  String get giveYourselfMinutes =>
      'Accordez-vous quelques minutes et concentrez-vous sur le moment présent.';

  @override
  String get keepGoing => 'CONTINUEZ';

  @override
  String get done => 'TERMINÉ';

  @override
  String get breatheSlowly => 'Respirez lentement';

  @override
  String get followTheCircle => 'Suivez le rythme du cercle';

  @override
  String get chooseWhatFits =>
      'Choisissez ce qui correspond le mieux à ce que vous ressentez maintenant.';

  @override
  String get yourResults => 'Vos résultats';

  @override
  String get whatChanged => 'Ce qui a déjà changé grâce à vous';

  @override
  String get recoveryPath => 'Chemin de récupération';

  @override
  String get everyMilestone => 'Chaque étape est un pas de plus en avant';

  @override
  String get levelProgress => 'Progrès vers le niveau suivant';

  @override
  String get yourPathContinues => 'Votre chemin continue';

  @override
  String get daysWordOne => 'jour';

  @override
  String get daysWordFew => 'jours';

  @override
  String get daysWordMany => 'jours';

  @override
  String get momentum => 'ÉLAN';

  @override
  String missionsLeft(int count) {
    return '$count missions restantes';
  }

  @override
  String get allMissionsDone => 'Toutes les missions terminées';

  @override
  String get dayComplete => 'Journée terminée';

  @override
  String get keepGoingShort => 'Continuez';

  @override
  String get inProgress => 'EN COURS';

  @override
  String get complete => 'TERMINÉ';

  @override
  String get yourPlanToday => 'Votre plan pour aujourd\'hui';

  @override
  String get everythingDone => 'Tout est terminé';

  @override
  String get theme => 'Thème';

  @override
  String get language => 'Langue';

  @override
  String get notifications => 'Notifications';

  @override
  String get notificationsHint => 'Rappels et motivation';

  @override
  String get data => 'Données';

  @override
  String get aboutApp => 'À propos de l\'application';

  @override
  String get appTheme => 'Thème de l\'application';

  @override
  String get chooseTheme => 'Choisissez l\'apparence de Puffree.';

  @override
  String get systemTheme => 'Système';

  @override
  String get systemThemeDesc => 'Suivre les paramètres du téléphone';

  @override
  String get lightTheme => 'Clair';

  @override
  String get lightThemeDesc => 'Toujours utiliser le thème clair';

  @override
  String get darkTheme => 'Sombre';

  @override
  String get darkThemeDesc => 'Toujours utiliser le thème sombre';

  @override
  String get premiumActive => 'Premium actif';

  @override
  String get trialActive => 'Période d\'essai active';

  @override
  String get fullAccess => 'Accès complet à toutes les fonctions';

  @override
  String get openPremium => 'Ouvrir Premium et les options d\'abonnement';

  @override
  String get resetProgressTitle => 'Réinitialiser les progrès ?';

  @override
  String get resetProgressBody =>
      'Toutes les données sur les jours, la série et les statistiques seront supprimées. Cette action est irréversible.';

  @override
  String get excellent => 'Excellent !';

  @override
  String get anotherDayFree => 'Encore un jour sans cigarette';

  @override
  String get continueBtn => 'Continuer';

  @override
  String get newAchievement => 'NOUVELLE RÉUSSITE';

  @override
  String get newLevel => 'Nouveau niveau !';

  @override
  String get levelUpMessage => 'Continuez — vous vous en sortez très bien !';

  @override
  String get freeFor => 'LIBRE DEPUIS';

  @override
  String get toNextLevel => 'Jusqu\'au niveau suivant';

  @override
  String get keyResults => 'RÉSULTATS CLÉS';

  @override
  String get progressSystem => 'SYSTÈME DE PROGRÈS';

  @override
  String get everyDayCloser => 'Chaque jour vous rapproche du niveau suivant';

  @override
  String get current => 'Actuel';

  @override
  String get nextLevel => 'Suivant';

  @override
  String get smallSteps => 'Petits pas. Grands changements.';

  @override
  String get youAreFurther => 'Vous êtes déjà plus loin qu\'hier';

  @override
  String get madeForFuture => 'Conçu pour un avenir sans tabac';

  @override
  String get dayStreakCaption => 'jours d\'affilée';

  @override
  String get cigarettesAvoidedCaption => 'évités';

  @override
  String get freeDaysCaption => 'jours de liberté';

  @override
  String get levelLabel => 'Niveau';

  @override
  String get keepStreakAlive => 'Garde ta série active';

  @override
  String get failedToLoadProgress => 'Échec du chargement du progrès';

  @override
  String get levelTitle1 => 'Premier Souffle';

  @override
  String get levelTitle2 => 'Pousse';

  @override
  String get levelTitle3 => 'Croissance';

  @override
  String get levelTitle4 => 'Racines';

  @override
  String get levelTitle5 => 'Tronc';

  @override
  String get levelTitle6 => 'Force';

  @override
  String get levelTitle7 => 'Feu';

  @override
  String get levelTitle8 => 'Étincelle';

  @override
  String get levelTitle9 => 'Champion';

  @override
  String get levelTitle10 => 'Maître';

  @override
  String get levelTitle11 => 'Diamant';

  @override
  String get levelTitle12 => 'Étoile';

  @override
  String get levelTitle13 => 'Fusée';

  @override
  String get levelTitle14 => 'Légende';

  @override
  String get levelTitleDefault => 'Chemin';

  @override
  String get milestone1Title => 'Début d\'un nouveau chemin';

  @override
  String get milestone1Desc =>
      'Vous avez déjà fait le premier pas et continuez à avancer.';

  @override
  String get milestone2Title => 'Premiers changements';

  @override
  String get milestone2Desc =>
      'Le corps s\'adapte progressivement à la vie sans cigarettes.';

  @override
  String get milestone3Title => 'Nouvelle étape';

  @override
  String get milestone3Desc =>
      'Un nouveau rythme sans l\'habitude se forme progressivement.';

  @override
  String get milestone4Title => 'Progrès confiant';

  @override
  String get milestone4Desc =>
      'Deux semaines sont un jalon notable sur le chemin d\'une nouvelle habitude.';

  @override
  String get milestone5Title => 'L\'habitude change';

  @override
  String get milestone5Desc =>
      'Un mois de régularité est un résultat personnel sérieux.';

  @override
  String get milestone6Title => 'Grand cap';

  @override
  String get milestone6Desc =>
      'Continuer le chemin aide à consolider un nouveau mode de vie.';

  @override
  String get milestone7Title => 'Année de liberté';

  @override
  String get milestone7Desc =>
      'Un an sans cigarettes est un jalon majeur sur votre chemin.';

  @override
  String get navProgress => 'Progrès';

  @override
  String get more => 'Plus';

  @override
  String get settingsSubtitle => 'Personnalise Puffree selon tes goûts';

  @override
  String get sectionApp => 'Application';

  @override
  String get sectionData => 'Données';

  @override
  String get sectionAbout => 'À propos';

  @override
  String get resetProgressSubtitle => 'Recommencer le parcours';

  @override
  String get premiumActiveBadge => 'ACTIF';

  @override
  String get splashCaption => 'Liberté face au tabac';

  @override
  String get todayStartJourney =>
      'Aujourd\'hui est le début de votre nouveau voyage.';

  @override
  String realResultKeepGoing(int count, String daysWord) {
    return '$count $daysWord est déjà un résultat réel. Continuez.';
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
  String get onbTitle1 => 'Que consommes-tu ?';

  @override
  String get onbSubtitle1 =>
      'Nous personnaliserons tout en fonction de ton habitude.';

  @override
  String get onbTitle2 => 'Combien en consommes-tu ?';

  @override
  String get onbSubtitle2 =>
      'Des chiffres honnêtes nous aident à calculer tes vrais progrès.';

  @override
  String get onbTitle3 => 'Combien cela te coûte-t-il ?';

  @override
  String get onbSubtitle3 =>
      'Découvre combien d’argent tu peux économiser chaque mois.';

  @override
  String get onbTitle4 => 'Comment se sent ton corps ?';

  @override
  String get onbSubtitle4 =>
      'Sélectionne les symptômes que tu remarques le plus souvent.';

  @override
  String get onbTitle5 => 'Pourquoi veux-tu arrêter ?';

  @override
  String get onbSubtitle5 =>
      'Tes raisons guideront le plan que nous construisons pour toi.';

  @override
  String get onbTitle6 => 'Création de ton plan';

  @override
  String get onbSubtitle6 =>
      'Nous créons un parcours personnalisé rien que pour toi.';

  @override
  String get onbTitle7 => 'Ton plan est prêt';

  @override
  String get onbSubtitle7 =>
      'Commence ton parcours avec un plan conçu pour toi.';

  @override
  String get onbEyebrowBeforeStart => 'AVANT DE COMMENCER';

  @override
  String get onbEyebrowStartingPoint => 'POINT DE DÉPART';

  @override
  String get onbEyebrowRealCost => 'COÛT RÉEL';

  @override
  String get onbEyebrowSelfAwareness => 'CONSCIENCE DE SOI';

  @override
  String get onbEyebrowYourReason => 'TA RAISON';

  @override
  String get onbEyebrowPersonalization => 'PERSONNALISATION';

  @override
  String get onbEyebrowDone => 'TU ES PRÊT';

  @override
  String get onbHabitCigarettesTitle => 'Cigarettes';

  @override
  String get onbHabitCigarettesSubtitle => 'Cigarettes classiques ou roulées';

  @override
  String get onbHabitVapeTitle => 'Vape / Pods';

  @override
  String get onbHabitVapeSubtitle =>
      'Cigarettes électroniques et systèmes à pods';

  @override
  String get onbPodsPerWeekLabel => 'Pods par semaine';

  @override
  String get onbCigarettesPerDayLabel => 'Cigarettes par jour';

  @override
  String get onbYearsSmokedLabel => 'Années de tabagisme';

  @override
  String get onbUnitPieces => 'pcs';

  @override
  String get onbUnitYears => 'ans';

  @override
  String get onbAmountVapeHint =>
      'Cela nous aide à estimer ton coût hebdomadaire et tes progrès.';

  @override
  String get onbPotentialSavingsLabel => 'Économies mensuelles potentielles';

  @override
  String get onbPerMonthQuitting => 'par mois lorsque tu arrêtes';

  @override
  String get onbPricePerPodLabel => 'Prix par pod';

  @override
  String get onbPricePerPackLabel => 'Prix par paquet';

  @override
  String get onbCigarettesPerPackLabel => 'Cigarettes par paquet';

  @override
  String get onbCurrencyLabel => 'Devise';

  @override
  String get onbSymptomBreath => 'Essoufflement';

  @override
  String get onbSymptomAnxiety => 'Anxiété / agitation';

  @override
  String get onbSymptomPulse => 'Rythme cardiaque rapide ou irrégulier';

  @override
  String get onbSymptomMorning => 'Toux matinale / expectorations';

  @override
  String get onbSymptomCough => 'Toux fréquente';

  @override
  String get onbBodyHint =>
      'Tu peux en sélectionner plusieurs. Cela nous aide à nous concentrer sur ce qui compte pour toi.';

  @override
  String get onbMotivationHealth => 'Meilleure santé et énergie';

  @override
  String get onbMotivationFreedom => 'Liberté face à l’addiction';

  @override
  String get onbMotivationMoney => 'Économiser de l’argent';

  @override
  String get onbMotivationFamily => 'Pour ma famille / mes enfants';

  @override
  String get onbMotivationControl => 'Reprendre le contrôle de ma vie';

  @override
  String get onbMotivationFuture => 'Un avenir plus sain';

  @override
  String get onbSelectMultipleHint => 'Tu peux sélectionner plusieurs raisons';

  @override
  String get onbStartingMapLabel => 'Création de ta carte';

  @override
  String get onbBuildingStepSave => 'Calcul de tes économies';

  @override
  String get onbBuildingStepGoal => 'Définition de ton objectif principal';

  @override
  String get onbBuildingStepScenarios => 'Création de scénarios personnels';

  @override
  String get onbBuildingStepSteps => 'Préparation des premiers pas';

  @override
  String get onbBuildingHint =>
      'Cela ne prend généralement que quelques secondes.';

  @override
  String get onbPleaseWait => 'Merci de patienter un instant…';

  @override
  String get onbCreatingPlan => 'Création de ton plan…';

  @override
  String get onbFirst30DaysLabel => 'Premiers 30 jours';

  @override
  String get onbLessExpensesLabel => 'Moins de dépenses';

  @override
  String get onbSavingsPerMonth => 'Économisé par mois';

  @override
  String get onbSavingsPerYear => 'Économisé par an';

  @override
  String get onbPlanPersonalizedTitle => 'Ton plan personnalisé';

  @override
  String onbPlanPersonalizedSubtitle(int motivations, int symptoms) {
    return 'Basé sur $motivations raisons et $symptoms symptômes';
  }

  @override
  String get onbResultHint =>
      'Tu pourras toujours ajuster ces chiffres plus tard dans les paramètres.';

  @override
  String get onbBreathingHint => 'RESPIRER';

  @override
  String get onbContinue => 'Continuer';

  @override
  String get onbStartJourney => 'Commencer mon parcours';

  @override
  String get onboardingHabitTitle => 'Prêt à reprendre le contrôle ?';

  @override
  String get onboardingHabitSubtitle =>
      'Commençons par comprendre ton habitude. Pas de longs formulaires — quelques réponses précises, et Puffree construira ton parcours.';

  @override
  String get onboardingAmountTitle => 'Décris ta journée type';

  @override
  String get onboardingAmountSubtitle =>
      'Ce n’est pas pour te juger. C’est le point de départ à partir duquel nous mesurerons les progrès.';

  @override
  String get onboardingMoneyTitle => 'Combien l’habitude te prend-elle ?';

  @override
  String get onboardingMoneySubtitle =>
      'Le prix change immédiatement à l’écran — tu vois non un chiffre abstrait, mais le coût réel de l’habitude.';

  @override
  String get onboardingBodyTitle => 'Que remarques-tu en toi ?';

  @override
  String get onboardingBodySubtitle =>
      'Coche ce qui t’arrive. Tu peux en choisir plusieurs ou aucune.';

  @override
  String get onboardingMotivationTitle => 'Pour quoi le fais-tu ?';

  @override
  String get onboardingMotivationSubtitle =>
      'Cela deviendra ton ancrage personnel. Puffree te ramènera à cette raison au bon moment.';

  @override
  String get onboardingBuildingTitle => 'Construction de ton parcours';

  @override
  String get onboardingBuildingSubtitle =>
      'Pas un diagnostic médical ni la promesse d’une journée parfaite. Juste ton point de départ et des étapes claires.';

  @override
  String get onboardingResultTitle =>
      'Ton premier écran de progrès est déjà là';

  @override
  String get onboardingResultSubtitle =>
      'Nous enregistrons les données de départ sur l’appareil et les transformons en progrès mesurable.';

  @override
  String get onboardingEyebrowBeforeStart => 'AVANT DE COMMENCER';

  @override
  String get onboardingEyebrowStartPoint => 'TON POINT DE DÉPART';

  @override
  String get onboardingEyebrowRealCost => 'LE VRAI COÛT';

  @override
  String get onboardingEyebrowSelfFeeling => 'COMMENT TU TE SENS';

  @override
  String get onboardingEyebrowYourReason => 'TA RAISON';

  @override
  String get onboardingEyebrowPersonalization => 'PERSONNALISATION';

  @override
  String get onboardingEyebrowDone => 'PRÊT';

  @override
  String get onboardingCigarettesChoice => 'Je fume des cigarettes';

  @override
  String get onboardingCigarettesChoiceSubtitle =>
      'Le scénario principal de Puffree';

  @override
  String get onboardingVapeChoice => 'J’utilise une cigarette électronique';

  @override
  String get onboardingVapeChoiceSubtitle =>
      'Nous garderons ce choix dans ton profil';

  @override
  String get onboardingPodsPerWeek => 'Pods / jetables par semaine';

  @override
  String get onboardingUnitPcs => 'pcs';

  @override
  String get onboardingVapeHint =>
      'Plus tard, le profil Puffree pourra séparer les scénarios cigarettes et vape sans perdre l’historique.';

  @override
  String get onboardingCigarettesPerDay => 'Cigarettes par jour';

  @override
  String get onboardingYearsSmoked => 'Depuis combien d’années';

  @override
  String get onboardingUnitYears => 'ans';

  @override
  String get onboardingPricePerPod => 'Prix d’un pod';

  @override
  String get onboardingPricePerPack => 'Prix du paquet';

  @override
  String get onboardingCigarettesPerPack => 'Cigarettes par paquet';

  @override
  String get onboardingPotentialSavings => 'Économies potentielles';

  @override
  String get onboardingPerMonthIfQuit => 'par mois si tu arrêtes l’habitude';

  @override
  String get onboardingCurrency => 'Devise';

  @override
  String get onboardingSymptomBreath =>
      'Je sens que la respiration est devenue plus difficile';

  @override
  String get onboardingSymptomAnxiety => 'Je ressens parfois une forte anxiété';

  @override
  String get onboardingSymptomPulse => 'Je remarque un pouls accéléré';

  @override
  String get onboardingSymptomMorning =>
      'J’ai particulièrement envie de la première cigarette le matin';

  @override
  String get onboardingSymptomCough => 'J’ai une toux matinale';

  @override
  String get onboardingBodyHint =>
      'C’est une auto-description, pas un diagnostic. Si les symptômes t’inquiètent, mieux vaut en parler à un médecin.';

  @override
  String get onboardingMotivationHealth =>
      'Je veux mieux prendre soin de ma santé';

  @override
  String get onboardingMotivationFreedom => 'Je veux me sentir plus libre';

  @override
  String get onboardingMotivationMoney =>
      'Je veux arrêter de dépenser de l’argent pour ça';

  @override
  String get onboardingMotivationFamily =>
      'Je veux moins dépendre de l’habitude près de mes proches';

  @override
  String get onboardingMotivationControl =>
      'Je veux retrouver un sentiment de contrôle';

  @override
  String get onboardingMotivationFuture => 'Je veux le faire pour mon avenir';

  @override
  String get onboardingCanSelectSeveral => 'Tu peux en choisir plusieurs';

  @override
  String get onboardingYourStartCard => 'ta carte de départ';

  @override
  String get onboardingStepSaveAnswers => 'Enregistrement de tes réponses';

  @override
  String get onboardingStepFinancialGoal => 'Calcul de l’objectif financier';

  @override
  String get onboardingStepCravingScenarios => 'Création des scénarios d’envie';

  @override
  String get onboardingStepFirstSteps => 'Préparation des premières étapes';

  @override
  String get onboardingBuildingHint =>
      'Nous ne promettons volontairement pas de « régénération des poumons en X heures » — Puffree montre des choses mesurables et sépare le fait de la motivation.';

  @override
  String get onboardingSavingsPerMonth => 'économies / mois';

  @override
  String get onboardingSavingsPerYear => 'économies / an';

  @override
  String get onboardingResultHint =>
      'Ces chiffres sont un calcul basé sur tes réponses, pas une promesse de résultats. Le vrai progrès dépend de ton comportement.';

  @override
  String get onboardingFirst30Days => 'Premiers 30 jours';

  @override
  String get onboardingLessSpendMoreControl =>
      'moins de dépenses → plus de contrôle';

  @override
  String get onboardingPlanPersonalized => 'Plan personnalisé';

  @override
  String onboardingMotivationsCount(int count) {
    return '$count motivations personnelles';
  }

  @override
  String onboardingSymptomsCount(int count) {
    return '$count états notés';
  }

  @override
  String get onboardingTakeFirstStep => 'fais le premier pas';

  @override
  String get onboardingPleaseWait => 'Veuillez patienter quelques secondes…';

  @override
  String get onboardingCreatingPlan => 'Création du plan…';

  @override
  String get onboardingStartMyJourney => 'Commencer mon parcours';

  @override
  String get onboardingContinue => 'Continuer';

  @override
  String get premiumTitle => 'Puffree Premium';

  @override
  String get premiumSubtitle =>
      'Plus d\'outils pour votre parcours.\nChoisissez le forfait qui vous convient.';

  @override
  String get oneMembership => 'Un accès Premium pour tout';

  @override
  String get everythingIncluded => 'Tout inclus';

  @override
  String get everythingIncludedSubtitle =>
      'Premium débloque l\'expérience complète de Puffree.';

  @override
  String get choosePlan => 'Choisissez votre forfait';

  @override
  String get choosePlanSubtitle =>
      'Vous pouvez modifier votre choix avant l\'achat.';

  @override
  String get featureTasks => 'Missions étendues';

  @override
  String get featureTasksSubtitle => 'Plus de pratiques et de défis';

  @override
  String get featureStats => 'Statistiques complètes';

  @override
  String get featureStatsSubtitle => 'Aperçus détaillés de la progression';

  @override
  String get profileEditTitle => 'Profil';

  @override
  String get profileEditTapToChangePhoto =>
      'Appuyez sur la photo pour la modifier';

  @override
  String get profileEditNameLabel => 'Nom';

  @override
  String get profileEditNameHint => 'Entrez votre nom';

  @override
  String get profileEditSaveButton => 'Enregistrer les modifications';

  @override
  String get profileEditErrorEmptyName => 'Veuillez entrer un nom';

  @override
  String get profileEditSuccessUpdated => 'Profil mis à jour avec succès';

  @override
  String profileEditErrorUpdate(String error) {
    return 'Échec de la mise à jour du profil : $error';
  }

  @override
  String get authWelcomeBack => 'Bon retour !';

  @override
  String get authCreateAccount => 'Créer un compte';

  @override
  String get authResetPassword => 'Réinitialiser le mot de passe';

  @override
  String get authLoginSubtitle =>
      'Connectez-vous pour continuer votre parcours';

  @override
  String get authRegisterSubtitle =>
      'Commencez une vie sans tabac dès aujourd\'hui';

  @override
  String get authForgotSubtitle =>
      'Entrez votre email, nous vous enverrons les instructions';

  @override
  String get authTabLogin => 'Connexion';

  @override
  String get authTabRegister => 'Inscription';

  @override
  String get authNameHint => 'Votre nom';

  @override
  String get authNameRequired => 'Entrez votre nom';

  @override
  String get authEmailHint => 'Adresse e-mail';

  @override
  String get authEmailRequired => 'Entrez l\'e-mail';

  @override
  String get authEmailInvalid => 'E-mail invalide';

  @override
  String get authPasswordHint => 'Mot de passe';

  @override
  String get authPasswordRequired => 'Entrez le mot de passe';

  @override
  String get authPasswordMinLength =>
      'Le mot de passe doit contenir au moins 6 caractères';

  @override
  String get authConfirmPasswordHint => 'Confirmez le mot de passe';

  @override
  String get authPasswordsDoNotMatch =>
      'Les mots de passe ne correspondent pas';

  @override
  String get authForgotPassword => 'Mot de passe oublié ?';

  @override
  String get authLoginButton => 'Se connecter';

  @override
  String get authRegisterButton => 'S\'inscrire';

  @override
  String get authSendLinkButton => 'Envoyer le lien';

  @override
  String get authBackToLogin => 'Retour à la connexion';

  @override
  String get authOrContinueWith => 'ou continuer avec';

  @override
  String get authGoogle => 'Google';

  @override
  String get authApple => 'Apple';

  @override
  String get authResetLinkSent =>
      'Lien de réinitialisation envoyé à votre e-mail !';

  @override
  String get authErrorGeneric =>
      'Une erreur s\'est produite. Vérifiez vos informations.';

  @override
  String get authErrorSocial => 'Échec de la connexion sociale.';

  @override
  String get profileEditErrorPhotoNotFound =>
      'Impossible d\'obtenir la photo sélectionnée';

  @override
  String get profileEditErrorOpenGallery => 'Impossible d\'ouvrir la galerie';

  @override
  String get profileEditErrorPickPhoto =>
      'Une erreur s\'est produite lors de la sélection de la photo';

  @override
  String get featureMotivation => 'Motivation personnelle';

  @override
  String get featureMotivationSubtitle => 'Guidance pour votre parcours';

  @override
  String get featureSupport => 'Outils de soutien supplémentaires';

  @override
  String get featureSupportSubtitle => 'Plus d\'aide quand vous en avez besoin';

  @override
  String get featureNotifications => 'Rappels intelligents';

  @override
  String get featureNotificationsSubtitle => 'Motivation au bon moment';

  @override
  String get featureAds => 'Sans publicité';

  @override
  String get featureAdsSubtitle => 'Une expérience calme et épurée';

  @override
  String get planMonthly => 'Mensuel';

  @override
  String get planMonthlySubtitle => 'Flexible, sans long engagement';

  @override
  String get planYearly => 'Annuel';

  @override
  String get planYearlySubtitle => 'Meilleur rapport qualité-prix';

  @override
  String get planLifetime => 'À vie';

  @override
  String get planLifetimeSubtitle => 'Un paiement — Premium pour toujours';

  @override
  String get perMonth => '/ mois';

  @override
  String get perYear => '/ an';

  @override
  String get bestValue => 'MEILLEURE OFFRE';

  @override
  String get oneTime => 'UNIQUE';

  @override
  String get buyMonthly => 'Obtenir Premium mensuel';

  @override
  String get buyYearly => 'Obtenir Premium annuel';

  @override
  String get buyLifetime => 'Obtenir Premium à vie';

  @override
  String get restorePurchases => 'Restaurer les achats';

  @override
  String get securePurchase => 'Achat sécurisé';

  @override
  String get cancelAnytime => 'Annulez à tout moment';

  @override
  String get restoreAnytime => 'Les achats peuvent être restaurés';

  @override
  String get legalMonthly =>
      'L\'abonnement se renouvelle automatiquement chaque mois. Vous pouvez l\'annuler dans les paramètres de l\'App Store ou de Google Play. Le prix est affiché avant la confirmation d\'achat.';

  @override
  String get legalYearly =>
      'L\'abonnement se renouvelle automatiquement chaque année. Vous pouvez l\'annuler dans les paramètres de l\'App Store ou de Google Play. Le prix est affiché avant la confirmation d\'achat.';

  @override
  String get legalLifetime =>
      'Il s\'agit d\'un achat unique qui ne se renouvelle pas automatiquement. Le prix est affiché avant la confirmation d\'achat.';
}
