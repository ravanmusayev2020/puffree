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
}
