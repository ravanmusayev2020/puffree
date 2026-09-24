// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appName => 'Puffree';

  @override
  String get tagline => 'Libertà dal fumo';

  @override
  String get today => 'Oggi';

  @override
  String get streak => 'Serie';

  @override
  String get saved => 'Risparmiato';

  @override
  String get avoided => 'Evitate';

  @override
  String get totalDays => 'Giorni totali';

  @override
  String get dailyMotivation => 'Motivazione del giorno';

  @override
  String get checkIn => 'Oggi non ho fumato';

  @override
  String get checkedInToday => 'Check-in fatto oggi';

  @override
  String get missions => 'Missioni del giorno';

  @override
  String completedOf(int completed, int total) {
    return 'Completate $completed di $total';
  }

  @override
  String get premium => 'Premium';

  @override
  String get tryFree => 'Prova 3 giorni gratis';

  @override
  String get buyPremium => 'Acquista Premium';

  @override
  String get restore => 'Ripristina acquisti';

  @override
  String get premiumHint => 'Sblocca tutte le funzioni con Premium';

  @override
  String get settings => 'Impostazioni';

  @override
  String get progress => 'I tuoi progressi';

  @override
  String get statistics => 'Statistiche';

  @override
  String get currentStreak => 'Serie attuale';

  @override
  String get record => 'Record';

  @override
  String get bodyChanges => 'Cosa succede al tuo corpo';

  @override
  String get resetProgress => 'Reimposta progressi';

  @override
  String get resetConfirm =>
      'Tutti i dati su giorni, serie e statistiche verranno eliminati. Questa azione non può essere annullata.';

  @override
  String get cancel => 'Annulla';

  @override
  String get reset => 'Reimposta';

  @override
  String get journalTitle => 'Diario';

  @override
  String get journalHint => 'Scrivi i tuoi pensieri';

  @override
  String get journalPlaceholder => 'Come ti senti oggi?';

  @override
  String get save => 'Salva';

  @override
  String get moodCheck => 'Come ti senti?';

  @override
  String get moodCheckHint => 'Prenditi un momento per ascoltarti.';

  @override
  String get version => 'Versione';

  @override
  String get privacy => 'Informativa sulla privacy';

  @override
  String get terms => 'Termini di utilizzo';

  @override
  String get disclaimer =>
      'Puffree è un\'app di motivazione. Non è un dispositivo medico e non sostituisce il consiglio di un professionista. Se hai una forte dipendenza da nicotina, consulta uno specialista.';

  @override
  String level(int number) {
    return 'Livello $number';
  }

  @override
  String daysSmokeFree(int count) {
    return '$count giorni senza sigarette';
  }

  @override
  String nextLevelProgress(int percent) {
    return '$percent% al livello successivo';
  }

  @override
  String get friend => 'Amico';

  @override
  String helloName(String name) {
    return 'Ciao, $name!';
  }

  @override
  String get pathToFreedom => 'Il tuo percorso verso la libertà';

  @override
  String get withoutCigs => 'senza sigarette';

  @override
  String get iSmoked => 'Ho fumato';

  @override
  String get relapseTitle => 'Va tutto bene';

  @override
  String get relapseBody =>
      'Una sigaretta non cancella i tuoi progressi. Impara da questo momento e continua ad andare avanti.';

  @override
  String get relapseDone => 'Continua';

  @override
  String get home => 'Home';

  @override
  String get tasks => 'Compiti';

  @override
  String get missionBreathe => 'Respiro profondo';

  @override
  String get missionWater => 'Bevi acqua';

  @override
  String get missionWalk => 'Cammina 10 min';

  @override
  String get missionJournal => 'Scrivi un pensiero';

  @override
  String get missionMeditation => 'Meditazione 5 min';

  @override
  String get missionFocus => 'Focus senza telefono';

  @override
  String get missionReflect => 'Riflessione del giorno';

  @override
  String get missionHelp => 'Sostieni qualcuno';

  @override
  String get missionBreatheDesc => 'Fai alcuni respiri lenti e profondi.';

  @override
  String get missionWaterDesc => 'Bevi un bicchiere d\'acqua.';

  @override
  String get missionWalkDesc => 'Fai una camminata di 10 minuti.';

  @override
  String get missionJournalDesc => 'Scrivi un pensiero sulla tua giornata.';

  @override
  String get missionMeditationDesc => 'Dedica 5 minuti alla meditazione.';

  @override
  String get missionFocusDesc => 'Passa del tempo concentrato senza telefono.';

  @override
  String get missionReflectDesc => 'Pensa a come è andata la tua giornata.';

  @override
  String get missionHelpDesc =>
      'Fai qualcosa di gentile per sostenere qualcuno.';

  @override
  String get sosTitle => 'Supporto SOS';

  @override
  String get sosTimer => 'Timer voglia';

  @override
  String get sosBreathe => 'Respira';

  @override
  String get sosChat => 'Parla';

  @override
  String get sosStart => 'Inizia';

  @override
  String get sosDone => 'Fatto';

  @override
  String get sosManaged => 'Hai gestito la voglia!';

  @override
  String get sosWon => 'Hai vinto!';

  @override
  String get sosLeft => 'rimasti';

  @override
  String get sosTip1 => 'Fai alcuni respiri lenti e profondi.';

  @override
  String get sosTip2 => 'Bevi un bicchiere d\'acqua.';

  @override
  String get sosTip3 => 'Spostati in un altro posto.';

  @override
  String get sosTip4 => 'Tieni le mani occupate.';

  @override
  String get sosTip5 => 'Ricorda perché hai iniziato.';

  @override
  String get sosTip6 => 'Dai alla voglia qualche minuto per passare.';

  @override
  String get breatheIn => 'Inspira';

  @override
  String get breatheHold => 'Trattieni';

  @override
  String get breatheOut => 'Espira';

  @override
  String get breatheHint => 'Segui il cerchio e respira lentamente.';

  @override
  String get breatheStart => 'Inizia a respirare';

  @override
  String get chatPick => 'Cosa stai provando adesso?';

  @override
  String get chatCraving => 'Ho una voglia';

  @override
  String get chatStress => 'Sono stressato';

  @override
  String get chatBoredom => 'Mi annoio';

  @override
  String get chatNeedWalk => 'Ho bisogno di camminare';

  @override
  String get chatNeedWater => 'Ho bisogno di acqua';

  @override
  String get chatNeedBreathe => 'Ho bisogno di respirare';

  @override
  String get chatIntroStress =>
      'Sembra che tu stia sentendo stress. Affrontiamo questo momento insieme.';

  @override
  String get chatIntroBoredom =>
      'La noia può rendere la voglia più forte. Troviamo qualcos\'altro su cui concentrarci.';

  @override
  String get chatIntroCraving =>
      'La voglia può essere intensa, ma passerà. Affrontiamola un momento alla volta.';

  @override
  String get chatReplyStress =>
      'Prova a fare alcuni respiri lenti e concediti una breve pausa. Non devi agire sulla voglia.';

  @override
  String get chatReplyBoredom =>
      'Cambiamo ambiente. Fai una breve passeggiata, bevi dell\'acqua o tieni le mani occupate.';

  @override
  String get chatReplyCraving =>
      'Aspetta qualche minuto prima di decidere. Bevi acqua, respira lentamente e ricorda perché hai iniziato.';

  @override
  String get onboardingTitle1 => 'Respira liberamente';

  @override
  String get onboardingDesc1 =>
      'Puffree ti aiuta a smettere di fumare passo dopo passo — senza pressione e con supporto.';

  @override
  String get onboardingTitle2 => 'Livelli e progressi';

  @override
  String get onboardingDesc2 =>
      'Ogni giorno senza sigaretta sblocca un nuovo livello. Guarda crescere la tua forza e la tua salute.';

  @override
  String get onboardingTitle3 => 'Supporto quotidiano';

  @override
  String get onboardingDesc3 =>
      'Motivazione, missioni e monitoraggio dei progressi. Non sei solo in questo percorso.';

  @override
  String get aboutYou => 'Un po\' su di te';

  @override
  String get aboutYouDesc =>
      'Questo aiuta a calcolare i soldi e le sigarette risparmiate';

  @override
  String get cigsPerDay => 'Sigarette al giorno prima';

  @override
  String get pricePerPack => 'Prezzo del pacchetto';

  @override
  String get startJourney => 'Inizia il percorso';

  @override
  String get next => 'Avanti';

  @override
  String get skip => 'Salta';

  @override
  String get youGotThis => 'Ce la farai. Un momento alla volta.';

  @override
  String get waitTheWave => 'Supera l\'onda della voglia';

  @override
  String get youPassedThis => 'Hai superato questo momento';

  @override
  String get greatJob => 'Ottimo lavoro. Hai il controllo.';

  @override
  String get giveYourselfMinutes =>
      'Datti qualche minuto e concentrati sul momento presente.';

  @override
  String get keepGoing => 'CONTINUA';

  @override
  String get done => 'FATTO';

  @override
  String get breatheSlowly => 'Respira lentamente';

  @override
  String get followTheCircle => 'Segui il ritmo del cerchio';

  @override
  String get chooseWhatFits =>
      'Scegli ciò che si avvicina di più a come ti senti adesso.';

  @override
  String get yourResults => 'I tuoi risultati';

  @override
  String get whatChanged => 'Ciò che è già cambiato grazie a te';

  @override
  String get recoveryPath => 'Percorso di recupero';

  @override
  String get everyMilestone => 'Ogni traguardo è un altro passo avanti';

  @override
  String get levelProgress => 'Progresso verso il livello successivo';

  @override
  String get yourPathContinues => 'Il tuo percorso continua';

  @override
  String get daysWordOne => 'giorno';

  @override
  String get daysWordFew => 'giorni';

  @override
  String get daysWordMany => 'giorni';

  @override
  String get momentum => 'IMPULSO';

  @override
  String missionsLeft(int count) {
    return '$count missioni rimaste';
  }

  @override
  String get allMissionsDone => 'Tutte le missioni completate';

  @override
  String get dayComplete => 'Giorno completato';

  @override
  String get keepGoingShort => 'Continua';

  @override
  String get inProgress => 'IN CORSO';

  @override
  String get complete => 'COMPLETATO';

  @override
  String get yourPlanToday => 'Il tuo piano di oggi';

  @override
  String get everythingDone => 'Tutto completato';

  @override
  String get theme => 'Tema';

  @override
  String get language => 'Lingua';

  @override
  String get notifications => 'Notifiche';

  @override
  String get notificationsHint => 'Promemoria e motivazione';

  @override
  String get data => 'Dati';

  @override
  String get aboutApp => 'Informazioni sull\'app';

  @override
  String get appTheme => 'Tema dell\'app';

  @override
  String get chooseTheme => 'Scegli come deve apparire Puffree.';

  @override
  String get systemTheme => 'Sistema';

  @override
  String get systemThemeDesc => 'Segui le impostazioni del telefono';

  @override
  String get lightTheme => 'Chiaro';

  @override
  String get lightThemeDesc => 'Usa sempre il tema chiaro';

  @override
  String get darkTheme => 'Scuro';

  @override
  String get darkThemeDesc => 'Usa sempre il tema scuro';

  @override
  String get premiumActive => 'Premium attivo';

  @override
  String get trialActive => 'Periodo di prova attivo';

  @override
  String get fullAccess => 'Accesso completo a tutte le funzioni';

  @override
  String get openPremium => 'Apri Premium e le opzioni di abbonamento';

  @override
  String get resetProgressTitle => 'Reimpostare i progressi?';

  @override
  String get resetProgressBody =>
      'Tutti i dati su giorni, serie e statistiche verranno eliminati. Questa azione non può essere annullata.';

  @override
  String get excellent => 'Ottimo!';

  @override
  String get anotherDayFree => 'Un altro giorno senza sigarette';

  @override
  String get continueBtn => 'Continua';

  @override
  String get newAchievement => 'NUOVO TRAGUARDO';

  @override
  String get newLevel => 'Nuovo livello!';

  @override
  String get levelUpMessage => 'Continua così — stai andando alla grande!';

  @override
  String get freeFor => 'LIBERO DA';

  @override
  String get toNextLevel => 'Al livello successivo';

  @override
  String get keyResults => 'RISULTATI CHIAVE';

  @override
  String get progressSystem => 'SISTEMA DI PROGRESSI';

  @override
  String get everyDayCloser => 'Ogni giorno ti avvicina al livello successivo';

  @override
  String get current => 'Attuale';

  @override
  String get nextLevel => 'Prossimo';

  @override
  String get smallSteps => 'Piccoli passi. Grandi cambiamenti.';

  @override
  String get youAreFurther => 'Sei già più avanti di ieri';

  @override
  String get madeForFuture => 'Creato per un futuro senza fumo';

  @override
  String get dayStreakCaption => 'giorni di fila';

  @override
  String get cigarettesAvoidedCaption => 'evitate';

  @override
  String get freeDaysCaption => 'giorni di libertà';

  @override
  String get levelLabel => 'Livello';

  @override
  String get keepStreakAlive => 'Mantieni attiva la tua serie';

  @override
  String get failedToLoadProgress => 'Impossibile caricare i progressi';

  @override
  String get levelTitle1 => 'Primo Respiro';

  @override
  String get levelTitle2 => 'Germoglio';

  @override
  String get levelTitle3 => 'Crescita';

  @override
  String get levelTitle4 => 'Radici';

  @override
  String get levelTitle5 => 'Tronco';

  @override
  String get levelTitle6 => 'Forza';

  @override
  String get levelTitle7 => 'Fuoco';

  @override
  String get levelTitle8 => 'Scintilla';

  @override
  String get levelTitle9 => 'Campione';

  @override
  String get levelTitle10 => 'Maestro';

  @override
  String get levelTitle11 => 'Diamante';

  @override
  String get levelTitle12 => 'Stella';

  @override
  String get levelTitle13 => 'Razzo';

  @override
  String get levelTitle14 => 'Leggenda';

  @override
  String get levelTitleDefault => 'Percorso';

  @override
  String get milestone1Title => 'Inizio di un nuovo percorso';

  @override
  String get milestone1Desc =>
      'Hai già fatto il primo passo e continui ad avanzare.';

  @override
  String get milestone2Title => 'Primi cambiamenti';

  @override
  String get milestone2Desc =>
      'Il corpo si adatta gradualmente alla vita senza sigarette.';

  @override
  String get milestone3Title => 'Nuova tappa';

  @override
  String get milestone3Desc =>
      'Si forma gradualmente un nuovo ritmo senza l\'abitudine.';

  @override
  String get milestone4Title => 'Progresso sicuro';

  @override
  String get milestone4Desc =>
      'Due settimane sono un traguardo notevole nel cammino verso una nuova abitudine.';

  @override
  String get milestone5Title => 'La grande abitudine cambia';

  @override
  String get milestone5Desc =>
      'Un mese di costanza è un risultato personale serio.';

  @override
  String get milestone6Title => 'Grande traguardo';

  @override
  String get milestone6Desc =>
      'Continuare il percorso aiuta a consolidare un nuovo stile di vita.';

  @override
  String get milestone7Title => 'Anno di libertà';

  @override
  String get milestone7Desc =>
      'Un anno senza sigarette è un grande traguardo sul tuo cammino.';

  @override
  String get navProgress => 'Progresso';

  @override
  String get more => 'Altro';

  @override
  String get settingsSubtitle => 'Personalizza Puffree per te';

  @override
  String get sectionApp => 'App';

  @override
  String get sectionData => 'Dati';

  @override
  String get sectionAbout => 'Informazioni';

  @override
  String get resetProgressSubtitle => 'Ricomincia il percorso';

  @override
  String get premiumActiveBadge => 'ATTIVO';

  @override
  String get splashCaption => 'Libertà dal fumo';

  @override
  String get todayStartJourney => 'Oggi inizia il tuo nuovo viaggio.';

  @override
  String realResultKeepGoing(int count, String daysWord) {
    return '$count $daysWord è già un risultato reale. Continua.';
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
  String get onbTitle1 => 'Cosa usi?';

  @override
  String get onbSubtitle1 =>
      'Personalizzeremo tutto in base alla tua abitudine.';

  @override
  String get onbTitle2 => 'Quanto ne usi?';

  @override
  String get onbSubtitle2 =>
      'Numeri onesti ci aiutano a calcolare i tuoi veri progressi.';

  @override
  String get onbTitle3 => 'Quanto ti costa?';

  @override
  String get onbSubtitle3 => 'Scopri quanti soldi puoi risparmiare ogni mese.';

  @override
  String get onbTitle4 => 'Come si sente il tuo corpo?';

  @override
  String get onbSubtitle4 => 'Seleziona i sintomi che noti più spesso.';

  @override
  String get onbTitle5 => 'Perché vuoi smettere?';

  @override
  String get onbSubtitle5 =>
      'Le tue ragioni guideranno il piano che costruiamo per te.';

  @override
  String get onbTitle6 => 'Creazione del tuo piano';

  @override
  String get onbSubtitle6 =>
      'Stiamo creando un percorso personalizzato solo per te.';

  @override
  String get onbTitle7 => 'Il tuo piano è pronto';

  @override
  String get onbSubtitle7 => 'Inizia il tuo viaggio con un piano fatto per te.';

  @override
  String get onbEyebrowBeforeStart => 'PRIMA DI INIZIARE';

  @override
  String get onbEyebrowStartingPoint => 'PUNTO DI PARTENZA';

  @override
  String get onbEyebrowRealCost => 'COSTO REALE';

  @override
  String get onbEyebrowSelfAwareness => 'AUTOCONSAPEVOLEZZA';

  @override
  String get onbEyebrowYourReason => 'LA TUA RAGIONE';

  @override
  String get onbEyebrowPersonalization => 'PERSONALIZZAZIONE';

  @override
  String get onbEyebrowDone => 'SEI PRONTO';

  @override
  String get onbHabitCigarettesTitle => 'Sigarette';

  @override
  String get onbHabitCigarettesSubtitle => 'Sigarette normali o rollate';

  @override
  String get onbHabitVapeTitle => 'Vape / Pod';

  @override
  String get onbHabitVapeSubtitle => 'Sigarette elettroniche e sistemi a pod';

  @override
  String get onbPodsPerWeekLabel => 'Pod a settimana';

  @override
  String get onbCigarettesPerDayLabel => 'Sigarette al giorno';

  @override
  String get onbYearsSmokedLabel => 'Anni di fumo';

  @override
  String get onbUnitPieces => 'pz';

  @override
  String get onbUnitYears => 'anni';

  @override
  String get onbAmountVapeHint =>
      'Questo ci aiuta a stimare il tuo costo settimanale e i tuoi progressi.';

  @override
  String get onbPotentialSavingsLabel => 'Risparmio mensile potenziale';

  @override
  String get onbPerMonthQuitting => 'al mese quando smetti';

  @override
  String get onbPricePerPodLabel => 'Prezzo per pod';

  @override
  String get onbPricePerPackLabel => 'Prezzo per pacchetto';

  @override
  String get onbCigarettesPerPackLabel => 'Sigarette per pacchetto';

  @override
  String get onbCurrencyLabel => 'Valuta';

  @override
  String get onbSymptomBreath => 'Affanno';

  @override
  String get onbSymptomAnxiety => 'Ansia / irrequietezza';

  @override
  String get onbSymptomPulse => 'Battito accelerato o irregolare';

  @override
  String get onbSymptomMorning => 'Tosse mattutina / catarro';

  @override
  String get onbSymptomCough => 'Tosse frequente';

  @override
  String get onbBodyHint =>
      'Puoi selezionarne diversi. Questo ci aiuta a concentrarci su ciò che conta per te.';

  @override
  String get onbMotivationHealth => 'Migliore salute ed energia';

  @override
  String get onbMotivationFreedom => 'Libertà dalla dipendenza';

  @override
  String get onbMotivationMoney => 'Risparmiare denaro';

  @override
  String get onbMotivationFamily => 'Per la mia famiglia / i miei figli';

  @override
  String get onbMotivationControl => 'Riprendere il controllo della mia vita';

  @override
  String get onbMotivationFuture => 'Un futuro più sano';

  @override
  String get onbSelectMultipleHint => 'Puoi selezionare più ragioni';

  @override
  String get onbStartingMapLabel => 'Creazione della tua mappa';

  @override
  String get onbBuildingStepSave => 'Calcolo dei tuoi risparmi';

  @override
  String get onbBuildingStepGoal => 'Definizione del tuo obiettivo principale';

  @override
  String get onbBuildingStepScenarios => 'Creazione di scenari personali';

  @override
  String get onbBuildingStepSteps => 'Preparazione dei primi passi';

  @override
  String get onbBuildingHint => 'Di solito richiede solo pochi secondi.';

  @override
  String get onbPleaseWait => 'Attendi un momento…';

  @override
  String get onbCreatingPlan => 'Creazione del tuo piano…';

  @override
  String get onbFirst30DaysLabel => 'Primi 30 giorni';

  @override
  String get onbLessExpensesLabel => 'Meno spese';

  @override
  String get onbSavingsPerMonth => 'Risparmiato al mese';

  @override
  String get onbSavingsPerYear => 'Risparmiato all’anno';

  @override
  String get onbPlanPersonalizedTitle => 'Il tuo piano personalizzato';

  @override
  String onbPlanPersonalizedSubtitle(int motivations, int symptoms) {
    return 'Basato su $motivations ragioni e $symptoms sintomi';
  }

  @override
  String get onbResultHint =>
      'Potrai sempre modificare questi numeri più tardi nelle impostazioni.';

  @override
  String get onbBreathingHint => 'RESPIRA';

  @override
  String get onbContinue => 'Continua';

  @override
  String get onbStartJourney => 'Inizia il mio viaggio';

  @override
  String get onboardingHabitTitle => 'Pronto a riprendere il controllo?';

  @override
  String get onboardingHabitSubtitle =>
      'Prima capiamo la tua abitudine. Niente moduli lunghi — poche risposte precise e Puffree costruirà il tuo percorso.';

  @override
  String get onboardingAmountTitle => 'Descrivi la tua giornata tipo';

  @override
  String get onboardingAmountSubtitle =>
      'Non è per giudicarti. È il punto di partenza da cui misureremo i progressi.';

  @override
  String get onboardingMoneyTitle => 'Quanto ti toglie l’abitudine?';

  @override
  String get onboardingMoneySubtitle =>
      'Il prezzo cambia subito sullo schermo — non vedi un numero astratto, ma il costo reale dell’abitudine.';

  @override
  String get onboardingBodyTitle => 'Cosa noti in te stesso?';

  @override
  String get onboardingBodySubtitle =>
      'Segna ciò che ti succede. Puoi sceglierne più di uno o nessuno.';

  @override
  String get onboardingMotivationTitle => 'Per cosa lo fai?';

  @override
  String get onboardingMotivationSubtitle =>
      'Diventerà la tua ancora personale. Puffree ti riporterà a questa ragione quando serve.';

  @override
  String get onboardingBuildingTitle => 'Costruiamo il tuo percorso';

  @override
  String get onboardingBuildingSubtitle =>
      'Non una diagnosi medica né la promessa di un giorno perfetto. Solo il tuo punto di partenza e i passi successivi chiari.';

  @override
  String get onboardingResultTitle =>
      'Il tuo primo schermo di progresso è già qui';

  @override
  String get onboardingResultSubtitle =>
      'Salviamo i dati di partenza sul dispositivo e li trasformiamo in progresso misurabile.';

  @override
  String get onboardingEyebrowBeforeStart => 'PRIMA DI INIZIARE';

  @override
  String get onboardingEyebrowStartPoint => 'IL TUO PUNTO DI PARTENZA';

  @override
  String get onboardingEyebrowRealCost => 'IL COSTO REALE';

  @override
  String get onboardingEyebrowSelfFeeling => 'COME TI SENTI';

  @override
  String get onboardingEyebrowYourReason => 'LA TUA RAGIONE';

  @override
  String get onboardingEyebrowPersonalization => 'PERSONALIZZAZIONE';

  @override
  String get onboardingEyebrowDone => 'FATTO';

  @override
  String get onboardingCigarettesChoice => 'Fumo sigarette';

  @override
  String get onboardingCigarettesChoiceSubtitle =>
      'Lo scenario principale di Puffree';

  @override
  String get onboardingVapeChoice => 'Uso una sigaretta elettronica';

  @override
  String get onboardingVapeChoiceSubtitle =>
      'Salveremo questa scelta nel tuo profilo';

  @override
  String get onboardingPodsPerWeek => 'Pod / monouso a settimana';

  @override
  String get onboardingUnitPcs => 'pz';

  @override
  String get onboardingVapeHint =>
      'In seguito, il profilo Puffree potrà separare gli scenari sigarette e vape senza perdere la cronologia.';

  @override
  String get onboardingCigarettesPerDay => 'Sigarette al giorno';

  @override
  String get onboardingYearsSmoked => 'Da quanti anni';

  @override
  String get onboardingUnitYears => 'anni';

  @override
  String get onboardingPricePerPod => 'Prezzo di un pod';

  @override
  String get onboardingPricePerPack => 'Prezzo del pacchetto';

  @override
  String get onboardingCigarettesPerPack => 'Sigarette per pacchetto';

  @override
  String get onboardingPotentialSavings => 'Risparmio potenziale';

  @override
  String get onboardingPerMonthIfQuit => 'al mese se smetti l’abitudine';

  @override
  String get onboardingCurrency => 'Valuta';

  @override
  String get onboardingSymptomBreath =>
      'Sento che il respiro è diventato più pesante';

  @override
  String get onboardingSymptomAnxiety => 'A volte sento una forte ansia';

  @override
  String get onboardingSymptomPulse => 'Noto un polso accelerato';

  @override
  String get onboardingSymptomMorning =>
      'Al mattino mi viene particolarmente voglia della prima sigaretta';

  @override
  String get onboardingSymptomCough => 'Ho tosse mattutina';

  @override
  String get onboardingBodyHint =>
      'Questa è un’autodescrizione, non una diagnosi. Se i sintomi ti preoccupano, è meglio parlarne con un medico.';

  @override
  String get onboardingMotivationHealth =>
      'Voglio prendermi meglio cura della salute';

  @override
  String get onboardingMotivationFreedom => 'Voglio sentirmi più libero';

  @override
  String get onboardingMotivationMoney =>
      'Voglio smettere di spendere soldi per questo';

  @override
  String get onboardingMotivationFamily =>
      'Voglio dipendere meno dall’abitudine vicino ai cari';

  @override
  String get onboardingMotivationControl =>
      'Voglio riconquistare il senso di controllo';

  @override
  String get onboardingMotivationFuture => 'Voglio farlo per il mio futuro';

  @override
  String get onboardingCanSelectSeveral => 'Puoi sceglierne più di uno';

  @override
  String get onboardingYourStartCard => 'la tua carta di partenza';

  @override
  String get onboardingStepSaveAnswers => 'Salviamo le tue risposte';

  @override
  String get onboardingStepFinancialGoal =>
      'Calcoliamo l’obiettivo finanziario';

  @override
  String get onboardingStepCravingScenarios => 'Creiamo scenari per il craving';

  @override
  String get onboardingStepFirstSteps => 'Prepariamo i primi passi';

  @override
  String get onboardingBuildingHint =>
      'Di proposito non promettiamo «rigenerazione dei polmoni in X ore» — Puffree mostra cose misurabili e separa il fatto dalla motivazione.';

  @override
  String get onboardingSavingsPerMonth => 'risparmio / mese';

  @override
  String get onboardingSavingsPerYear => 'risparmio / anno';

  @override
  String get onboardingResultHint =>
      'Questi numeri sono un calcolo basato sulle tue risposte, non una promessa di risultati. Il progresso reale dipende dal tuo comportamento.';

  @override
  String get onboardingFirst30Days => 'Primi 30 giorni';

  @override
  String get onboardingLessSpendMoreControl => 'meno spese → più controllo';

  @override
  String get onboardingPlanPersonalized => 'Piano personalizzato';

  @override
  String onboardingMotivationsCount(int count) {
    return '$count motivazioni personali';
  }

  @override
  String onboardingSymptomsCount(int count) {
    return '$count stati segnati';
  }

  @override
  String get onboardingTakeFirstStep => 'fai il primo passo';

  @override
  String get onboardingPleaseWait => 'Attendi qualche secondo…';

  @override
  String get onboardingCreatingPlan => 'Creazione del piano…';

  @override
  String get onboardingStartMyJourney => 'Inizia il mio percorso';

  @override
  String get onboardingContinue => 'Continua';

  @override
  String get premiumTitle => 'Puffree Premium';

  @override
  String get premiumSubtitle =>
      'Più strumenti per il tuo percorso.\nScegli il piano che fa per te.';

  @override
  String get oneMembership => 'Un accesso Premium per tutto';

  @override
  String get everythingIncluded => 'Tutto incluso';

  @override
  String get everythingIncludedSubtitle =>
      'Premium sblocca l\'esperienza completa di Puffree.';

  @override
  String get choosePlan => 'Scegli il tuo piano';

  @override
  String get choosePlanSubtitle =>
      'Puoi modificare la scelta prima dell\'acquisto.';

  @override
  String get featureTasks => 'Missioni estese';

  @override
  String get featureTasksSubtitle => 'Più pratiche e sfide';

  @override
  String get featureStats => 'Statistiche complete';

  @override
  String get featureStatsSubtitle =>
      'Approfondimenti dettagliati sui progressi';

  @override
  String get profileEditTitle => 'Profilo';

  @override
  String get profileEditTapToChangePhoto => 'Tocca la foto per modificarla';

  @override
  String get profileEditNameLabel => 'Nome';

  @override
  String get profileEditNameHint => 'Inserisci il tuo nome';

  @override
  String get profileEditSaveButton => 'Salva modifiche';

  @override
  String get profileEditErrorEmptyName => 'Inserisci un nome';

  @override
  String get profileEditSuccessUpdated => 'Profilo aggiornato con successo';

  @override
  String profileEditErrorUpdate(String error) {
    return 'Aggiornamento del profilo non riuscito: $error';
  }

  @override
  String get authWelcomeBack => 'Bentornato!';

  @override
  String get authCreateAccount => 'Crea account';

  @override
  String get authResetPassword => 'Reimposta password';

  @override
  String get authLoginSubtitle => 'Accedi per continuare il tuo percorso';

  @override
  String get authRegisterSubtitle => 'Inizia oggi una vita senza fumo';

  @override
  String get authForgotSubtitle =>
      'Inserisci la tua email e ti invieremo le istruzioni';

  @override
  String get authTabLogin => 'Accedi';

  @override
  String get authTabRegister => 'Registrati';

  @override
  String get authNameHint => 'Il tuo nome';

  @override
  String get authNameRequired => 'Inserisci il tuo nome';

  @override
  String get authEmailHint => 'Indirizzo email';

  @override
  String get authEmailRequired => 'Inserisci l\'email';

  @override
  String get authEmailInvalid => 'Email non valida';

  @override
  String get authPasswordHint => 'Password';

  @override
  String get authPasswordRequired => 'Inserisci la password';

  @override
  String get authPasswordMinLength =>
      'La password deve avere almeno 6 caratteri';

  @override
  String get authConfirmPasswordHint => 'Ripeti la password';

  @override
  String get authPasswordsDoNotMatch => 'Le password non corrispondono';

  @override
  String get authForgotPassword => 'Password dimenticata?';

  @override
  String get authLoginButton => 'Accedi';

  @override
  String get authRegisterButton => 'Registrati';

  @override
  String get authSendLinkButton => 'Invia link';

  @override
  String get authBackToLogin => 'Torna al login';

  @override
  String get authOrContinueWith => 'oppure continua con';

  @override
  String get authGoogle => 'Google';

  @override
  String get authApple => 'Apple';

  @override
  String get authResetLinkSent =>
      'Link di reimpostazione inviato alla tua email!';

  @override
  String get authErrorGeneric => 'Qualcosa è andato storto. Controlla i dati.';

  @override
  String get authErrorSocial => 'Accesso social non riuscito.';

  @override
  String get profileEditErrorPhotoNotFound =>
      'Impossibile ottenere la foto selezionata';

  @override
  String get profileEditErrorOpenGallery => 'Impossibile aprire la galleria';

  @override
  String get profileEditErrorPickPhoto =>
      'Si è verificato un errore durante la selezione della foto';

  @override
  String get featureMotivation => 'Motivazione personale';

  @override
  String get featureMotivationSubtitle => 'Guida per il tuo percorso';

  @override
  String get featureSupport => 'Strumenti di supporto extra';

  @override
  String get featureSupportSubtitle => 'Più aiuto quando ne hai bisogno';

  @override
  String get featureNotifications => 'Promemoria intelligenti';

  @override
  String get featureNotificationsSubtitle => 'Motivazione al momento giusto';

  @override
  String get featureAds => 'Senza pubblicità';

  @override
  String get featureAdsSubtitle => 'Esperienza calma e pulita';

  @override
  String get planMonthly => 'Mensile';

  @override
  String get planMonthlySubtitle => 'Flessibile, senza lunghi impegni';

  @override
  String get planYearly => 'Annuale';

  @override
  String get planYearlySubtitle =>
      'Miglior equilibrio tra prezzo e funzionalità';

  @override
  String get planLifetime => 'A vita';

  @override
  String get planLifetimeSubtitle => 'Un pagamento — Premium per sempre';

  @override
  String get perMonth => '/ mese';

  @override
  String get perYear => '/ anno';

  @override
  String get bestValue => 'MIGLIOR VALORE';

  @override
  String get oneTime => 'UNA TANTUM';

  @override
  String get buyMonthly => 'Ottieni Premium mensile';

  @override
  String get buyYearly => 'Ottieni Premium annuale';

  @override
  String get buyLifetime => 'Ottieni Premium per sempre';

  @override
  String get restorePurchases => 'Ripristina acquisti';

  @override
  String get securePurchase => 'Acquisto sicuro';

  @override
  String get cancelAnytime => 'Annulla in qualsiasi momento';

  @override
  String get restoreAnytime => 'Gli acquisti possono essere ripristinati';

  @override
  String get legalMonthly =>
      'L\'abbonamento si rinnova automaticamente ogni mese. Puoi annullarlo dalle impostazioni di App Store o Google Play. Il prezzo viene mostrato prima della conferma dell\'acquisto.';

  @override
  String get legalYearly =>
      'L\'abbonamento si rinnova automaticamente ogni anno. Puoi annullarlo dalle impostazioni di App Store o Google Play. Il prezzo viene mostrato prima della conferma dell\'acquisto.';

  @override
  String get legalLifetime =>
      'Questo è un acquisto una tantum e non si rinnova automaticamente. Il prezzo viene mostrato prima della conferma dell\'acquisto.';
}
