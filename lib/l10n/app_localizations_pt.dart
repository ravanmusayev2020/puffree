// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appName => 'Puffree';

  @override
  String get tagline => 'Liberdade do tabaco';

  @override
  String get today => 'Hoje';

  @override
  String get streak => 'Sequência';

  @override
  String get saved => 'Economizado';

  @override
  String get avoided => 'Evitados';

  @override
  String get totalDays => 'Dias totais';

  @override
  String get dailyMotivation => 'Motivação do dia';

  @override
  String get checkIn => 'Não fumei hoje';

  @override
  String get checkedInToday => 'Registado hoje';

  @override
  String get missions => 'Missões do dia';

  @override
  String completedOf(int completed, int total) {
    return 'Concluídas $completed de $total';
  }

  @override
  String get premium => 'Premium';

  @override
  String get tryFree => 'Experimentar 3 dias grátis';

  @override
  String get buyPremium => 'Comprar Premium';

  @override
  String get restore => 'Restaurar compras';

  @override
  String get premiumHint => 'Desbloqueie todas as funções com Premium';

  @override
  String get settings => 'Definições';

  @override
  String get progress => 'O seu progresso';

  @override
  String get statistics => 'Estatísticas';

  @override
  String get currentStreak => 'Sequência atual';

  @override
  String get record => 'Recorde';

  @override
  String get bodyChanges => 'O que acontece ao seu corpo';

  @override
  String get resetProgress => 'Repor progresso';

  @override
  String get resetConfirm =>
      'Todos os dados sobre dias, sequência e estatísticas serão eliminados. Esta ação não pode ser desfeita.';

  @override
  String get cancel => 'Cancelar';

  @override
  String get reset => 'Repor';

  @override
  String get journalTitle => 'Diário';

  @override
  String get journalHint => 'Escreva os seus pensamentos';

  @override
  String get journalPlaceholder => 'Como se sente hoje?';

  @override
  String get save => 'Guardar';

  @override
  String get moodCheck => 'Como se sente?';

  @override
  String get moodCheckHint => 'Tire um momento para verificar como está.';

  @override
  String get version => 'Versão';

  @override
  String get privacy => 'Política de privacidade';

  @override
  String get terms => 'Termos de utilização';

  @override
  String get disclaimer =>
      'Puffree é uma aplicação de motivação. Não é um dispositivo médico e não substitui aconselhamento médico profissional. Se tiver uma forte dependência de nicotina, consulte um especialista.';

  @override
  String level(int number) {
    return 'Nível $number';
  }

  @override
  String daysSmokeFree(int count) {
    return '$count dias sem cigarros';
  }

  @override
  String nextLevelProgress(int percent) {
    return '$percent% para o próximo nível';
  }

  @override
  String get friend => 'Amigo';

  @override
  String helloName(String name) {
    return 'Olá, $name!';
  }

  @override
  String get pathToFreedom => 'O seu caminho para a liberdade';

  @override
  String get withoutCigs => 'sem cigarros';

  @override
  String get iSmoked => 'Fumei';

  @override
  String get relapseTitle => 'Está tudo bem';

  @override
  String get relapseBody =>
      'Um cigarro não apaga o seu progresso. Aprenda com este momento e continue a avançar.';

  @override
  String get relapseDone => 'Continuar';

  @override
  String get home => 'Início';

  @override
  String get tasks => 'Tarefas';

  @override
  String get missionBreathe => 'Respiração profunda';

  @override
  String get missionWater => 'Beber água';

  @override
  String get missionWalk => 'Caminhar 10 min';

  @override
  String get missionJournal => 'Escrever um pensamento';

  @override
  String get missionMeditation => 'Meditação 5 min';

  @override
  String get missionFocus => 'Foco sem telefone';

  @override
  String get missionReflect => 'Reflexão do dia';

  @override
  String get missionHelp => 'Apoiar alguém';

  @override
  String get missionBreatheDesc =>
      'Faça algumas respirações lentas e profundas.';

  @override
  String get missionWaterDesc => 'Beba um copo de água.';

  @override
  String get missionWalkDesc => 'Faça uma caminhada de 10 minutos.';

  @override
  String get missionJournalDesc => 'Escreva um pensamento sobre o seu dia.';

  @override
  String get missionMeditationDesc => 'Dedique 5 minutos à meditação.';

  @override
  String get missionFocusDesc => 'Passe algum tempo concentrado sem telefone.';

  @override
  String get missionReflectDesc => 'Pense em como correu o seu dia.';

  @override
  String get missionHelpDesc => 'Faça algo gentil para apoiar alguém.';

  @override
  String get sosTitle => 'Suporte SOS';

  @override
  String get sosTimer => 'Temporizador de desejo';

  @override
  String get sosBreathe => 'Respirar';

  @override
  String get sosChat => 'Falar';

  @override
  String get sosStart => 'Começar';

  @override
  String get sosDone => 'Concluído';

  @override
  String get sosManaged => 'Controlou o desejo!';

  @override
  String get sosWon => 'Ganhou!';

  @override
  String get sosLeft => 'restante';

  @override
  String get sosTip1 => 'Faça algumas respirações lentas e profundas.';

  @override
  String get sosTip2 => 'Beba um copo de água.';

  @override
  String get sosTip3 => 'Mude de lugar.';

  @override
  String get sosTip4 => 'Mantenha as mãos ocupadas.';

  @override
  String get sosTip5 => 'Pense no porquê de ter começado.';

  @override
  String get sosTip6 => 'Dê ao desejo alguns minutos para passar.';

  @override
  String get breatheIn => 'Inspirar';

  @override
  String get breatheHold => 'Segurar';

  @override
  String get breatheOut => 'Expirar';

  @override
  String get breatheHint => 'Siga o círculo e respire lentamente.';

  @override
  String get breatheStart => 'Começar a respirar';

  @override
  String get chatPick => 'O que está a sentir agora?';

  @override
  String get chatCraving => 'Tenho um desejo';

  @override
  String get chatStress => 'Estou stressado';

  @override
  String get chatBoredom => 'Estou aborrecido';

  @override
  String get chatNeedWalk => 'Preciso de caminhar';

  @override
  String get chatNeedWater => 'Preciso de água';

  @override
  String get chatNeedBreathe => 'Preciso de respirar';

  @override
  String get chatIntroStress =>
      'Parece que está a sentir stress. Vamos ultrapassar este momento juntos.';

  @override
  String get chatIntroBoredom =>
      'O aborrecimento pode tornar o desejo mais forte. Vamos encontrar outra coisa em que nos concentrar.';

  @override
  String get chatIntroCraving =>
      'O desejo pode ser intenso, mas vai passar. Vamos tomá-lo momento a momento.';

  @override
  String get chatReplyStress =>
      'Tente fazer algumas respirações lentas e dê-se uma pequena pausa. Não tem de agir sobre o desejo.';

  @override
  String get chatReplyBoredom =>
      'Vamos mudar o ambiente. Faça uma pequena caminhada, beba água ou mantenha as mãos ocupadas.';

  @override
  String get chatReplyCraving =>
      'Espere alguns minutos antes de tomar uma decisão. Beba água, respire lentamente e lembre-se porque começou.';

  @override
  String get onboardingTitle1 => 'Respire livremente';

  @override
  String get onboardingDesc1 =>
      'O Puffree ajuda-o a deixar de fumar passo a passo — sem pressão e com apoio.';

  @override
  String get onboardingTitle2 => 'Níveis e progresso';

  @override
  String get onboardingDesc2 =>
      'Cada dia sem cigarro desbloqueia um novo nível. Veja a sua força e saúde crescerem.';

  @override
  String get onboardingTitle3 => 'Apoio diário';

  @override
  String get onboardingDesc3 =>
      'Motivação, missões e acompanhamento do progresso. Não está sozinho neste caminho.';

  @override
  String get aboutYou => 'Um pouco sobre si';

  @override
  String get aboutYouDesc =>
      'Isto ajuda a calcular o dinheiro e os cigarros poupados';

  @override
  String get cigsPerDay => 'Cigarros por dia antes';

  @override
  String get pricePerPack => 'Preço do maço';

  @override
  String get startJourney => 'Começar a jornada';

  @override
  String get next => 'Seguinte';

  @override
  String get skip => 'Saltar';

  @override
  String get youGotThis => 'Consegue. Um momento de cada vez.';

  @override
  String get waitTheWave => 'Supere a onda do desejo';

  @override
  String get youPassedThis => 'Passou este momento';

  @override
  String get greatJob => 'Ótimo trabalho. Tem o controlo.';

  @override
  String get giveYourselfMinutes =>
      'Dê a si mesmo alguns minutos e concentre-se no momento presente.';

  @override
  String get keepGoing => 'CONTINUE';

  @override
  String get done => 'CONCLUÍDO';

  @override
  String get breatheSlowly => 'Respire lentamente';

  @override
  String get followTheCircle => 'Siga o ritmo do círculo';

  @override
  String get chooseWhatFits =>
      'Escolha o que melhor corresponde a como se sente agora.';

  @override
  String get yourResults => 'Os seus resultados';

  @override
  String get whatChanged => 'O que já mudou graças a si';

  @override
  String get recoveryPath => 'Caminho de recuperação';

  @override
  String get everyMilestone => 'Cada marco é mais um passo em frente';

  @override
  String get levelProgress => 'Progresso para o próximo nível';

  @override
  String get yourPathContinues => 'O seu caminho continua';

  @override
  String get daysWordOne => 'dia';

  @override
  String get daysWordFew => 'dias';

  @override
  String get daysWordMany => 'dias';

  @override
  String get momentum => 'IMPULSO';

  @override
  String missionsLeft(int count) {
    return 'Restam $count missões';
  }

  @override
  String get allMissionsDone => 'Todas as missões concluídas';

  @override
  String get dayComplete => 'Dia concluído';

  @override
  String get keepGoingShort => 'Continue';

  @override
  String get inProgress => 'EM PROGRESSO';

  @override
  String get complete => 'CONCLUÍDO';

  @override
  String get yourPlanToday => 'O seu plano para hoje';

  @override
  String get everythingDone => 'Tudo concluído';

  @override
  String get theme => 'Tema';

  @override
  String get language => 'Idioma';

  @override
  String get notifications => 'Notificações';

  @override
  String get notificationsHint => 'Lembretes e motivação';

  @override
  String get data => 'Dados';

  @override
  String get aboutApp => 'Sobre a aplicação';

  @override
  String get appTheme => 'Tema da aplicação';

  @override
  String get chooseTheme => 'Escolha como o Puffree deve parecer.';

  @override
  String get systemTheme => 'Sistema';

  @override
  String get systemThemeDesc => 'Seguir as definições do telefone';

  @override
  String get lightTheme => 'Claro';

  @override
  String get lightThemeDesc => 'Usar sempre o tema claro';

  @override
  String get darkTheme => 'Escuro';

  @override
  String get darkThemeDesc => 'Usar sempre o tema escuro';

  @override
  String get premiumActive => 'Premium ativo';

  @override
  String get trialActive => 'Período de teste ativo';

  @override
  String get fullAccess => 'Acesso completo a todas as funções';

  @override
  String get openPremium => 'Abrir Premium e opções de subscrição';

  @override
  String get resetProgressTitle => 'Repor o progresso?';

  @override
  String get resetProgressBody =>
      'Todos os dados sobre dias, sequência e estatísticas serão eliminados. Esta ação não pode ser desfeita.';

  @override
  String get excellent => 'Excelente!';

  @override
  String get anotherDayFree => 'Mais um dia sem cigarros';

  @override
  String get continueBtn => 'Continuar';

  @override
  String get newAchievement => 'NOVA CONQUISTA';

  @override
  String get newLevel => 'Novo nível!';

  @override
  String get levelUpMessage => 'Continue — está a correr muito bem!';

  @override
  String get freeFor => 'LIVRE HÁ';

  @override
  String get toNextLevel => 'Para o próximo nível';

  @override
  String get keyResults => 'RESULTADOS PRINCIPAIS';

  @override
  String get progressSystem => 'SISTEMA DE PROGRESSO';

  @override
  String get everyDayCloser => 'Cada dia aproxima-o do próximo nível';

  @override
  String get current => 'Atual';

  @override
  String get nextLevel => 'Próximo';

  @override
  String get smallSteps => 'Pequenos passos. Grandes mudanças.';

  @override
  String get youAreFurther => 'Já está mais longe do que ontem';

  @override
  String get madeForFuture => 'Feito para um futuro sem fumo';

  @override
  String get dayStreakCaption => 'dias seguidos';

  @override
  String get cigarettesAvoidedCaption => 'evitados';

  @override
  String get freeDaysCaption => 'dias livres';

  @override
  String get levelLabel => 'Nível';

  @override
  String get keepStreakAlive => 'Mantém a tua sequência activa';

  @override
  String get failedToLoadProgress => 'Não foi possível carregar o progresso';

  @override
  String get levelTitle1 => 'Primeiro Sopro';

  @override
  String get levelTitle2 => 'Broto';

  @override
  String get levelTitle3 => 'Crescimento';

  @override
  String get levelTitle4 => 'Raízes';

  @override
  String get levelTitle5 => 'Tronco';

  @override
  String get levelTitle6 => 'Força';

  @override
  String get levelTitle7 => 'Fogo';

  @override
  String get levelTitle8 => 'Faísca';

  @override
  String get levelTitle9 => 'Campeão';

  @override
  String get levelTitle10 => 'Mestre';

  @override
  String get levelTitle11 => 'Diamante';

  @override
  String get levelTitle12 => 'Estrela';

  @override
  String get levelTitle13 => 'Foguete';

  @override
  String get levelTitle14 => 'Lenda';

  @override
  String get levelTitleDefault => 'Caminho';

  @override
  String get milestone1Title => 'Início de um novo caminho';

  @override
  String get milestone1Desc =>
      'Já deste o primeiro passo e continuas a avançar.';

  @override
  String get milestone2Title => 'Primeiras mudanças';

  @override
  String get milestone2Desc =>
      'O corpo adapta-se gradualmente à vida sem cigarros.';

  @override
  String get milestone3Title => 'Nova etapa';

  @override
  String get milestone3Desc =>
      'Forma-se gradualmente um novo ritmo sem o hábito.';

  @override
  String get milestone4Title => 'Progresso confiante';

  @override
  String get milestone4Desc =>
      'Duas semanas é um marco notável no caminho para um novo hábito.';

  @override
  String get milestone5Title => 'Grande hábito muda';

  @override
  String get milestone5Desc =>
      'Um mês de consistência é um resultado pessoal sério.';

  @override
  String get milestone6Title => 'Grande marco';

  @override
  String get milestone6Desc =>
      'Continuar o caminho ajuda a consolidar um novo estilo de vida.';

  @override
  String get milestone7Title => 'Ano de liberdade';

  @override
  String get milestone7Desc =>
      'Um ano sem cigarros é um grande marco no teu caminho.';

  @override
  String get navProgress => 'Progresso';

  @override
  String get more => 'Mais';

  @override
  String get settingsSubtitle => 'Personaliza o Puffree à tua medida';

  @override
  String get sectionApp => 'App';

  @override
  String get sectionData => 'Dados';

  @override
  String get sectionAbout => 'Sobre';

  @override
  String get resetProgressSubtitle => 'Recomeçar a jornada';

  @override
  String get premiumActiveBadge => 'ATIVO';

  @override
  String get splashCaption => 'Liberdade do tabaco';

  @override
  String get todayStartJourney => 'Hoje é o início da tua nova jornada.';

  @override
  String realResultKeepGoing(int count, String daysWord) {
    return '$count $daysWord já é um resultado real. Continua.';
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
  String get onbTitle1 => 'O que você usa?';

  @override
  String get onbSubtitle1 => 'Vamos personalizar tudo com base no seu hábito.';

  @override
  String get onbTitle2 => 'Quanto você usa?';

  @override
  String get onbSubtitle2 =>
      'Números honestos nos ajudam a calcular o seu progresso real.';

  @override
  String get onbTitle3 => 'Quanto isso custa para você?';

  @override
  String get onbSubtitle3 =>
      'Veja quanto dinheiro você pode economizar todos os meses.';

  @override
  String get onbTitle4 => 'Como o seu corpo se sente?';

  @override
  String get onbSubtitle4 => 'Selecione os sintomas que você mais nota.';

  @override
  String get onbTitle5 => 'Por que você quer parar?';

  @override
  String get onbSubtitle5 =>
      'Suas razões vão impulsionar o plano que criamos para você.';

  @override
  String get onbTitle6 => 'Criando o seu plano';

  @override
  String get onbSubtitle6 =>
      'Estamos criando um caminho personalizado só para você.';

  @override
  String get onbTitle7 => 'O seu plano está pronto';

  @override
  String get onbSubtitle7 =>
      'Comece a sua jornada com um plano feito para você.';

  @override
  String get onbEyebrowBeforeStart => 'ANTES DE COMEÇAR';

  @override
  String get onbEyebrowStartingPoint => 'PONTO DE PARTIDA';

  @override
  String get onbEyebrowRealCost => 'CUSTO REAL';

  @override
  String get onbEyebrowSelfAwareness => 'AUTOCONHECIMENTO';

  @override
  String get onbEyebrowYourReason => 'SUA RAZÃO';

  @override
  String get onbEyebrowPersonalization => 'PERSONALIZAÇÃO';

  @override
  String get onbEyebrowDone => 'VOCÊ ESTÁ PRONTO';

  @override
  String get onbHabitCigarettesTitle => 'Cigarros';

  @override
  String get onbHabitCigarettesSubtitle => 'Cigarros normais ou de enrolar';

  @override
  String get onbHabitVapeTitle => 'Vape / Pods';

  @override
  String get onbHabitVapeSubtitle => 'Cigarros eletrônicos e sistemas de pods';

  @override
  String get onbPodsPerWeekLabel => 'Pods por semana';

  @override
  String get onbCigarettesPerDayLabel => 'Cigarros por dia';

  @override
  String get onbYearsSmokedLabel => 'Anos fumando';

  @override
  String get onbUnitPieces => 'un';

  @override
  String get onbUnitYears => 'anos';

  @override
  String get onbAmountVapeHint =>
      'Isso nos ajuda a estimar o seu custo semanal e o progresso.';

  @override
  String get onbPotentialSavingsLabel => 'Economia mensal potencial';

  @override
  String get onbPerMonthQuitting => 'por mês quando você parar';

  @override
  String get onbPricePerPodLabel => 'Preço por pod';

  @override
  String get onbPricePerPackLabel => 'Preço por maço';

  @override
  String get onbCigarettesPerPackLabel => 'Cigarros por maço';

  @override
  String get onbCurrencyLabel => 'Moeda';

  @override
  String get onbSymptomBreath => 'Falta de ar';

  @override
  String get onbSymptomAnxiety => 'Ansiedade / inquietação';

  @override
  String get onbSymptomPulse => 'Batimento cardíaco rápido ou irregular';

  @override
  String get onbSymptomMorning => 'Tosse matinal / catarro';

  @override
  String get onbSymptomCough => 'Tosse frequente';

  @override
  String get onbBodyHint =>
      'Você pode selecionar vários. Isso nos ajuda a focar no que importa para você.';

  @override
  String get onbMotivationHealth => 'Melhor saúde e energia';

  @override
  String get onbMotivationFreedom => 'Liberdade da dependência';

  @override
  String get onbMotivationMoney => 'Economizar dinheiro';

  @override
  String get onbMotivationFamily => 'Pela minha família / filhos';

  @override
  String get onbMotivationControl => 'Retomar o controle da minha vida';

  @override
  String get onbMotivationFuture => 'Um futuro mais saudável';

  @override
  String get onbSelectMultipleHint => 'Você pode selecionar várias razões';

  @override
  String get onbStartingMapLabel => 'Criando o seu mapa';

  @override
  String get onbBuildingStepSave => 'Calculando as suas economias';

  @override
  String get onbBuildingStepGoal => 'Definindo o seu objetivo principal';

  @override
  String get onbBuildingStepScenarios => 'Criando cenários pessoais';

  @override
  String get onbBuildingStepSteps => 'Preparando os primeiros passos';

  @override
  String get onbBuildingHint => 'Isso normalmente leva apenas alguns segundos.';

  @override
  String get onbPleaseWait => 'Por favor, aguarde um momento…';

  @override
  String get onbCreatingPlan => 'Criando o seu plano…';

  @override
  String get onbFirst30DaysLabel => 'Primeiros 30 dias';

  @override
  String get onbLessExpensesLabel => 'Menos despesas';

  @override
  String get onbSavingsPerMonth => 'Economizado por mês';

  @override
  String get onbSavingsPerYear => 'Economizado por ano';

  @override
  String get onbPlanPersonalizedTitle => 'O seu plano personalizado';

  @override
  String onbPlanPersonalizedSubtitle(int motivations, int symptoms) {
    return 'Com base em $motivations razões e $symptoms sintomas';
  }

  @override
  String get onbResultHint =>
      'Você sempre pode ajustar esses números mais tarde nas configurações.';

  @override
  String get onbBreathingHint => 'RESPIRE';

  @override
  String get onbContinue => 'Continuar';

  @override
  String get onbStartJourney => 'Começar a minha jornada';

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
      'Mais ferramentas para a sua jornada.\nEscolha o plano que combina consigo.';

  @override
  String get oneMembership => 'Um acesso Premium para tudo';

  @override
  String get everythingIncluded => 'Tudo incluído';

  @override
  String get everythingIncludedSubtitle =>
      'O Premium desbloqueia a experiência completa do Puffree.';

  @override
  String get choosePlan => 'Escolha o seu plano';

  @override
  String get choosePlanSubtitle => 'Pode alterar a escolha antes de comprar.';

  @override
  String get featureTasks => 'Missões alargadas';

  @override
  String get featureTasksSubtitle => 'Mais práticas e desafios';

  @override
  String get featureStats => 'Estatísticas completas';

  @override
  String get featureStatsSubtitle => 'Insights detalhados de progresso';

  @override
  String get profileEditTitle => 'Perfil';

  @override
  String get profileEditTapToChangePhoto => 'Toque na foto para alterar';

  @override
  String get profileEditNameLabel => 'Nome';

  @override
  String get profileEditNameHint => 'Introduza o seu nome';

  @override
  String get profileEditSaveButton => 'Guardar alterações';

  @override
  String get profileEditErrorEmptyName => 'Introduza um nome';

  @override
  String get profileEditSuccessUpdated => 'Perfil atualizado com sucesso';

  @override
  String profileEditErrorUpdate(String error) {
    return 'Falha ao atualizar o perfil: $error';
  }

  @override
  String get authWelcomeBack => 'Bem-vindo de volta!';

  @override
  String get authCreateAccount => 'Criar conta';

  @override
  String get authResetPassword => 'Redefinir palavra-passe';

  @override
  String get authLoginSubtitle => 'Inicie sessão para continuar o seu percurso';

  @override
  String get authRegisterSubtitle => 'Comece uma vida sem tabaco hoje';

  @override
  String get authForgotSubtitle =>
      'Introduza o seu email e enviaremos instruções';

  @override
  String get authTabLogin => 'Entrar';

  @override
  String get authTabRegister => 'Registar';

  @override
  String get authNameHint => 'O seu nome';

  @override
  String get authNameRequired => 'Introduza o seu nome';

  @override
  String get authEmailHint => 'Endereço de email';

  @override
  String get authEmailRequired => 'Introduza o email';

  @override
  String get authEmailInvalid => 'Email inválido';

  @override
  String get authPasswordHint => 'Palavra-passe';

  @override
  String get authPasswordRequired => 'Introduza a palavra-passe';

  @override
  String get authPasswordMinLength =>
      'A palavra-passe deve ter pelo menos 6 caracteres';

  @override
  String get authConfirmPasswordHint => 'Confirme a palavra-passe';

  @override
  String get authPasswordsDoNotMatch => 'As palavras-passe não coincidem';

  @override
  String get authForgotPassword => 'Esqueceu a palavra-passe?';

  @override
  String get authLoginButton => 'Entrar';

  @override
  String get authRegisterButton => 'Registar';

  @override
  String get authSendLinkButton => 'Enviar link';

  @override
  String get authBackToLogin => 'Voltar ao login';

  @override
  String get authOrContinueWith => 'ou continuar com';

  @override
  String get authGoogle => 'Google';

  @override
  String get authApple => 'Apple';

  @override
  String get authResetLinkSent =>
      'Link de redefinição enviado para o seu email!';

  @override
  String get authErrorGeneric => 'Algo correu mal. Verifique os dados.';

  @override
  String get authErrorSocial => 'Falha no início de sessão social.';

  @override
  String get profileYourProfile => 'O seu perfil';

  @override
  String get profileEdit => 'Editar perfil';

  @override
  String get switchAccountTitle => 'Iniciar sessão noutra conta?';

  @override
  String get switchAccountBody =>
      'A página de início de sessão irá abrir onde pode entrar noutra conta.';

  @override
  String get switchAccountButton => 'Iniciar sessão noutra conta';

  @override
  String get switchAccountSubtitle => 'Abrir página de início de sessão';

  @override
  String get continueAction => 'Continuar';

  @override
  String get logoutTitle => 'Terminar sessão?';

  @override
  String get logoutBody =>
      'Tem a certeza de que pretende terminar a sessão da sua conta?';

  @override
  String get logoutButton => 'Terminar sessão';

  @override
  String get premiumBrand => 'Puffree Premium';

  @override
  String get motStartJourney =>
      'Hoje começa a tua nova jornada. Um único passo já importa.';

  @override
  String get motMilestone1 =>
      'Primeiro dia. Deste o primeiro grande passo. Continua.';

  @override
  String get motMilestone3 =>
      'Três dias. Vale a pena celebrar. Manténs o teu rumo.';

  @override
  String get motMilestone7 =>
      'Uma semana inteira. Sete dias escolhendo o melhor para ti.';

  @override
  String get motMilestone10 =>
      '10 dias. Já criaste uma base sólida de confiança.';

  @override
  String get motMilestone14 =>
      'Duas semanas. Superaste uma parte importante do caminho.';

  @override
  String get motMilestone21 =>
      '21 dias. Estás a provar que és capaz de mudar os teus hábitos.';

  @override
  String get motMilestone30 =>
      '30 dias. Um mês inteiro de novas decisões. É um grande resultado.';

  @override
  String get motMilestone45 => '45 dias. Um mês e meio em frente.';

  @override
  String get motMilestone60 =>
      '60 dias. Dois meses de consistência. Um resultado muito forte.';

  @override
  String get motMilestone90 =>
      '90 dias. Três meses. Olha o quão longe já chegaste.';

  @override
  String get motMilestone120 =>
      '120 dias. Continuas a escolher o teu caminho todos os dias.';

  @override
  String get motMilestone180 =>
      'Meio ano. 180 dias de consistência. Realmente impressionante.';

  @override
  String get motMilestone270 =>
      '270 dias. Criaste uma distância enorme em relação ao antigo hábito.';

  @override
  String get motMilestone365 =>
      'Um ano. 365 dias da tua jornada. Não é sorte, é consistência.';

  @override
  String get motFirstWeek1 => 'Hoje só precisas de dar o passo seguinte.';

  @override
  String get motFirstWeek2 =>
      'Não tens de percorrer todo o caminho hoje. Apenas continua.';

  @override
  String get motFirstWeek3 =>
      'Cada dia é uma vitória individual. Hoje é a tua.';

  @override
  String get motFirstWeek4 => 'Um momento difícil não apaga o teu progresso.';

  @override
  String get motFirstWeek5 =>
      'Já começaste. Agora dá a ti mesmo a oportunidade de continuar.';

  @override
  String get motFirstWeek6 =>
      'Um dia de cada vez. É assim que as grandes mudanças acontecem.';

  @override
  String get motFirstWeek7 =>
      'Escolhes a ti mesmo vezes sem conta. Isso importa.';

  @override
  String get motSecondWeek1 => 'Já não estás onde começaste. Sigue em frente.';

  @override
  String get motSecondWeek2 =>
      'Duas semanas estão mais perto do que parece. Mantém o teu ritmo.';

  @override
  String get motSecondWeek3 => 'O teu progresso é feito de pequenas decisões.';

  @override
  String get motSecondWeek4 =>
      'Não me meças pelo dia perfeito. Cria o próximo dia bom.';

  @override
  String get motSecondWeek5 =>
      'És capaz de superar um momento de recaída e voltar ao plano.';

  @override
  String get motSecondWeek6 => 'Cada novo dia fortalece a tua confiança.';

  @override
  String get motSecondWeek7 =>
      'Já provaste que consegues aguentar momentos difíceis.';

  @override
  String get motFirstMonth1 =>
      'Estás a construir um novo hábito passo a passo.';

  @override
  String get motFirstMonth2 => 'O teu passado não determina a escolha de hoje.';

  @override
  String get motFirstMonth3 =>
      'Trinta dias começam com uma decisão: continuar.';

  @override
  String get motFirstMonth4 =>
      'A confiança cresce através de muitos dias consistentes.';

  @override
  String get motFirstMonth5 =>
      'Cada novo dia adiciona mais uma página à tua história.';

  @override
  String get motFirstMonth6 =>
      'O teu progresso pertence-te. Ninguém o pode tirar de ti.';

  @override
  String get motFirstMonth7 =>
      'Já chegaste longe o suficiente para te orgulhares.';

  @override
  String get motFirstMonth8 =>
      'Continua com calma. Grandes mudanças não exigem pressa.';

  @override
  String get motSecondMonth1 => 'Dois meses já não são coincidência.';

  @override
  String get motSecondMonth2 => 'Estás a transformar intenção em consistência.';

  @override
  String get motSecondMonth3 =>
      'A tua força está nas decisões que tomas todos os dias.';

  @override
  String get motSecondMonth4 =>
      'Já sabes que consegues lidar com momentos difíceis.';

  @override
  String get motSecondMonth5 => 'Continua a construir a vida que queres viver.';

  @override
  String get motSecondMonth6 =>
      'Cada dia longe do velho hábito é mais um passo em frente.';

  @override
  String get motSecondMonth7 =>
      'Não estás a competir com ninguém. O caminho é só teu.';

  @override
  String get motSecondMonth8 =>
      'Olha para trás e compara-te com o primeiro dia. O progresso é visível.';

  @override
  String get motThirdMonth1 =>
      'Três meses é uma distância séria. E tu continuas.';

  @override
  String get motThirdMonth2 => 'Criaste um novo ponto de partida para ti.';

  @override
  String get motThirdMonth3 =>
      'A consistência é mais forte que a motivação. Estás a prová-lo.';

  @override
  String get motThirdMonth4 =>
      'Continuas a escolher o que realmente importa para ti.';

  @override
  String get motThirdMonth5 =>
      'A cada dia, o velho padrão torna-se menos importante.';

  @override
  String get motThirdMonth6 =>
      'Já não esperas pelo momento certo. Tu crias o momento.';

  @override
  String get motThirdMonth7 =>
      '90 dias é uma história feita de muitas pequenas vitórias.';

  @override
  String get motThirdMonth8 => 'Chegaste longe. Não pares por aqui.';

  @override
  String get motLongTerm1 => 'Estás longe do ponto de partida. Continua.';

  @override
  String get motLongTerm2 =>
      'A liberdade começa com uma escolha e cresce com decisões diárias.';

  @override
  String get motLongTerm3 =>
      'O teu resultado é a soma de todos os dias em que continuaste.';

  @override
  String get motLongTerm4 =>
      'Criaste uma distância que antes julgavas impossível.';

  @override
  String get motLongTerm5 => 'Não te esqueças de por que começaste.';

  @override
  String get motLongTerm6 =>
      'Cada novo dia torna a tua história ainda mais forte.';

  @override
  String get motLongTerm7 =>
      'Não vais voltar para trás. Vais continuar para a frente.';

  @override
  String get motLongTerm8 =>
      'O que antes parecia difícil, hoje faz parte do teu caminho.';

  @override
  String get motLongTerm9 =>
      'Já provaste a ti mesmo o principal: mudar é possível.';

  @override
  String get motLongTerm10 => 'Continua a viver no teu novo ritmo.';

  @override
  String get motLevelDefault => 'Novo nível. Continuas a avançar.';

  @override
  String get motLevel1 =>
      'A jornada começou. O mais importante é dar o primeiro passo.';

  @override
  String get motLevel2 =>
      'O broto surgiu. Cuida do teu progresso todos os dias.';

  @override
  String get motLevel3 =>
      'Estás a crescer. Pequenas decisões criam grandes mudanças.';

  @override
  String get motLevel4 =>
      'As raízes fortalecem-se. Continua a construir a tua base.';

  @override
  String get motLevel5 => 'Estás mais confiante. Não percas o ritmo.';

  @override
  String get motLevel6 =>
      'A força surge quando continuas apesar das dificuldades.';

  @override
  String get motLevel7 => 'A tua determinação torna-se parte da tua história.';

  @override
  String get motLevel8 => 'A faísca transformou-se num movimento constante.';

  @override
  String get motLevel9 =>
      'Percorreste um longo caminho. Reconhece o teu progresso.';

  @override
  String get motLevel10 => 'Nível dez. Já conheces o valor da consistência.';

  @override
  String get motLevel11 =>
      'Continuas a crescer mesmo quando o caminho se torna difícil.';

  @override
  String get motLevel12 => 'Tornaste-te um exemplo para ti próprio. Continua.';

  @override
  String get motLevel13 =>
      'Ganhaste um grande impulso. Agora mantém a direção.';

  @override
  String get motLevel14 =>
      'Nível lendário. Olha para tudo o que já conquistaste.';

  @override
  String get motShort1 => 'Hoje é mais um passo.';

  @override
  String get motShort2 => 'Continua o teu caminho.';

  @override
  String get motShort3 => 'Estás a conseguir.';

  @override
  String get motShort4 => 'O teu progresso importa.';

  @override
  String get motShort5 => 'Não pares por causa de um momento difícil.';

  @override
  String get motShort6 => 'És mais forte do que o teu antigo hábito.';

  @override
  String get motShort7 => 'Escolhe o próximo passo.';

  @override
  String get motShort8 => 'Já começaste. Continua.';

  @override
  String get motShort9 => 'A escolha de hoje é importante.';

  @override
  String get motShort10 => 'Um dia de cada vez.';

  @override
  String get motShort11 => 'Podes fazer mais do que pensas.';

  @override
  String get motShort12 => 'A tua jornada pertence-te.';

  @override
  String get profileEditErrorPhotoNotFound =>
      'Não foi possível obter a foto selecionada';

  @override
  String get profileEditErrorOpenGallery => 'Não foi possível abrir a galeria';

  @override
  String get profileEditErrorPickPhoto =>
      'Ocorreu um erro ao selecionar a foto';

  @override
  String get featureMotivation => 'Motivação pessoal';

  @override
  String get featureMotivationSubtitle => 'Orientação para a sua jornada';

  @override
  String get featureSupport => 'Ferramentas de apoio extra';

  @override
  String get featureSupportSubtitle => 'Mais ajuda quando precisar';

  @override
  String get featureNotifications => 'Lembretes inteligentes';

  @override
  String get featureNotificationsSubtitle => 'Motivação no momento certo';

  @override
  String get featureAds => 'Sem anúncios';

  @override
  String get featureAdsSubtitle => 'Experiência calma e limpa';

  @override
  String get planMonthly => 'Mensal';

  @override
  String get planMonthlySubtitle => 'Flexível, sem compromisso longo';

  @override
  String get planYearly => 'Anual';

  @override
  String get planYearlySubtitle =>
      'Melhor equilíbrio entre preço e funcionalidades';

  @override
  String get planLifetime => 'Vitalício';

  @override
  String get planLifetimeSubtitle => 'Um pagamento — Premium para sempre';

  @override
  String get perMonth => '/ mês';

  @override
  String get perYear => '/ ano';

  @override
  String get bestValue => 'MELHOR VALOR';

  @override
  String get oneTime => 'ÚNICO';

  @override
  String get buyMonthly => 'Obter Premium mensal';

  @override
  String get buyYearly => 'Obter Premium anual';

  @override
  String get buyLifetime => 'Obter Premium para sempre';

  @override
  String get restorePurchases => 'Restaurar compras';

  @override
  String get securePurchase => 'Compra segura';

  @override
  String get cancelAnytime => 'Cancele a qualquer momento';

  @override
  String get restoreAnytime => 'As compras podem ser restauradas';

  @override
  String get legalMonthly =>
      'A subscrição renova-se automaticamente todos os meses. Pode cancelar nas definições da App Store ou Google Play. O preço é mostrado antes da confirmação da compra.';

  @override
  String get legalYearly =>
      'A subscrição renova-se automaticamente todos os anos. Pode cancelar nas definições da App Store ou Google Play. O preço é mostrado antes da confirmação da compra.';

  @override
  String get legalLifetime =>
      'Esta é uma compra única e não se renova automaticamente. O preço é mostrado antes da confirmação da compra.';

  @override
  String get legalContactEmail => 'support@puffreeapp.com';

  @override
  String get privacyPolicyTitle => 'Política de Privacidade';

  @override
  String get privacyPolicyLastUpdated => 'Última atualização: janeiro de 2026';

  @override
  String get privacyPolicyIntro =>
      'O Puffree (\"nós\", \"nosso\", \"o aplicativo\") ajuda você a acompanhar sua jornada para parar de fumar e a manter a motivação. Esta política explica quais informações coletamos, como as utilizamos e quais opções você tem.';

  @override
  String get privacySection1Title => 'Informações que coletamos';

  @override
  String get privacySection1Body =>
      'Os dados da conta que você fornece ao fazer login (endereço de e-mail, nome de exibição e foto do perfil) ou um identificador anônimo caso use o aplicativo sem uma conta. Também armazenamos os dados relacionados ao período sem fumar que você mesmo informa, como a data em que parou de fumar, cigarros por dia, custo por maço e os desejos de fumar que você registra.';

  @override
  String get privacySection2Title => 'Como usamos suas informações';

  @override
  String get privacySection2Body =>
      'Para calcular seu período sem fumar, marcos de saúde e dinheiro economizado; sincronizar seu progresso entre dispositivos; enviar lembretes motivacionais e notificações opcionais; processar compras da assinatura Premium; diagnosticar falhas e melhorar o aplicativo.';

  @override
  String get privacySection3Title => 'Armazenamento e segurança dos dados';

  @override
  String get privacySection3Body =>
      'Seus dados são armazenados usando o Firebase (Google Cloud) e protegidos por criptografia durante a transmissão. Aplicamos medidas técnicas e organizacionais razoáveis de proteção, mas nenhum método de armazenamento ou transmissão de dados pela Internet é completamente seguro.';

  @override
  String get privacySection4Title => 'Serviços de terceiros';

  @override
  String get privacySection4Body =>
      'Usamos o Firebase Authentication e o Cloud Firestore para gerenciar contas e sincronizar dados, e os sistemas de cobrança da Apple App Store ou do Google Play para processar assinaturas Premium. Não vendemos suas informações pessoais a terceiros.';

  @override
  String get privacySection5Title => 'Suas escolhas e direitos';

  @override
  String get privacySection5Body =>
      'Você pode visualizar ou editar seu perfil a qualquer momento, redefinir seu progresso local nas Configurações, desativar as notificações push nas configurações do dispositivo e solicitar acesso, correção ou exclusão dos seus dados entrando em contato conosco.';

  @override
  String get privacySection6Title => 'Privacidade de crianças';

  @override
  String get privacySection6Body =>
      'O Puffree não é destinado a crianças menores de 13 anos (ou menores de 16 anos na União Europeia) e não coletamos intencionalmente informações pessoais delas. Se você acredita que uma criança forneceu dados a nós, entre em contato para que possamos excluí-los.';

  @override
  String get privacySection7Title => 'Aviso sobre saúde';

  @override
  String get privacySection7Body =>
      'O Puffree é uma ferramenta de acompanhamento de hábitos criada para apoiar sua jornada sem fumar. Não é um dispositivo médico e não fornece aconselhamento médico, diagnóstico ou tratamento. Consulte sempre um profissional de saúde qualificado sobre como parar de fumar.';

  @override
  String get privacySection8Title => 'Alterações e contato';

  @override
  String get privacySection8Body =>
      'Podemos atualizar esta política periodicamente; alterações significativas serão comunicadas no aplicativo. Se você tiver dúvidas sobre esta política ou sobre seus dados, entre em contato conosco usando as informações de contato abaixo.';

  @override
  String get termsOfUseTitle => 'Termos de Uso';

  @override
  String get termsOfUseLastUpdated => 'Última atualização: janeiro de 2026';

  @override
  String get termsOfUseIntro =>
      'Estes Termos de Uso regem seu acesso ao Puffree e o uso do aplicativo. Ao criar uma conta ou usar o aplicativo, você concorda com estes termos. Se não concordar, não use o aplicativo.';

  @override
  String get termsSection1Title => 'Aceitação dos termos';

  @override
  String get termsSection1Body =>
      'Ao baixar, instalar ou usar o Puffree, você confirma que aceita estes Termos de Uso e nossa Política de Privacidade e que possui capacidade legal para celebrar este acordo.';

  @override
  String get termsSection2Title => 'Descrição do serviço';

  @override
  String get termsSection2Body =>
      'O Puffree é um aplicativo de acompanhamento de hábitos e motivação que ajuda você a monitorar seu progresso após parar de fumar, incluindo período sem fumar, marcos de saúde, dinheiro economizado e registros de desejos de fumar. É uma ferramenta pessoal de bem-estar, não um serviço médico ou clínico.';

  @override
  String get termsSection3Title => 'Elegibilidade e contas';

  @override
  String get termsSection3Body =>
      'Você deve ter pelo menos 13 anos (ou a idade mínima para consentimento digital em seu país) para usar o Puffree. Você é responsável por manter a confidencialidade da sua conta e por todas as atividades realizadas por meio dela.';

  @override
  String get termsSection4Title => 'Assinaturas Premium e cobrança';

  @override
  String get termsSection4Body =>
      'Os recursos Premium são oferecidos por meio de uma assinatura com renovação automática, cobrada pela Apple App Store ou pelo Google Play. As assinaturas são renovadas automaticamente, a menos que sejam canceladas pelo menos 24 horas antes do final do período atual. Os reembolsos são processados de acordo com a política da loja correspondente.';

  @override
  String get termsSection5Title => 'Aviso sobre saúde e medicina';

  @override
  String get termsSection5Body =>
      'O Puffree não fornece aconselhamento médico e não substitui cuidados profissionais. Parar de fumar pode causar sintomas de abstinência; consulte um médico ou profissional de saúde licenciado antes de tomar decisões relacionadas à sua saúde.';

  @override
  String get termsSection6Title => 'Uso aceitável';

  @override
  String get termsSection6Body =>
      'Você concorda em não fazer uso indevido do aplicativo, tentar realizar engenharia reversa ou interromper seus serviços, enviar conteúdo ilegal ou prejudicial, ou usar o aplicativo de qualquer forma que viole as leis aplicáveis ou os direitos de terceiros.';

  @override
  String get termsSection7Title =>
      'Isenção de responsabilidade e limitação de responsabilidade';

  @override
  String get termsSection7Body =>
      'O Puffree é fornecido \"como está\", sem garantias de qualquer tipo. Na máxima extensão permitida por lei, não somos responsáveis por quaisquer danos indiretos, incidentais ou consequenciais decorrentes do uso do aplicativo.';

  @override
  String get termsSection8Title => 'Alterações destes termos e contato';

  @override
  String get termsSection8Body =>
      'Podemos atualizar estes Termos periodicamente; o uso contínuo do aplicativo após a entrada em vigor das alterações constitui aceitação dos Termos revisados. As dúvidas podem ser enviadas para o endereço de contato abaixo.';

  @override
  String get systemThemeLabel => 'Sistema';

  @override
  String get notificationsEnabledLabel => 'Notificações ativadas';

  @override
  String get notificationsDisabledLabel => 'Notificações desativadas';

  @override
  String get signInToAnotherAccount => 'Entrar em outra conta';

  @override
  String get openSignInPage => 'Abrir página de login';

  @override
  String get securePayment => 'Pagamento seguro';
}
