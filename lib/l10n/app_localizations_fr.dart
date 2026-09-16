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
}
