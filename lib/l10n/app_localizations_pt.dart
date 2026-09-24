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
}
