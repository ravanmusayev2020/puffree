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

  @override
  String get onbTitle1 => '¿Qué usas?';

  @override
  String get onbSubtitle1 => 'Personalizaremos todo según tu hábito.';

  @override
  String get onbTitle2 => '¿Cuánto usas?';

  @override
  String get onbSubtitle2 =>
      'Números honestos nos ayudan a calcular tu progreso real.';

  @override
  String get onbTitle3 => '¿Cuánto te cuesta?';

  @override
  String get onbSubtitle3 => 'Descubre cuánto dinero puedes ahorrar cada mes.';

  @override
  String get onbTitle4 => '¿Cómo se siente tu cuerpo?';

  @override
  String get onbSubtitle4 =>
      'Selecciona los síntomas que notes con más frecuencia.';

  @override
  String get onbTitle5 => '¿Por qué quieres dejarlo?';

  @override
  String get onbSubtitle5 =>
      'Tus razones impulsarán el plan que creamos para ti.';

  @override
  String get onbTitle6 => 'Creando tu plan';

  @override
  String get onbSubtitle6 =>
      'Estamos creando un camino personalizado solo para ti.';

  @override
  String get onbTitle7 => 'Tu plan está listo';

  @override
  String get onbSubtitle7 => 'Empieza tu viaje con un plan hecho para ti.';

  @override
  String get onbEyebrowBeforeStart => 'ANTES DE EMPEZAR';

  @override
  String get onbEyebrowStartingPoint => 'PUNTO DE PARTIDA';

  @override
  String get onbEyebrowRealCost => 'COSTE REAL';

  @override
  String get onbEyebrowSelfAwareness => 'AUTOCONOCIMIENTO';

  @override
  String get onbEyebrowYourReason => 'TU RAZÓN';

  @override
  String get onbEyebrowPersonalization => 'PERSONALIZACIÓN';

  @override
  String get onbEyebrowDone => 'ESTÁS LISTO';

  @override
  String get onbHabitCigarettesTitle => 'Cigarrillos';

  @override
  String get onbHabitCigarettesSubtitle => 'Cigarrillos normales o liados';

  @override
  String get onbHabitVapeTitle => 'Vape / Pods';

  @override
  String get onbHabitVapeSubtitle =>
      'Cigarrillos electrónicos y sistemas de pods';

  @override
  String get onbPodsPerWeekLabel => 'Pods por semana';

  @override
  String get onbCigarettesPerDayLabel => 'Cigarrillos por día';

  @override
  String get onbYearsSmokedLabel => 'Años fumando';

  @override
  String get onbUnitPieces => 'uds';

  @override
  String get onbUnitYears => 'años';

  @override
  String get onbAmountVapeHint =>
      'Esto nos ayuda a estimar tu coste semanal y tu progreso.';

  @override
  String get onbPotentialSavingsLabel => 'Ahorro mensual potencial';

  @override
  String get onbPerMonthQuitting => 'al mes cuando lo dejes';

  @override
  String get onbPricePerPodLabel => 'Precio por pod';

  @override
  String get onbPricePerPackLabel => 'Precio por paquete';

  @override
  String get onbCigarettesPerPackLabel => 'Cigarrillos por paquete';

  @override
  String get onbCurrencyLabel => 'Moneda';

  @override
  String get onbSymptomBreath => 'Falta de aire';

  @override
  String get onbSymptomAnxiety => 'Ansiedad / inquietud';

  @override
  String get onbSymptomPulse => 'Latido rápido o irregular';

  @override
  String get onbSymptomMorning => 'Tos matutina / flema';

  @override
  String get onbSymptomCough => 'Tos frecuente';

  @override
  String get onbBodyHint =>
      'Puedes seleccionar varios. Esto nos ayuda a centrarnos en lo que te importa.';

  @override
  String get onbMotivationHealth => 'Mejor salud y energía';

  @override
  String get onbMotivationFreedom => 'Libertad de la adicción';

  @override
  String get onbMotivationMoney => 'Ahorrar dinero';

  @override
  String get onbMotivationFamily => 'Por mi familia / hijos';

  @override
  String get onbMotivationControl => 'Recuperar el control de mi vida';

  @override
  String get onbMotivationFuture => 'Un futuro más saludable';

  @override
  String get onbSelectMultipleHint => 'Puedes seleccionar varias razones';

  @override
  String get onbStartingMapLabel => 'Creando tu mapa';

  @override
  String get onbBuildingStepSave => 'Calculando tus ahorros';

  @override
  String get onbBuildingStepGoal => 'Estableciendo tu objetivo principal';

  @override
  String get onbBuildingStepScenarios => 'Creando escenarios personales';

  @override
  String get onbBuildingStepSteps => 'Preparando los primeros pasos';

  @override
  String get onbBuildingHint => 'Esto suele tardar solo unos segundos.';

  @override
  String get onbPleaseWait => 'Por favor espera un momento…';

  @override
  String get onbCreatingPlan => 'Creando tu plan…';

  @override
  String get onbFirst30DaysLabel => 'Primeros 30 días';

  @override
  String get onbLessExpensesLabel => 'Menos gastos';

  @override
  String get onbSavingsPerMonth => 'Ahorrado al mes';

  @override
  String get onbSavingsPerYear => 'Ahorrado al año';

  @override
  String get onbPlanPersonalizedTitle => 'Tu plan personalizado';

  @override
  String onbPlanPersonalizedSubtitle(int motivations, int symptoms) {
    return 'Basado en $motivations razones y $symptoms síntomas';
  }

  @override
  String get onbResultHint =>
      'Siempre puedes ajustar estos números más tarde en la configuración.';

  @override
  String get onbBreathingHint => 'RESPIRA';

  @override
  String get onbContinue => 'Continuar';

  @override
  String get onbStartJourney => 'Empezar mi viaje';

  @override
  String get onboardingHabitTitle => '¿Listo para recuperar el control?';

  @override
  String get onboardingHabitSubtitle =>
      'Primero entendamos tu hábito. Sin formularios largos: unas respuestas precisas y Puffree construirá tu camino.';

  @override
  String get onboardingAmountTitle => 'Describe tu día típico';

  @override
  String get onboardingAmountSubtitle =>
      'Esto no es para juzgarte. Es el punto de partida desde el que mediremos el progreso.';

  @override
  String get onboardingMoneyTitle => '¿Cuánto te quita el hábito?';

  @override
  String get onboardingMoneySubtitle =>
      'El precio cambia al instante en pantalla: ves no un número abstracto, sino el coste real del hábito.';

  @override
  String get onboardingBodyTitle => '¿Qué notas en ti?';

  @override
  String get onboardingBodySubtitle =>
      'Marca lo que te pasa. Puedes elegir varias opciones o ninguna.';

  @override
  String get onboardingMotivationTitle => '¿Por qué lo haces?';

  @override
  String get onboardingMotivationSubtitle =>
      'Esto se convertirá en tu ancla personal. Puffree te devolverá a esta razón cuando lo necesites.';

  @override
  String get onboardingBuildingTitle => 'Construyendo tu camino';

  @override
  String get onboardingBuildingSubtitle =>
      'No es un diagnóstico médico ni la promesa de un día perfecto. Solo tu punto de partida y pasos claros.';

  @override
  String get onboardingResultTitle =>
      'Tu primera pantalla de progreso ya está aquí';

  @override
  String get onboardingResultSubtitle =>
      'Guardamos los datos iniciales en el dispositivo y los convertimos en progreso medible.';

  @override
  String get onboardingEyebrowBeforeStart => 'ANTES DE EMPEZAR';

  @override
  String get onboardingEyebrowStartPoint => 'TU PUNTO DE PARTIDA';

  @override
  String get onboardingEyebrowRealCost => 'EL COSTE REAL';

  @override
  String get onboardingEyebrowSelfFeeling => 'CÓMO TE SIENTES';

  @override
  String get onboardingEyebrowYourReason => 'TU RAZÓN';

  @override
  String get onboardingEyebrowPersonalization => 'PERSONALIZACIÓN';

  @override
  String get onboardingEyebrowDone => 'LISTO';

  @override
  String get onboardingCigarettesChoice => 'Fumo cigarrillos';

  @override
  String get onboardingCigarettesChoiceSubtitle =>
      'El escenario principal de Puffree';

  @override
  String get onboardingVapeChoice => 'Uso un vape';

  @override
  String get onboardingVapeChoiceSubtitle =>
      'Guardaremos esta elección en tu perfil';

  @override
  String get onboardingPodsPerWeek => 'Pods / desechables por semana';

  @override
  String get onboardingUnitPcs => 'uds.';

  @override
  String get onboardingVapeHint =>
      'Más adelante, el perfil de Puffree podrá separar escenarios de cigarrillos y vape sin perder el historial.';

  @override
  String get onboardingCigarettesPerDay => 'Cigarrillos al día';

  @override
  String get onboardingYearsSmoked => 'Cuántos años lleva esto';

  @override
  String get onboardingUnitYears => 'años';

  @override
  String get onboardingPricePerPod => 'Precio de un pod';

  @override
  String get onboardingPricePerPack => 'Precio del paquete';

  @override
  String get onboardingCigarettesPerPack => 'Cigarrillos por paquete';

  @override
  String get onboardingPotentialSavings => 'Ahorro potencial';

  @override
  String get onboardingPerMonthIfQuit => 'al mes si dejas el hábito';

  @override
  String get onboardingCurrency => 'Moneda';

  @override
  String get onboardingSymptomBreath =>
      'Siento que la respiración se ha vuelto más pesada';

  @override
  String get onboardingSymptomAnxiety => 'A veces siento una fuerte ansiedad';

  @override
  String get onboardingSymptomPulse => 'Noto el pulso acelerado';

  @override
  String get onboardingSymptomMorning =>
      'Me apetece especialmente el primer cigarrillo por la mañana';

  @override
  String get onboardingSymptomCough => 'Tengo tos matutina';

  @override
  String get onboardingBodyHint =>
      'Esto es una autodescripción, no un diagnóstico. Si los síntomas te preocupan, es mejor hablarlo con un médico.';

  @override
  String get onboardingMotivationHealth => 'Quiero cuidar mejor de mi salud';

  @override
  String get onboardingMotivationFreedom => 'Quiero sentirme más libre';

  @override
  String get onboardingMotivationMoney =>
      'Quiero dejar de gastar dinero en esto';

  @override
  String get onboardingMotivationFamily =>
      'Quiero depender menos del hábito cerca de mis seres queridos';

  @override
  String get onboardingMotivationControl =>
      'Quiero recuperar la sensación de control';

  @override
  String get onboardingMotivationFuture => 'Quiero hacerlo por mi futuro';

  @override
  String get onboardingCanSelectSeveral => 'Puedes elegir varias';

  @override
  String get onboardingYourStartCard => 'tu tarjeta de inicio';

  @override
  String get onboardingStepSaveAnswers => 'Guardando tus respuestas';

  @override
  String get onboardingStepFinancialGoal => 'Calculando el objetivo financiero';

  @override
  String get onboardingStepCravingScenarios =>
      'Formando escenarios para el craving';

  @override
  String get onboardingStepFirstSteps => 'Preparando los primeros pasos';

  @override
  String get onboardingBuildingHint =>
      'Deliberadamente no prometemos «regeneración pulmonar en X horas»: Puffree muestra cosas medibles y separa el hecho de la motivación.';

  @override
  String get onboardingSavingsPerMonth => 'ahorro / mes';

  @override
  String get onboardingSavingsPerYear => 'ahorro / año';

  @override
  String get onboardingResultHint =>
      'Estos números son un cálculo según tus respuestas, no una promesa de resultados. El progreso real depende de tu comportamiento.';

  @override
  String get onboardingFirst30Days => 'Primeros 30 días';

  @override
  String get onboardingLessSpendMoreControl => 'menos gasto → más control';

  @override
  String get onboardingPlanPersonalized => 'Plan personalizado';

  @override
  String onboardingMotivationsCount(int count) {
    return '$count motivaciones personales';
  }

  @override
  String onboardingSymptomsCount(int count) {
    return '$count estados marcados';
  }

  @override
  String get onboardingTakeFirstStep => 'da el primer paso';

  @override
  String get onboardingPleaseWait => 'Por favor, espera unos segundos…';

  @override
  String get onboardingCreatingPlan => 'Creando el plan…';

  @override
  String get onboardingStartMyJourney => 'Empezar mi camino';

  @override
  String get onboardingContinue => 'Continuar';

  @override
  String get premiumTitle => 'Puffree Premium';

  @override
  String get premiumSubtitle =>
      'Más herramientas para tu camino.\nElige el plan que mejor te convenga.';

  @override
  String get oneMembership => 'Un acceso Premium para todo';

  @override
  String get everythingIncluded => 'Todo incluido';

  @override
  String get everythingIncludedSubtitle =>
      'Premium desbloquea la experiencia completa de Puffree.';

  @override
  String get choosePlan => 'Elige tu plan';

  @override
  String get choosePlanSubtitle =>
      'Puedes cambiar tu elección antes de comprar.';

  @override
  String get featureTasks => 'Misiones ampliadas';

  @override
  String get featureTasksSubtitle => 'Más prácticas y retos';

  @override
  String get featureStats => 'Estadísticas completas';

  @override
  String get featureStatsSubtitle => 'Información detallada del progreso';

  @override
  String get profileEditTitle => 'Perfil';

  @override
  String get profileEditTapToChangePhoto => 'Toca la foto para cambiarla';

  @override
  String get profileEditNameLabel => 'Nombre';

  @override
  String get profileEditNameHint => 'Introduce tu nombre';

  @override
  String get profileEditSaveButton => 'Guardar cambios';

  @override
  String get profileEditErrorEmptyName => 'Introduce un nombre';

  @override
  String get profileEditSuccessUpdated => 'Perfil actualizado correctamente';

  @override
  String profileEditErrorUpdate(String error) {
    return 'Error al actualizar el perfil: $error';
  }

  @override
  String get authWelcomeBack => '¡Bienvenido de nuevo!';

  @override
  String get authCreateAccount => 'Crear cuenta';

  @override
  String get authResetPassword => 'Restablecer contraseña';

  @override
  String get authLoginSubtitle => 'Inicia sesión para continuar tu camino';

  @override
  String get authRegisterSubtitle => 'Empieza una vida sin humo hoy';

  @override
  String get authForgotSubtitle =>
      'Introduce tu email y te enviaremos instrucciones';

  @override
  String get authTabLogin => 'Iniciar sesión';

  @override
  String get authTabRegister => 'Registrarse';

  @override
  String get authNameHint => 'Tu nombre';

  @override
  String get authNameRequired => 'Introduce tu nombre';

  @override
  String get authEmailHint => 'Correo electrónico';

  @override
  String get authEmailRequired => 'Introduce el email';

  @override
  String get authEmailInvalid => 'Email no válido';

  @override
  String get authPasswordHint => 'Contraseña';

  @override
  String get authPasswordRequired => 'Introduce la contraseña';

  @override
  String get authPasswordMinLength =>
      'La contraseña debe tener al menos 6 caracteres';

  @override
  String get authConfirmPasswordHint => 'Repite la contraseña';

  @override
  String get authPasswordsDoNotMatch => 'Las contraseñas no coinciden';

  @override
  String get authForgotPassword => '¿Olvidaste la contraseña?';

  @override
  String get authLoginButton => 'Iniciar sesión';

  @override
  String get authRegisterButton => 'Registrarse';

  @override
  String get authSendLinkButton => 'Enviar enlace';

  @override
  String get authBackToLogin => 'Volver al inicio de sesión';

  @override
  String get authOrContinueWith => 'o continuar con';

  @override
  String get authGoogle => 'Google';

  @override
  String get authApple => 'Apple';

  @override
  String get authResetLinkSent =>
      '¡Enlace de restablecimiento enviado a tu correo!';

  @override
  String get authErrorGeneric => 'Algo salió mal. Revisa los datos.';

  @override
  String get authErrorSocial => 'Error de inicio de sesión social.';

  @override
  String get profileYourProfile => 'Tu perfil';

  @override
  String get profileEdit => 'Editar perfil';

  @override
  String get switchAccountTitle => '¿Iniciar sesión en otra cuenta?';

  @override
  String get switchAccountBody =>
      'Se abrirá la página de inicio de sesión donde podrás entrar en otra cuenta.';

  @override
  String get switchAccountButton => 'Iniciar sesión en otra cuenta';

  @override
  String get switchAccountSubtitle => 'Abrir página de inicio de sesión';

  @override
  String get continueAction => 'Continuar';

  @override
  String get logoutTitle => '¿Cerrar sesión?';

  @override
  String get logoutBody => '¿Seguro que quieres cerrar sesión en tu cuenta?';

  @override
  String get logoutButton => 'Cerrar sesión';

  @override
  String get premiumBrand => 'Puffree Premium';

  @override
  String get motStartJourney =>
      'Hoy comienza tu nuevo camino. Un solo paso ya importa.';

  @override
  String get motMilestone1 =>
      'Primer día. Diste el primer gran paso. Continúa.';

  @override
  String get motMilestone3 =>
      'Tres días. Vale la pena celebrarlo. Mantienes tu rumbo.';

  @override
  String get motMilestone7 =>
      'Una semana entera. Siete días eligiendo lo mejor para ti.';

  @override
  String get motMilestone10 =>
      '10 días. Ya has construido una gran base de confianza.';

  @override
  String get motMilestone14 =>
      'Dos semanas. Has superado una etapa clave del camino.';

  @override
  String get motMilestone21 =>
      '21 días. Demuestras que eres capaz de cambiar tus hábitos.';

  @override
  String get motMilestone30 =>
      '30 días. Un mes entero de nuevas decisiones. Es un gran logro.';

  @override
  String get motMilestone45 =>
      '45 días. Un mes y medio avanzando sin detenerte.';

  @override
  String get motMilestone60 =>
      '60 días. Dos meses de constancia. Un resultado muy poderoso.';

  @override
  String get motMilestone90 =>
      '90 días. Tres meses. Mira lo lejos que has llegado.';

  @override
  String get motMilestone120 =>
      '120 días. Sigues eligiendo tu camino cada día.';

  @override
  String get motMilestone180 =>
      'Seis meses. 180 días de constancia. Realmente impresionante.';

  @override
  String get motMilestone270 =>
      '270 días. Has marcado una distancia enorme con tu antiguo hábito.';

  @override
  String get motMilestone365 =>
      'Un año. 365 días en tu camino. No es casualidad, es constancia.';

  @override
  String get motFirstWeek1 => 'Hoy solo necesitas dar el siguiente paso.';

  @override
  String get motFirstWeek2 =>
      'No tienes que recorrer todo el camino hoy. Solo sigue adelante.';

  @override
  String get motFirstWeek3 => 'Cada día es una victoria. Hoy es la tuya.';

  @override
  String get motFirstWeek4 => 'Un momento difícil no borra tu progreso.';

  @override
  String get motFirstWeek5 =>
      'Ya has empezado. Ahora date la oportunidad de continuar.';

  @override
  String get motFirstWeek6 =>
      'Un día a la vez. Así es como se construyen los grandes cambios.';

  @override
  String get motFirstWeek7 =>
      'Te eliges a ti mismo una y otra vez. Eso es lo que importa.';

  @override
  String get motSecondWeek1 => 'Ya no estás donde empezaste. Sigue avanzando.';

  @override
  String get motSecondWeek2 =>
      'Dos semanas están más cerca de lo que parece. Mantén tu ritmo.';

  @override
  String get motSecondWeek3 =>
      'Tu progreso se construye con pequeñas decisiones.';

  @override
  String get motSecondWeek4 =>
      'No busques el día perfecto. Crea el próximo día bueno.';

  @override
  String get motSecondWeek5 =>
      'Eres capaz de superar el deseo y volver a tu plan.';

  @override
  String get motSecondWeek6 => 'Cada nuevo día refuerza tu confianza.';

  @override
  String get motSecondWeek7 =>
      'Ya has demostrado que puedes superar momentos difíciles.';

  @override
  String get motFirstMonth1 =>
      'Estás construyendo un nuevo hábito paso a paso.';

  @override
  String get motFirstMonth2 => 'Tu pasado no determina la elección de hoy.';

  @override
  String get motFirstMonth3 =>
      'Treinta días comienzan con una decisión: continuar.';

  @override
  String get motFirstMonth4 => 'La confianza crece con muchos días constantes.';

  @override
  String get motFirstMonth5 =>
      'Cada nuevo día añade una página más a tu historia.';

  @override
  String get motFirstMonth6 =>
      'Tu progreso te pertenece. Nadie te lo puede quitar.';

  @override
  String get motFirstMonth7 =>
      'Ya has avanzado lo suficiente como para estar orgulloso.';

  @override
  String get motFirstMonth8 =>
      'Continúa con calma. Los grandes cambios no requieren prisa.';

  @override
  String get motSecondMonth1 => 'Dos meses ya no son una coincidencia.';

  @override
  String get motSecondMonth2 =>
      'Estás convirtiendo la intención en constancia.';

  @override
  String get motSecondMonth3 =>
      'Tu fuerza está en las decisiones que tomas cada día.';

  @override
  String get motSecondMonth4 =>
      'Ya sabes que puedes manejar los momentos difíciles.';

  @override
  String get motSecondMonth5 => 'Sigue construyendo la vida que quieres vivir.';

  @override
  String get motSecondMonth6 =>
      'Cada día lejos del viejo hábito es un paso más hacia adelante.';

  @override
  String get motSecondMonth7 =>
      'No compites con nadie. Este camino es solo tuyo.';

  @override
  String get motSecondMonth8 =>
      'Mira atrás y compárate con el primer día. El progreso es claro.';

  @override
  String get motThirdMonth1 =>
      'Tres meses es una distancia seria. Y sigues en marcha.';

  @override
  String get motThirdMonth2 => 'Has creado un nuevo punto de partida para ti.';

  @override
  String get motThirdMonth3 =>
      'La constancia es más fuerte que la motivación. Lo estás demostrando.';

  @override
  String get motThirdMonth4 => 'Sigues eligiendo lo que de verdad te importa.';

  @override
  String get motThirdMonth5 =>
      'Con cada día, el viejo patrón pierde importancia.';

  @override
  String get motThirdMonth6 =>
      'Ya no esperas el momento adecuado. Lo estás creando.';

  @override
  String get motThirdMonth7 =>
      '90 días es una historia hecha de muchas pequeñas victorias.';

  @override
  String get motThirdMonth8 => 'Has llegado lejos. No te detengas aquí.';

  @override
  String get motLongTerm1 => 'Estás muy lejos del punto de partida. Continúa.';

  @override
  String get motLongTerm2 =>
      'La libertad empieza con una elección y crece cada día.';

  @override
  String get motLongTerm3 =>
      'Tu resultado es la suma de todos los días que seguiste adelante.';

  @override
  String get motLongTerm4 =>
      'Has creado una distancia que antes creías imposible.';

  @override
  String get motLongTerm5 => 'No olvides por qué empezaste.';

  @override
  String get motLongTerm6 => 'Cada nuevo día hace tu historia más fuerte.';

  @override
  String get motLongTerm7 => 'No estás volviendo atrás. Estás avanzando.';

  @override
  String get motLongTerm8 =>
      'Lo que antes parecía difícil, hoy forma parte de tu camino.';

  @override
  String get motLongTerm9 =>
      'Ya te has demostrado lo principal: el cambio es posible.';

  @override
  String get motLongTerm10 => 'Sigue viviendo a tu nuevo ritmo.';

  @override
  String get motLevelDefault => 'Nuevo nivel. Sigues avanzando.';

  @override
  String get motLevel1 =>
      'El viaje ha comenzado. Lo más importante es dar el primer paso.';

  @override
  String get motLevel2 => 'El brote ha aparecido. Cuida tu progreso cada día.';

  @override
  String get motLevel3 =>
      'Estás creciendo. Las pequeñas decisiones crean grandes cambios.';

  @override
  String get motLevel4 =>
      'Las raíces se fortalecen. Sigue construyendo tus cimientos.';

  @override
  String get motLevel5 => 'Tienes más confianza. No bajes el ritmo.';

  @override
  String get motLevel6 =>
      'La fuerza surge cuando sigues adelante a pesar de las dificultades.';

  @override
  String get motLevel7 =>
      'Tu determinación se convierte en parte de tu historia.';

  @override
  String get motLevel8 =>
      'La chispa se ha convertido en un movimiento constante hacia adelante.';

  @override
  String get motLevel9 => 'Has recorrido un gran camino. Reconoce tu progreso.';

  @override
  String get motLevel10 => 'Nivel diez. Ya conoces el valor de la constancia.';

  @override
  String get motLevel11 =>
      'Sigues creciendo incluso cuando el camino se vuelve difícil.';

  @override
  String get motLevel12 =>
      'Te has convertido en un ejemplo para ti mismo. Sigue así.';

  @override
  String get motLevel13 => 'Has tomado un gran impulso. Ahora mantén el rumbo.';

  @override
  String get motLevel14 => 'Nivel legendario. Mira todo lo que has logrado.';

  @override
  String get motShort1 => 'Hoy es un paso más.';

  @override
  String get motShort2 => 'Continúa tu camino.';

  @override
  String get motShort3 => 'Lo estás logrando.';

  @override
  String get motShort4 => 'Tu progreso importa.';

  @override
  String get motShort5 => 'No te detengas por un momento difícil.';

  @override
  String get motShort6 => 'Eres más fuerte que tu viejo hábito.';

  @override
  String get motShort7 => 'Elige el siguiente paso.';

  @override
  String get motShort8 => 'Ya empezaste. Continúa.';

  @override
  String get motShort9 => 'La elección de hoy importa.';

  @override
  String get motShort10 => 'Un día a la vez.';

  @override
  String get motShort11 => 'Puedes hacer más de lo que crees.';

  @override
  String get motShort12 => 'Tu camino te pertenece.';

  @override
  String get profileEditErrorPhotoNotFound =>
      'No se pudo obtener la foto seleccionada';

  @override
  String get profileEditErrorOpenGallery => 'No se pudo abrir la galería';

  @override
  String get profileEditErrorPickPhoto =>
      'Ocurrió un error al seleccionar la foto';

  @override
  String get featureMotivation => 'Motivación personal';

  @override
  String get featureMotivationSubtitle => 'Guía para tu camino';

  @override
  String get featureSupport => 'Herramientas de apoyo extra';

  @override
  String get featureSupportSubtitle => 'Más ayuda cuando la necesites';

  @override
  String get featureNotifications => 'Recordatorios inteligentes';

  @override
  String get featureNotificationsSubtitle => 'Motivación en el momento justo';

  @override
  String get featureAds => 'Sin anuncios';

  @override
  String get featureAdsSubtitle => 'Experiencia tranquila y limpia';

  @override
  String get planMonthly => 'Mensual';

  @override
  String get planMonthlySubtitle => 'Flexible, sin compromiso largo';

  @override
  String get planYearly => 'Anual';

  @override
  String get planYearlySubtitle => 'Mejor equilibrio entre precio y funciones';

  @override
  String get planLifetime => 'De por vida';

  @override
  String get planLifetimeSubtitle => 'Un pago — Premium para siempre';

  @override
  String get perMonth => '/ mes';

  @override
  String get perYear => '/ año';

  @override
  String get bestValue => 'MEJOR VALOR';

  @override
  String get oneTime => 'ÚNICO';

  @override
  String get buyMonthly => 'Obtener Premium mensual';

  @override
  String get buyYearly => 'Obtener Premium anual';

  @override
  String get buyLifetime => 'Obtener Premium para siempre';

  @override
  String get restorePurchases => 'Restaurar compras';

  @override
  String get securePurchase => 'Compra segura';

  @override
  String get cancelAnytime => 'Cancela cuando quieras';

  @override
  String get restoreAnytime => 'Las compras se pueden restaurar';

  @override
  String get legalMonthly =>
      'La suscripción se renueva automáticamente cada mes. Puedes cancelarla en la configuración de App Store o Google Play. El precio se muestra antes de confirmar la compra.';

  @override
  String get legalYearly =>
      'La suscripción se renueva automáticamente cada año. Puedes cancelarla en la configuración de App Store o Google Play. El precio se muestra antes de confirmar la compra.';

  @override
  String get legalLifetime =>
      'Esta es una compra única y no se renueva automáticamente. El precio se muestra antes de confirmar la compra.';

  @override
  String get legalContactEmail => 'support@puffreeapp.com';

  @override
  String get privacyPolicyTitle => 'Política de Privacidad';

  @override
  String get privacyPolicyLastUpdated => 'Última actualización: enero de 2026';

  @override
  String get privacyPolicyIntro =>
      'Puffree (\"nosotros\", \"nuestro\", \"la aplicación\") te ayuda a realizar un seguimiento de tu progreso y mantener la motivación en tu camino para dejar de fumar. Esta política explica qué información recopilamos, cómo la utilizamos y qué opciones tienes.';

  @override
  String get privacySection1Title => 'Información que Recopilamos';

  @override
  String get privacySection1Body =>
      'Datos de la cuenta que proporcionas al iniciar sesión (dirección de correo electrónico, nombre visible y foto de perfil), o un identificador anónimo si utilizas la aplicación sin una cuenta. También almacenamos los datos relacionados con tu progreso sin fumar que introduces tú mismo, como la fecha en que dejaste de fumar, cigarrillos al día, coste por paquete y los deseos de fumar que registras.';

  @override
  String get privacySection2Title => 'Cómo Utilizamos tu Información';

  @override
  String get privacySection2Body =>
      'Para calcular tu racha, tus hitos de salud y el dinero ahorrado; sincronizar tu progreso entre dispositivos; enviarte recordatorios y notificaciones motivacionales opcionales; procesar las compras de suscripciones Premium; diagnosticar errores y mejorar la aplicación.';

  @override
  String get privacySection3Title => 'Almacenamiento y Seguridad de los Datos';

  @override
  String get privacySection3Body =>
      'Tus datos se almacenan mediante Firebase (Google Cloud) con cifrado durante la transmisión. Aplicamos medidas técnicas y organizativas razonables para proteger tus datos, pero ningún método de almacenamiento o transmisión de información a través de Internet es completamente seguro.';

  @override
  String get privacySection4Title => 'Servicios de Terceros';

  @override
  String get privacySection4Body =>
      'Utilizamos Firebase Authentication y Cloud Firestore para gestionar las cuentas y sincronizar los datos, y los sistemas de facturación de Apple App Store o Google Play para procesar las suscripciones Premium. No vendemos tu información personal a terceros.';

  @override
  String get privacySection5Title => 'Tus Opciones y Derechos';

  @override
  String get privacySection5Body =>
      'Puedes revisar o editar tu perfil en cualquier momento, restablecer tu progreso local desde Ajustes, desactivar las notificaciones push desde los ajustes de tu dispositivo y solicitar acceso, corrección o eliminación de tus datos poniéndote en contacto con nosotros.';

  @override
  String get privacySection6Title => 'Privacidad de los Menores';

  @override
  String get privacySection6Body =>
      'Puffree no está dirigido a menores de 13 años (o menores de 16 años en la Unión Europea), y no recopilamos deliberadamente información personal de ellos. Si crees que un menor nos ha proporcionado datos, ponte en contacto con nosotros para que podamos eliminarlos.';

  @override
  String get privacySection7Title => 'Aviso de Salud';

  @override
  String get privacySection7Body =>
      'Puffree es una herramienta de seguimiento de hábitos diseñada para apoyar tu camino hacia una vida sin tabaco. No es un dispositivo médico y no proporciona asesoramiento médico, diagnósticos ni tratamientos. Consulta siempre a un profesional sanitario cualificado sobre cómo dejar de fumar.';

  @override
  String get privacySection8Title => 'Cambios y Contacto';

  @override
  String get privacySection8Body =>
      'Podemos actualizar esta política periódicamente; los cambios importantes se anunciarán en la aplicación. Si tienes preguntas sobre esta política o tus datos, ponte en contacto con nosotros utilizando los datos de contacto que aparecen a continuación.';

  @override
  String get termsOfUseTitle => 'Términos de Uso';

  @override
  String get termsOfUseLastUpdated => 'Última actualización: enero de 2026';

  @override
  String get termsOfUseIntro =>
      'Estos Términos de Uso regulan tu acceso y uso de Puffree. Al crear una cuenta o utilizar la aplicación, aceptas estos términos. Si no estás de acuerdo, no utilices la aplicación.';

  @override
  String get termsSection1Title => 'Aceptación de los Términos';

  @override
  String get termsSection1Body =>
      'Al descargar, instalar o utilizar Puffree, confirmas que aceptas estos Términos de Uso y nuestra Política de Privacidad, y que tienes capacidad legal para celebrar este acuerdo.';

  @override
  String get termsSection2Title => 'Descripción del Servicio';

  @override
  String get termsSection2Body =>
      'Puffree es una aplicación de seguimiento de hábitos y motivación que te ayuda a controlar tu progreso después de dejar de fumar, incluyendo rachas, hitos de salud, dinero ahorrado y registros de deseos de fumar. Es una herramienta de bienestar personal, no un servicio médico o clínico.';

  @override
  String get termsSection3Title => 'Requisitos y Cuentas';

  @override
  String get termsSection3Body =>
      'Debes tener al menos 13 años (o la edad mínima de consentimiento digital establecida en tu país) para utilizar Puffree. Eres responsable de mantener la confidencialidad de tu cuenta y de toda actividad que se realice a través de ella.';

  @override
  String get termsSection4Title => 'Suscripciones Premium y Facturación';

  @override
  String get termsSection4Body =>
      'Las funciones Premium se ofrecen mediante una suscripción de renovación automática facturada a través de Apple App Store o Google Play. Las suscripciones se renuevan automáticamente salvo que se cancelen al menos 24 horas antes del final del periodo actual, y los reembolsos se gestionan de acuerdo con la política de la tienda correspondiente.';

  @override
  String get termsSection5Title => 'Aviso de Salud y Medicina';

  @override
  String get termsSection5Body =>
      'Puffree no proporciona asesoramiento médico y no sustituye la atención profesional. Dejar de fumar puede implicar síntomas de abstinencia; consulta a un médico o profesional sanitario autorizado antes de tomar decisiones relacionadas con tu salud.';

  @override
  String get termsSection6Title => 'Uso Aceptable';

  @override
  String get termsSection6Body =>
      'Aceptas no utilizar la aplicación de forma indebida, intentar realizar ingeniería inversa o interrumpir sus servicios, subir contenido ilegal o perjudicial, ni utilizar la aplicación de ninguna manera que infrinja las leyes aplicables o los derechos de otras personas.';

  @override
  String get termsSection7Title =>
      'Exención de Responsabilidad y Limitación de Responsabilidad';

  @override
  String get termsSection7Body =>
      'Puffree se proporciona \"tal cual\", sin garantías de ningún tipo. En la máxima medida permitida por la ley, no somos responsables de ningún daño indirecto, incidental o consecuente derivado del uso de la aplicación.';

  @override
  String get termsSection8Title => 'Cambios en estos Términos y Contacto';

  @override
  String get termsSection8Body =>
      'Podemos actualizar estos Términos periódicamente; el uso continuado de la aplicación después de que los cambios entren en vigor constituye la aceptación de los Términos revisados. Las preguntas pueden enviarse a la dirección de contacto que aparece a continuación.';

  @override
  String get systemThemeLabel => 'Sistema';

  @override
  String get notificationsEnabledLabel => 'Notificaciones activadas';

  @override
  String get notificationsDisabledLabel => 'Notificaciones desactivadas';

  @override
  String get signInToAnotherAccount => 'Iniciar sesión con otra cuenta';

  @override
  String get openSignInPage => 'Abrir página de inicio de sesión';

  @override
  String get securePayment => 'Pago seguro';
}
