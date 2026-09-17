// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Puffree';

  @override
  String get tagline => 'Libertad del tabaco';

  @override
  String get today => 'Hoy';

  @override
  String get streak => 'Racha';

  @override
  String get saved => 'Ahorrado';

  @override
  String get avoided => 'Evitado';

  @override
  String get totalDays => 'Días totales';

  @override
  String get dailyMotivation => 'Motivación diaria';

  @override
  String get checkIn => 'No fumé hoy';

  @override
  String get checkedInToday => 'Registrado hoy';

  @override
  String get missions => 'Misiones diarias';

  @override
  String completedOf(int completed, int total) {
    return 'Completado $completed de $total';
  }

  @override
  String get premium => 'Premium';

  @override
  String get tryFree => 'Prueba 3 días gratis';

  @override
  String get buyPremium => 'Comprar Premium';

  @override
  String get restore => 'Restaurar compras';

  @override
  String get premiumHint => 'Desbloquea todas las funciones con Premium';

  @override
  String get settings => 'Ajustes';

  @override
  String get progress => 'Tu progreso';

  @override
  String get statistics => 'Estadísticas';

  @override
  String get currentStreak => 'Racha actual';

  @override
  String get record => 'Récord';

  @override
  String get bodyChanges => 'Qué le pasa a tu cuerpo';

  @override
  String get resetProgress => 'Restablecer progreso';

  @override
  String get resetConfirm =>
      'Se borrarán todos los datos sobre días, racha y estadísticas. Esto no se puede deshacer.';

  @override
  String get cancel => 'Cancelar';

  @override
  String get reset => 'Restablecer';

  @override
  String get journalTitle => 'Diario';

  @override
  String get journalHint => 'Escribe tus pensamientos';

  @override
  String get journalPlaceholder => '¿Cómo te sientes hoy?';

  @override
  String get save => 'Guardar';

  @override
  String get moodCheck => '¿Cómo te sientes?';

  @override
  String get moodCheckHint => 'Tómate un momento para conectar contigo mismo.';

  @override
  String get version => 'Versión';

  @override
  String get privacy => 'Política de privacidad';

  @override
  String get terms => 'Términos de uso';

  @override
  String get disclaimer =>
      'Puffree es una aplicación motivacional. No es un dispositivo médico y no sustituye el consejo médico profesional. Si tienes una fuerte adicción a la nicotina, consulta con un especialista.';

  @override
  String level(int number) {
    return 'Nivel $number';
  }

  @override
  String daysSmokeFree(int count) {
    return '$count días sin fumar';
  }

  @override
  String nextLevelProgress(int percent) {
    return '$percent% para el siguiente nivel';
  }

  @override
  String get friend => 'Amigo';

  @override
  String helloName(String name) {
    return '¡Hola, $name!';
  }

  @override
  String get pathToFreedom => 'Tu camino hacia la libertad';

  @override
  String get withoutCigs => 'sin cigarrillos';

  @override
  String get iSmoked => 'Fumé';

  @override
  String get relapseTitle => 'No pasa nada';

  @override
  String get relapseBody =>
      'Un cigarrillo no borra tu progreso. Aprende de este momento y sigue adelante.';

  @override
  String get relapseDone => 'Continuar';

  @override
  String get home => 'Inicio';

  @override
  String get tasks => 'Tareas';

  @override
  String get missionBreathe => 'Respiración profunda';

  @override
  String get missionWater => 'Beber agua';

  @override
  String get missionWalk => 'Caminata de 10 min';

  @override
  String get missionJournal => 'Escribe un pensamiento';

  @override
  String get missionMeditation => 'Meditación de 5 min';

  @override
  String get missionFocus => 'Enfoque sin teléfono';

  @override
  String get missionReflect => 'Reflexión del día';

  @override
  String get missionHelp => 'Apoya a alguien';

  @override
  String get missionBreatheDesc =>
      'Toma algunas respiraciones lentas y profundas.';

  @override
  String get missionWaterDesc => 'Bebe un vaso de agua.';

  @override
  String get missionWalkDesc => 'Da una caminata de 10 minutos.';

  @override
  String get missionJournalDesc => 'Escribe un pensamiento sobre tu día.';

  @override
  String get missionMeditationDesc => 'Tómate 5 minutos para meditar.';

  @override
  String get missionFocusDesc => 'Pasa un tiempo enfocado sin tu teléfono.';

  @override
  String get missionReflectDesc => 'Piensa en cómo fue tu día.';

  @override
  String get missionHelpDesc => 'Haz algo amable para apoyar a alguien.';

  @override
  String get sosTitle => 'Soporte SOS';

  @override
  String get sosTimer => 'Temporizador de antojo';

  @override
  String get sosBreathe => 'Respirar';

  @override
  String get sosChat => 'Hablar';

  @override
  String get sosStart => 'Iniciar';

  @override
  String get sosDone => 'Hecho';

  @override
  String get sosManaged => '¡Controlaste el antojo!';

  @override
  String get sosWon => '¡Ganaste!';

  @override
  String get sosLeft => 'restante';

  @override
  String get sosTip1 => 'Toma algunas respiraciones lentas y profundas.';

  @override
  String get sosTip2 => 'Bebe un vaso de agua.';

  @override
  String get sosTip3 => 'Muévete a un lugar diferente.';

  @override
  String get sosTip4 => 'Mantén tus manos ocupadas.';

  @override
  String get sosTip5 => 'Piensa en por qué empezaste.';

  @override
  String get sosTip6 => 'Dale al antojo unos minutos para que pase.';

  @override
  String get breatheIn => 'Inhala';

  @override
  String get breatheHold => 'Retén';

  @override
  String get breatheOut => 'Exhala';

  @override
  String get breatheHint => 'Sigue el círculo y respira lentamente.';

  @override
  String get breatheStart => 'Iniciar respiración';

  @override
  String get chatPick => '¿Qué estás sintiendo ahora mismo?';

  @override
  String get chatCraving => 'Tengo un antojo';

  @override
  String get chatStress => 'Estoy estresado';

  @override
  String get chatBoredom => 'Estoy aburrido';

  @override
  String get chatNeedWalk => 'Necesito una caminata';

  @override
  String get chatNeedWater => 'Necesito agua';

  @override
  String get chatNeedBreathe => 'Necesito respirar';

  @override
  String get chatIntroStress =>
      'Parece que te sientes estresado. Superemos este momento juntos.';

  @override
  String get chatIntroBoredom =>
      'El aburrimiento puede hacer que los antojos se sientan más fuertes. Busquemos otra cosa en qué enfocarnos.';

  @override
  String get chatIntroCraving =>
      'Un antojo puede sentirse intenso, pero pasará. Tomémoslo momento a momento.';

  @override
  String get chatReplyStress =>
      'Intenta tomar algunas respiraciones lentas y date un breve descanso. No tienes que ceder al antojo.';

  @override
  String get chatReplyBoredom =>
      'Cambiemos de entorno. Da una caminata corta, bebe agua o haz algo que mantenga tus manos ocupadas.';

  @override
  String get chatReplyCraving =>
      'Espera unos minutos antes de tomar cualquier decisión. Bebe agua, respira lentamente y recuerda por qué empezaste.';

  @override
  String get onboardingTitle1 => 'Respira libremente';

  @override
  String get onboardingDesc1 =>
      'Puffree te ayuda a dejar de fumar paso a paso, sin presiones y con apoyo.';

  @override
  String get onboardingTitle2 => 'Niveles y progreso';

  @override
  String get onboardingDesc2 =>
      'Cada día sin un cigarrillo desbloquea un nuevo nivel. Mira cómo crecen tu fuerza y tu salud.';

  @override
  String get onboardingTitle3 => 'Soporte diario';

  @override
  String get onboardingDesc3 =>
      'Motivación, misiones y seguimiento del progreso. No estás solo en este camino.';

  @override
  String get aboutYou => 'Un poco sobre ti';

  @override
  String get aboutYouDesc =>
      'Esto ayuda a calcular el dinero y los cigarrillos ahorrados';

  @override
  String get cigsPerDay => 'Cigarrillos por día antes';

  @override
  String get pricePerPack => 'Precio por paquete';

  @override
  String get startJourney => 'Iniciar el viaje';

  @override
  String get next => 'Siguiente';

  @override
  String get skip => 'Omitir';

  @override
  String get youGotThis => 'Tú puedes con esto. Un momento a la vez.';

  @override
  String get waitTheWave => 'Supera la ola del antojo';

  @override
  String get youPassedThis => 'Superaste este momento';

  @override
  String get greatJob => 'Buen trabajo. Tú tienes el control.';

  @override
  String get giveYourselfMinutes =>
      'Date unos minutos y enfócate en el presente.';

  @override
  String get keepGoing => 'CONTINUAR';

  @override
  String get done => 'HECHO';

  @override
  String get breatheSlowly => 'Respira lentamente';

  @override
  String get followTheCircle => 'Sigue el ritmo del círculo';

  @override
  String get chooseWhatFits =>
      'Elige lo que mejor se adapte a cómo te sientes ahora mismo.';

  @override
  String get yourResults => 'Tus resultados';

  @override
  String get whatChanged => 'Lo que ya ha cambiado gracias a ti';

  @override
  String get recoveryPath => 'Camino de recuperación';

  @override
  String get everyMilestone => 'Cada logro es un paso más hacia adelante';

  @override
  String get levelProgress => 'Progreso al siguiente nivel';

  @override
  String get yourPathContinues => 'Tu camino continúa';

  @override
  String get daysWordOne => 'día';

  @override
  String get daysWordFew => 'días';

  @override
  String get daysWordMany => 'días';

  @override
  String get momentum => 'IMPULSO';

  @override
  String missionsLeft(int count) {
    return 'Quedan $count misiones';
  }

  @override
  String get allMissionsDone => 'Todas las misiones completadas';

  @override
  String get dayComplete => 'Día completo';

  @override
  String get keepGoingShort => 'Sigue así';

  @override
  String get inProgress => 'EN PROGRESO';

  @override
  String get complete => 'COMPLETO';

  @override
  String get yourPlanToday => 'Tu plan para hoy';

  @override
  String get everythingDone => 'Todo completado';

  @override
  String get theme => 'Tema';

  @override
  String get language => 'Idioma';

  @override
  String get notifications => 'Notificaciones';

  @override
  String get notificationsHint => 'Recordatorios y motivación';

  @override
  String get data => 'Datos';

  @override
  String get aboutApp => 'Acerca de la app';

  @override
  String get appTheme => 'Tema de la app';

  @override
  String get chooseTheme => 'Elige cómo debe verse Puffree.';

  @override
  String get systemTheme => 'Sistema';

  @override
  String get systemThemeDesc => 'Sigue los ajustes del teléfono';

  @override
  String get lightTheme => 'Claro';

  @override
  String get lightThemeDesc => 'Usar siempre el tema claro';

  @override
  String get darkTheme => 'Oscuro';

  @override
  String get darkThemeDesc => 'Usar siempre el tema oscuro';

  @override
  String get premiumActive => 'Premium está activo';

  @override
  String get trialActive => 'El período de prueba está activo';

  @override
  String get fullAccess => 'Acceso completo a todas las funciones';

  @override
  String get openPremium => 'Abrir Premium y opciones de suscripción';

  @override
  String get resetProgressTitle => '¿Restablecer progreso?';

  @override
  String get resetProgressBody =>
      'Se borrarán todos los datos sobre días, racha y estadísticas. Esta acción no se puede deshacer.';

  @override
  String get excellent => '¡Excelente!';

  @override
  String get anotherDayFree => 'Otro día sin cigarrillos';

  @override
  String get continueBtn => 'Continuar';

  @override
  String get newAchievement => 'NUEVO LOGRO';

  @override
  String get newLevel => '¡Nuevo nivel!';

  @override
  String get levelUpMessage => 'Sigue así, ¡lo estás haciendo genial!';

  @override
  String get freeFor => 'LIBRE DESDE HACE';

  @override
  String get toNextLevel => 'Al siguiente nivel';

  @override
  String get keyResults => 'RESULTADOS CLAVE';

  @override
  String get progressSystem => 'SISTEMA DE PROGRESO';

  @override
  String get everyDayCloser => 'Cada día te acerca al siguiente nivel';

  @override
  String get current => 'Actual';

  @override
  String get nextLevel => 'Siguiente';

  @override
  String get smallSteps => 'Pequeños pasos. Grandes cambios.';

  @override
  String get youAreFurther => 'Ya estás más lejos que ayer';

  @override
  String get madeForFuture => 'Hecho para un futuro sin humo';

  @override
  String get dayStreakCaption => 'días seguidos';

  @override
  String get cigarettesAvoidedCaption => 'evitados';

  @override
  String get freeDaysCaption => 'días libres';

  @override
  String get levelLabel => 'Nivel';

  @override
  String get keepStreakAlive => 'Mantén tu racha activa';

  @override
  String get failedToLoadProgress => 'Error al cargar el progreso';

  @override
  String get levelTitle1 => 'Primer Suspiro';

  @override
  String get levelTitle2 => 'Brote';

  @override
  String get levelTitle3 => 'Crecimiento';

  @override
  String get levelTitle4 => 'Raíces';

  @override
  String get levelTitle5 => 'Tronco';

  @override
  String get levelTitle6 => 'Fuerza';

  @override
  String get levelTitle7 => 'Fuego';

  @override
  String get levelTitle8 => 'Chispa';

  @override
  String get levelTitle9 => 'Campeón';

  @override
  String get levelTitle10 => 'Maestro';

  @override
  String get levelTitle11 => 'Diamante';

  @override
  String get levelTitle12 => 'Estrella';

  @override
  String get levelTitle13 => 'Cohete';

  @override
  String get levelTitle14 => 'Leyenda';

  @override
  String get levelTitleDefault => 'Camino';

  @override
  String get milestone1Title => 'Inicio de un nuevo camino';

  @override
  String get milestone1Desc => 'Ya has dado el primer paso y sigues avanzando.';

  @override
  String get milestone2Title => 'Primeros cambios';

  @override
  String get milestone2Desc =>
      'El cuerpo se adapta gradualmente a la vida sin cigarrillos.';

  @override
  String get milestone3Title => 'Nueva etapa';

  @override
  String get milestone3Desc =>
      'Poco a poco se forma un nuevo ritmo sin el hábito.';

  @override
  String get milestone4Title => 'Progreso seguro';

  @override
  String get milestone4Desc =>
      'Dos semanas es un hito notable en el camino hacia un nuevo hábito.';

  @override
  String get milestone5Title => 'El gran hábito cambia';

  @override
  String get milestone5Desc =>
      'Un mes de constancia es un resultado personal serio.';

  @override
  String get milestone6Title => 'Gran frontera';

  @override
  String get milestone6Desc =>
      'Continuar el camino ayuda a consolidar un nuevo estilo de vida.';

  @override
  String get milestone7Title => 'Año de libertad';

  @override
  String get milestone7Desc =>
      'Un año sin cigarrillos es un gran hito en tu camino.';

  @override
  String get navProgress => 'Progreso';

  @override
  String get more => 'Más';

  @override
  String get settingsSubtitle => 'Personaliza Puffree a tu gusto';

  @override
  String get sectionApp => 'App';

  @override
  String get sectionData => 'Datos';

  @override
  String get sectionAbout => 'Acerca de';

  @override
  String get resetProgressSubtitle => 'Empezar el camino de nuevo';

  @override
  String get premiumActiveBadge => 'ACTIVO';

  @override
  String get splashCaption => 'Libertad del tabaco';

  @override
  String get todayStartJourney => 'Hoy es el comienzo de tu nuevo camino.';

  @override
  String realResultKeepGoing(int count, String daysWord) {
    return '$count $daysWord ya es un resultado real. Continúa.';
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
}
