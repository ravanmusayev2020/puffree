// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'Puffree';

  @override
  String get tagline => 'الحرية من التدخين';

  @override
  String get today => 'اليوم';

  @override
  String get streak => 'السلسلة';

  @override
  String get saved => 'تم التوفير';

  @override
  String get avoided => 'تم تجنبه';

  @override
  String get totalDays => 'إجمالي الأيام';

  @override
  String get dailyMotivation => 'تحفيز اليوم';

  @override
  String get checkIn => 'لم أدخن اليوم';

  @override
  String get checkedInToday => 'تم التسجيل اليوم';

  @override
  String get missions => 'مهام اليوم';

  @override
  String completedOf(int completed, int total) {
    return 'مكتمل $completed من $total';
  }

  @override
  String get premium => 'Premium';

  @override
  String get tryFree => 'جرّب 3 أيام مجاناً';

  @override
  String get buyPremium => 'اشترِ Premium';

  @override
  String get restore => 'استعادة المشتريات';

  @override
  String get premiumHint => 'افتح جميع الميزات مع Premium';

  @override
  String get settings => 'الإعدادات';

  @override
  String get progress => 'تقدمك';

  @override
  String get statistics => 'الإحصائيات';

  @override
  String get currentStreak => 'السلسلة الحالية';

  @override
  String get record => 'الرقم القياسي';

  @override
  String get bodyChanges => 'ما يحدث لجسمك';

  @override
  String get resetProgress => 'إعادة تعيين التقدم';

  @override
  String get resetConfirm =>
      'سيتم حذف جميع بيانات الأيام والسلسلة والإحصائيات. لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get cancel => 'إلغاء';

  @override
  String get reset => 'إعادة تعيين';

  @override
  String get journalTitle => 'المذكرة';

  @override
  String get journalHint => 'اكتب أفكارك';

  @override
  String get journalPlaceholder => 'كيف تشعر اليوم؟';

  @override
  String get save => 'حفظ';

  @override
  String get moodCheck => 'كيف تشعر؟';

  @override
  String get moodCheckHint => 'خذ لحظة للتحقق من حالتك.';

  @override
  String get version => 'الإصدار';

  @override
  String get privacy => 'سياسة الخصوصية';

  @override
  String get terms => 'شروط الاستخدام';

  @override
  String get disclaimer =>
      'Puffree تطبيق تحفيزي. ليس جهازاً طبياً ولا يحل محل الاستشارة الطبية المتخصصة. إذا كان لديك إدمان قوي على النيكوتين، يرجى استشارة أخصائي.';

  @override
  String level(int number) {
    return 'المستوى $number';
  }

  @override
  String daysSmokeFree(int count) {
    return '$count أيام بدون تدخين';
  }

  @override
  String nextLevelProgress(int percent) {
    return '$percent% إلى المستوى التالي';
  }

  @override
  String get friend => 'صديق';

  @override
  String helloName(String name) {
    return 'مرحباً، $name!';
  }

  @override
  String get pathToFreedom => 'طريقك إلى الحرية';

  @override
  String get withoutCigs => 'بدون سجائر';

  @override
  String get iSmoked => 'لقد دخنت';

  @override
  String get relapseTitle => 'لا بأس';

  @override
  String get relapseBody =>
      'سيجارة واحدة لا تمحو تقدمك. تعلّم من هذه اللحظة واستمر في المضي قدماً.';

  @override
  String get relapseDone => 'متابعة';

  @override
  String get home => 'الرئيسية';

  @override
  String get tasks => 'المهام';

  @override
  String get missionBreathe => 'تنفس عميق';

  @override
  String get missionWater => 'اشرب ماء';

  @override
  String get missionWalk => 'مشي 10 دقائق';

  @override
  String get missionJournal => 'اكتب فكرة';

  @override
  String get missionMeditation => 'تأمل 5 دقائق';

  @override
  String get missionFocus => 'تركيز بدون هاتف';

  @override
  String get missionReflect => 'تأمل في اليوم';

  @override
  String get missionHelp => 'ادعم شخصاً ما';

  @override
  String get missionBreatheDesc => 'خذ عدة أنفاس بطيئة وعميقة.';

  @override
  String get missionWaterDesc => 'اشرب كوباً من الماء.';

  @override
  String get missionWalkDesc => 'امشِ لمدة 10 دقائق.';

  @override
  String get missionJournalDesc => 'اكتب فكرة واحدة عن يومك.';

  @override
  String get missionMeditationDesc => 'خذ 5 دقائق للتأمل.';

  @override
  String get missionFocusDesc => 'اقضِ وقتاً في التركيز بدون هاتف.';

  @override
  String get missionReflectDesc => 'فكّر في كيف مرّ يومك.';

  @override
  String get missionHelpDesc => 'افعل شيئاً لطيفاً لدعم شخص ما.';

  @override
  String get sosTitle => 'دعم الطوارئ';

  @override
  String get sosTimer => 'مؤقت الرغبة';

  @override
  String get sosBreathe => 'تنفس';

  @override
  String get sosChat => 'تحدث';

  @override
  String get sosStart => 'ابدأ';

  @override
  String get sosDone => 'تم';

  @override
  String get sosManaged => 'لقد تغلبت على الرغبة!';

  @override
  String get sosWon => 'لقد فزت!';

  @override
  String get sosLeft => 'متبقي';

  @override
  String get sosTip1 => 'خذ عدة أنفاس بطيئة وعميقة.';

  @override
  String get sosTip2 => 'اشرب كوباً من الماء.';

  @override
  String get sosTip3 => 'انتقل إلى مكان آخر.';

  @override
  String get sosTip4 => 'أبقِ يديك مشغولتين.';

  @override
  String get sosTip5 => 'فكّر في سبب بدئك.';

  @override
  String get sosTip6 => 'امنح الرغبة بضع دقائق لتمر.';

  @override
  String get breatheIn => 'شهيق';

  @override
  String get breatheHold => 'احبس';

  @override
  String get breatheOut => 'زفير';

  @override
  String get breatheHint => 'اتبع الدائرة وتنفس ببطء.';

  @override
  String get breatheStart => 'ابدأ التنفس';

  @override
  String get chatPick => 'ماذا تشعر الآن؟';

  @override
  String get chatCraving => 'أشعر برغبة';

  @override
  String get chatStress => 'أشعر بالتوتر';

  @override
  String get chatBoredom => 'أشعر بالملل';

  @override
  String get chatNeedWalk => 'أحتاج إلى المشي';

  @override
  String get chatNeedWater => 'أحتاج إلى ماء';

  @override
  String get chatNeedBreathe => 'أحتاج إلى التنفس';

  @override
  String get chatIntroStress =>
      'يبدو أنك تشعر بالتوتر. دعنا نتجاوز هذه اللحظة معاً.';

  @override
  String get chatIntroBoredom =>
      'الملل يمكن أن يجعل الرغبة أقوى. دعنا نجد شيئاً آخر للتركيز عليه.';

  @override
  String get chatIntroCraving =>
      'الرغبة قد تكون قوية، لكنها ستمر. دعنا نأخذها لحظة بلحظة.';

  @override
  String get chatReplyStress =>
      'حاول أخذ أنفاس بطيئة وأعطِ نفسك استراحة قصيرة. لست مضطراً للاستسلام للرغبة.';

  @override
  String get chatReplyBoredom =>
      'دعنا نغيّر البيئة. امشِ قليلاً، اشرب ماءً، أو افعل شيئاً يبقي يديك مشغولتين.';

  @override
  String get chatReplyCraving =>
      'انتظر بضع دقائق قبل اتخاذ أي قرار. اشرب ماءً، تنفس ببطء، وتذكّر لماذا بدأت.';

  @override
  String get onboardingTitle1 => 'تنفس بحرية';

  @override
  String get onboardingDesc1 =>
      'يساعدك Puffree على الإقلاع عن التدخين خطوة بخطوة — بدون ضغط ومع دعم.';

  @override
  String get onboardingTitle2 => 'المستويات والتقدم';

  @override
  String get onboardingDesc2 =>
      'كل يوم بدون سيجارة يفتح مستوى جديداً. راقب نمو قوتك وصحتك.';

  @override
  String get onboardingTitle3 => 'دعم يومي';

  @override
  String get onboardingDesc3 =>
      'تحفيز ومهام وتتبع للتقدم. لست وحدك في هذا الطريق.';

  @override
  String get aboutYou => 'قليل عنك';

  @override
  String get aboutYouDesc => 'هذا يساعد في حساب المال والسجائر التي تم توفيرها';

  @override
  String get cigsPerDay => 'عدد السجائر يومياً سابقاً';

  @override
  String get pricePerPack => 'سعر العلبة';

  @override
  String get startJourney => 'ابدأ الرحلة';

  @override
  String get next => 'التالي';

  @override
  String get skip => 'تخطي';

  @override
  String get youGotThis => 'أنت قادر. لحظة بلحظة.';

  @override
  String get waitTheWave => 'تجاوز موجة الرغبة';

  @override
  String get youPassedThis => 'لقد تجاوزت هذه اللحظة';

  @override
  String get greatJob => 'عمل رائع. أنت تتحكم في الوضع.';

  @override
  String get giveYourselfMinutes =>
      'أعطِ نفسك بضع دقائق وركز على اللحظة الحالية.';

  @override
  String get keepGoing => 'استمر';

  @override
  String get done => 'تم';

  @override
  String get breatheSlowly => 'تنفس ببطء';

  @override
  String get followTheCircle => 'اتبع إيقاع الدائرة';

  @override
  String get chooseWhatFits => 'اختر ما يناسب شعورك الآن.';

  @override
  String get yourResults => 'نتائجك';

  @override
  String get whatChanged => 'ما تغير بالفعل بفضل جهودك';

  @override
  String get recoveryPath => 'طريق التعافي';

  @override
  String get everyMilestone => 'كل إنجاز هو خطوة أخرى إلى الأمام';

  @override
  String get levelProgress => 'التقدم إلى المستوى التالي';

  @override
  String get yourPathContinues => 'طريقك مستمر';

  @override
  String get daysWordOne => 'يوم';

  @override
  String get daysWordFew => 'أيام';

  @override
  String get daysWordMany => 'أيام';

  @override
  String get momentum => 'الزخم';

  @override
  String missionsLeft(int count) {
    return 'متبقي $count مهام';
  }

  @override
  String get allMissionsDone => 'اكتملت جميع المهام';

  @override
  String get dayComplete => 'اكتمل اليوم';

  @override
  String get keepGoingShort => 'استمر';

  @override
  String get inProgress => 'قيد التنفيذ';

  @override
  String get complete => 'مكتمل';

  @override
  String get yourPlanToday => 'خطتك لليوم';

  @override
  String get everythingDone => 'تم إنجاز كل شيء';

  @override
  String get theme => 'المظهر';

  @override
  String get language => 'اللغة';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get notificationsHint => 'تذكيرات وتحفيز';

  @override
  String get data => 'البيانات';

  @override
  String get aboutApp => 'حول التطبيق';

  @override
  String get appTheme => 'مظهر التطبيق';

  @override
  String get chooseTheme => 'اختر كيف يجب أن يبدو Puffree.';

  @override
  String get systemTheme => 'النظام';

  @override
  String get systemThemeDesc => 'اتبع إعدادات الهاتف';

  @override
  String get lightTheme => 'فاتح';

  @override
  String get lightThemeDesc => 'استخدم المظهر الفاتح دائماً';

  @override
  String get darkTheme => 'داكن';

  @override
  String get darkThemeDesc => 'استخدم المظهر الداكن دائماً';

  @override
  String get premiumActive => 'Premium مفعّل';

  @override
  String get trialActive => 'فترة التجربة مفعّلة';

  @override
  String get fullAccess => 'وصول كامل لجميع الميزات';

  @override
  String get openPremium => 'افتح Premium وخيارات الاشتراك';

  @override
  String get resetProgressTitle => 'إعادة تعيين التقدم؟';

  @override
  String get resetProgressBody =>
      'سيتم حذف جميع بيانات الأيام والسلسلة والإحصائيات. لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get excellent => 'ممتاز!';

  @override
  String get anotherDayFree => 'يوم آخر بدون سجائر';

  @override
  String get continueBtn => 'متابعة';

  @override
  String get newAchievement => 'إنجاز جديد';

  @override
  String get newLevel => 'مستوى جديد!';

  @override
  String get levelUpMessage => 'استمر — أنت تقوم بعمل رائع!';

  @override
  String get freeFor => 'حر منذ';

  @override
  String get toNextLevel => 'إلى المستوى التالي';

  @override
  String get keyResults => 'النتائج الرئيسية';

  @override
  String get progressSystem => 'نظام التقدم';

  @override
  String get everyDayCloser => 'كل يوم يقربك من المستوى التالي';

  @override
  String get current => 'الحالي';

  @override
  String get nextLevel => 'التالي';

  @override
  String get smallSteps => 'خطوات صغيرة. تغييرات كبيرة.';

  @override
  String get youAreFurther => 'أنت بالفعل أبعد مما كنت عليه بالأمس';

  @override
  String get madeForFuture => 'صُنع من أجل مستقبل خالٍ من التدخين';

  @override
  String get dayStreakCaption => 'أيام متتالية';

  @override
  String get cigarettesAvoidedCaption => 'تجنبها';

  @override
  String get freeDaysCaption => 'أيام الحرية';

  @override
  String get levelLabel => 'المستوى';

  @override
  String get keepStreakAlive => 'حافظ على استمرار أيامك المتتالية';

  @override
  String get failedToLoadProgress => 'فشل في تحميل التقدم';

  @override
  String get levelTitle1 => 'النفس الأول';

  @override
  String get levelTitle2 => 'برعم';

  @override
  String get levelTitle3 => 'نمو';

  @override
  String get levelTitle4 => 'جذور';

  @override
  String get levelTitle5 => 'جذع';

  @override
  String get levelTitle6 => 'قوة';

  @override
  String get levelTitle7 => 'نار';

  @override
  String get levelTitle8 => 'شرارة';

  @override
  String get levelTitle9 => 'بطل';

  @override
  String get levelTitle10 => 'ماهر';

  @override
  String get levelTitle11 => 'ألماس';

  @override
  String get levelTitle12 => 'نجمة';

  @override
  String get levelTitle13 => 'صاروخ';

  @override
  String get levelTitle14 => 'أسطورة';

  @override
  String get levelTitleDefault => 'مسار';

  @override
  String get milestone1Title => 'بداية مسار جديد';

  @override
  String get milestone1Desc =>
      'لقد اتخذت الخطوة الأولى بالفعل وتستمر في المضي قدماً.';

  @override
  String get milestone2Title => 'التغييرات الأولى';

  @override
  String get milestone2Desc => 'يتكيف الجسم تدريجياً مع الحياة بدون سجائر.';

  @override
  String get milestone3Title => 'مرحلة جديدة';

  @override
  String get milestone3Desc => 'يتشكل إيقاع جديد تدريجياً بدون العادة.';

  @override
  String get milestone4Title => 'تقدم واثق';

  @override
  String get milestone4Desc =>
      'أسبوعان هما معلم بارز في الطريق إلى عادة جديدة.';

  @override
  String get milestone5Title => 'العادة الكبيرة تتغير';

  @override
  String get milestone5Desc => 'شهر من الاستمرارية هو نتيجة شخصية جادة.';

  @override
  String get milestone6Title => 'معلم كبير';

  @override
  String get milestone6Desc =>
      'الاستمرار في المسار يساعد في ترسيخ نمط حياة جديد.';

  @override
  String get milestone7Title => 'عام من الحرية';

  @override
  String get milestone7Desc => 'عام بدون سجائر هو معلم كبير في مسارك.';

  @override
  String get navProgress => 'التقدم';

  @override
  String get more => 'المزيد';

  @override
  String get settingsSubtitle => 'خصص Puffree لنفسك';

  @override
  String get sectionApp => 'التطبيق';

  @override
  String get sectionData => 'البيانات';

  @override
  String get sectionAbout => 'حول التطبيق';

  @override
  String get resetProgressSubtitle => 'ابدأ الرحلة من جديد';

  @override
  String get premiumActiveBadge => 'نشط';

  @override
  String get splashCaption => 'التحرر من التدخين';

  @override
  String get todayStartJourney => 'اليوم هو بداية رحلتك الجديدة.';

  @override
  String realResultKeepGoing(int count, String daysWord) {
    return '$count $daysWord هي بالفعل نتيجة حقيقية. استمر.';
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
  String get onbTitle1 => 'ماذا تستخدم؟';

  @override
  String get onbSubtitle1 => 'سنخصص كل شيء بناءً على عادتك.';

  @override
  String get onbTitle2 => 'كم تستخدم؟';

  @override
  String get onbSubtitle2 => 'الأرقام الصادقة تساعدنا على حساب تقدمك الحقيقي.';

  @override
  String get onbTitle3 => 'كم يكلفك ذلك؟';

  @override
  String get onbSubtitle3 => 'اكتشف كم يمكنك توفيره كل شهر.';

  @override
  String get onbTitle4 => 'كيف يشعر جسدك؟';

  @override
  String get onbSubtitle4 => 'اختر الأعراض التي تلاحظها أكثر من غيرها.';

  @override
  String get onbTitle5 => 'لماذا تريد الإقلاع؟';

  @override
  String get onbSubtitle5 => 'أسبابك ستقود الخطة التي نبنيها لك.';

  @override
  String get onbTitle6 => 'نبني خطتك';

  @override
  String get onbSubtitle6 => 'ننشئ مساراً مخصصاً لك فقط.';

  @override
  String get onbTitle7 => 'خطتك جاهزة';

  @override
  String get onbSubtitle7 => 'ابدأ رحلتك بخطة صُممت من أجلك.';

  @override
  String get onbEyebrowBeforeStart => 'قبل أن نبدأ';

  @override
  String get onbEyebrowStartingPoint => 'نقطة البداية';

  @override
  String get onbEyebrowRealCost => 'التكلفة الحقيقية';

  @override
  String get onbEyebrowSelfAwareness => 'الوعي الذاتي';

  @override
  String get onbEyebrowYourReason => 'سببك';

  @override
  String get onbEyebrowPersonalization => 'التخصيص';

  @override
  String get onbEyebrowDone => 'أنت مستعد';

  @override
  String get onbHabitCigarettesTitle => 'السجائر';

  @override
  String get onbHabitCigarettesSubtitle => 'سجائر عادية أو ملفوفة';

  @override
  String get onbHabitVapeTitle => 'الفيب / البودات';

  @override
  String get onbHabitVapeSubtitle => 'السجائر الإلكترونية وأنظمة البود';

  @override
  String get onbPodsPerWeekLabel => 'عدد البودات في الأسبوع';

  @override
  String get onbCigarettesPerDayLabel => 'عدد السجائر في اليوم';

  @override
  String get onbYearsSmokedLabel => 'سنوات التدخين';

  @override
  String get onbUnitPieces => 'قطعة';

  @override
  String get onbUnitYears => 'سنوات';

  @override
  String get onbAmountVapeHint =>
      'يساعدنا هذا على تقدير تكلفتك الأسبوعية وتقدمك.';

  @override
  String get onbPotentialSavingsLabel => 'التوفير المحتمل شهرياً';

  @override
  String get onbPerMonthQuitting => 'شهرياً عند الإقلاع';

  @override
  String get onbPricePerPodLabel => 'سعر البود';

  @override
  String get onbPricePerPackLabel => 'سعر العلبة';

  @override
  String get onbCigarettesPerPackLabel => 'عدد السجائر في العلبة';

  @override
  String get onbCurrencyLabel => 'العملة';

  @override
  String get onbSymptomBreath => 'ضيق في التنفس';

  @override
  String get onbSymptomAnxiety => 'قلق / توتر';

  @override
  String get onbSymptomPulse => 'نبض سريع أو غير منتظم';

  @override
  String get onbSymptomMorning => 'سعال صباحي / بلغم';

  @override
  String get onbSymptomCough => 'سعال متكرر';

  @override
  String get onbBodyHint =>
      'يمكنك اختيار عدة أعراض. يساعدنا ذلك على التركيز على ما يهمك.';

  @override
  String get onbMotivationHealth => 'صحة وطاقة أفضل';

  @override
  String get onbMotivationFreedom => 'التحرر من الإدمان';

  @override
  String get onbMotivationMoney => 'توفير المال';

  @override
  String get onbMotivationFamily => 'من أجل عائلتي / أطفالي';

  @override
  String get onbMotivationControl => 'استعادة السيطرة على حياتي';

  @override
  String get onbMotivationFuture => 'مستقبل أكثر صحة';

  @override
  String get onbSelectMultipleHint => 'يمكنك اختيار عدة أسباب';

  @override
  String get onbStartingMapLabel => 'نبني خريطتك';

  @override
  String get onbBuildingStepSave => 'نحسب مدخراتك';

  @override
  String get onbBuildingStepGoal => 'نحدد هدفك الرئيسي';

  @override
  String get onbBuildingStepScenarios => 'ننشئ سيناريوهات شخصية';

  @override
  String get onbBuildingStepSteps => 'نجهز الخطوات الأولى';

  @override
  String get onbBuildingHint => 'عادة ما يستغرق ذلك بضع ثوانٍ فقط.';

  @override
  String get onbPleaseWait => 'يرجى الانتظار قليلاً…';

  @override
  String get onbCreatingPlan => 'جاري إنشاء خطتك…';

  @override
  String get onbFirst30DaysLabel => 'أول 30 يوماً';

  @override
  String get onbLessExpensesLabel => 'نفقات أقل';

  @override
  String get onbSavingsPerMonth => 'التوفير شهرياً';

  @override
  String get onbSavingsPerYear => 'التوفير سنوياً';

  @override
  String get onbPlanPersonalizedTitle => 'خطتك المخصصة';

  @override
  String onbPlanPersonalizedSubtitle(int motivations, int symptoms) {
    return 'بناءً على $motivations أسباب و $symptoms أعراض';
  }

  @override
  String get onbResultHint => 'يمكنك تعديل هذه الأرقام لاحقاً في الإعدادات.';

  @override
  String get onbBreathingHint => 'تنفّس';

  @override
  String get onbContinue => 'متابعة';

  @override
  String get onbStartJourney => 'ابدأ رحلتي';

  @override
  String get onboardingHabitTitle => 'هل أنت مستعد لاستعادة السيطرة؟';

  @override
  String get onboardingHabitSubtitle =>
      'أولاً دعنا نفهم عادتك. لا استمارات طويلة — إجابات دقيقة قليلة، وسيبني Puffree مسارك.';

  @override
  String get onboardingAmountTitle => 'صف يومك المعتاد';

  @override
  String get onboardingAmountSubtitle =>
      'هذا ليس لتقييمك. إنها نقطة البداية التي سنقيس منها التقدم.';

  @override
  String get onboardingMoneyTitle => 'كم يأخذ العادة منك؟';

  @override
  String get onboardingMoneySubtitle =>
      'يتغير السعر فوراً على الشاشة — ترى ليس رقماً مجرداً، بل التكلفة الحقيقية للعادة.';

  @override
  String get onboardingBodyTitle => 'ماذا تلاحظ في نفسك؟';

  @override
  String get onboardingBodySubtitle =>
      'ضع علامة على ما ينطبق عليك. يمكنك اختيار عدة خيارات أو لا شيء.';

  @override
  String get onboardingMotivationTitle => 'من أجل ماذا تفعل هذا؟';

  @override
  String get onboardingMotivationSubtitle =>
      'سيصبح هذا مرساةك الشخصية. سيعيدك Puffree إلى هذا السبب في اللحظة المناسبة.';

  @override
  String get onboardingBuildingTitle => 'نبني مسارك';

  @override
  String get onboardingBuildingSubtitle =>
      'ليس تشخيصاً طبياً ولا وعداً بيوم مثالي. فقط نقطة انطلاقك وخطوات تالية واضحة.';

  @override
  String get onboardingResultTitle => 'شاشة تقدمك الأولى موجودة بالفعل هنا';

  @override
  String get onboardingResultSubtitle =>
      'نحفظ بيانات البداية على الجهاز ونحولها إلى تقدم قابل للقياس.';

  @override
  String get onboardingEyebrowBeforeStart => 'قبل البدء';

  @override
  String get onboardingEyebrowStartPoint => 'نقطة انطلاقك';

  @override
  String get onboardingEyebrowRealCost => 'التكلفة الحقيقية';

  @override
  String get onboardingEyebrowSelfFeeling => 'كيف تشعر';

  @override
  String get onboardingEyebrowYourReason => 'سببك';

  @override
  String get onboardingEyebrowPersonalization => 'التخصيص';

  @override
  String get onboardingEyebrowDone => 'تم';

  @override
  String get onboardingCigarettesChoice => 'أدخن السجائر';

  @override
  String get onboardingCigarettesChoiceSubtitle =>
      'السيناريو الرئيسي لـ Puffree';

  @override
  String get onboardingVapeChoice => 'أستخدم السجائر الإلكترونية';

  @override
  String get onboardingVapeChoiceSubtitle =>
      'سنحفظ هذا الاختيار في ملفك الشخصي';

  @override
  String get onboardingPodsPerWeek => 'البودات / الاستخدام مرة واحدة أسبوعياً';

  @override
  String get onboardingUnitPcs => 'قطعة';

  @override
  String get onboardingVapeHint =>
      'لاحقاً، سيتمكن ملف Puffree من فصل سيناريوهات السجائر والفيب دون فقدان التاريخ.';

  @override
  String get onboardingCigarettesPerDay => 'سجائر في اليوم';

  @override
  String get onboardingYearsSmoked => 'منذ كم سنة';

  @override
  String get onboardingUnitYears => 'سنوات';

  @override
  String get onboardingPricePerPod => 'سعر بود واحد';

  @override
  String get onboardingPricePerPack => 'سعر العلبة';

  @override
  String get onboardingCigarettesPerPack => 'سجائر في العلبة';

  @override
  String get onboardingPotentialSavings => 'التوفير المحتمل';

  @override
  String get onboardingPerMonthIfQuit => 'شهرياً إذا أقلعت عن العادة';

  @override
  String get onboardingCurrency => 'العملة';

  @override
  String get onboardingSymptomBreath => 'أشعر أن التنفس أصبح أثقل';

  @override
  String get onboardingSymptomAnxiety => 'أشعر أحياناً بقلق شديد';

  @override
  String get onboardingSymptomPulse => 'ألاحظ نبضاً أسرع';

  @override
  String get onboardingSymptomMorning => 'أشتهي بشكل خاص أول سيجارة في الصباح';

  @override
  String get onboardingSymptomCough => 'لدي سعال صباحي';

  @override
  String get onboardingBodyHint =>
      'هذا وصف ذاتي وليس تشخيصاً. إذا كانت الأعراض تقلقك، فمن الأفضل مناقشتها مع طبيب.';

  @override
  String get onboardingMotivationHealth => 'أريد الاعتناء بصحتي بشكل أفضل';

  @override
  String get onboardingMotivationFreedom => 'أريد أن أشعر بحرية أكبر';

  @override
  String get onboardingMotivationMoney => 'أريد التوقف عن إنفاق المال على هذا';

  @override
  String get onboardingMotivationFamily =>
      'أريد الاعتماد أقل على العادة بجانب أحبائي';

  @override
  String get onboardingMotivationControl => 'أريد استعادة الشعور بالسيطرة';

  @override
  String get onboardingMotivationFuture => 'أريد فعل هذا من أجل مستقبلي';

  @override
  String get onboardingCanSelectSeveral => 'يمكنك اختيار عدة';

  @override
  String get onboardingYourStartCard => 'بطاقتك الأولية';

  @override
  String get onboardingStepSaveAnswers => 'نحفظ إجاباتك';

  @override
  String get onboardingStepFinancialGoal => 'نحسب الهدف المالي';

  @override
  String get onboardingStepCravingScenarios => 'نشكل سيناريوهات الرغبة';

  @override
  String get onboardingStepFirstSteps => 'نعد الخطوات الأولى';

  @override
  String get onboardingBuildingHint =>
      'نتعمد عدم وعد بـ «تجديد الرئتين في X ساعات» — يظهر Puffree أشياء قابلة للقياس ويفصل الحقيقة عن الدافع.';

  @override
  String get onboardingSavingsPerMonth => 'توفير / شهر';

  @override
  String get onboardingSavingsPerYear => 'توفير / سنة';

  @override
  String get onboardingResultHint =>
      'هذه الأرقام حساب بناءً على إجاباتك، وليست وعداً بنتائج. التقدم الحقيقي يعتمد على سلوكك.';

  @override
  String get onboardingFirst30Days => 'أول 30 يوماً';

  @override
  String get onboardingLessSpendMoreControl => 'إنفاق أقل → سيطرة أكبر';

  @override
  String get onboardingPlanPersonalized => 'الخطة مخصصة';

  @override
  String onboardingMotivationsCount(int count) {
    return '$count دوافع شخصية';
  }

  @override
  String onboardingSymptomsCount(int count) {
    return '$count حالات محددة';
  }

  @override
  String get onboardingTakeFirstStep => 'خذ الخطوة الأولى';

  @override
  String get onboardingPleaseWait => 'يرجى الانتظار بضع ثوانٍ…';

  @override
  String get onboardingCreatingPlan => 'جاري إنشاء الخطة…';

  @override
  String get onboardingStartMyJourney => 'ابدأ رحلتي';

  @override
  String get onboardingContinue => 'متابعة';

  @override
  String get premiumTitle => 'Puffree Premium';

  @override
  String get premiumSubtitle =>
      'المزيد من الأدوات لرحلتك.\nاختر الخطة التي تناسبك.';

  @override
  String get oneMembership => 'وصول Premium واحد لكل شيء';

  @override
  String get everythingIncluded => 'كل شيء مشمول';

  @override
  String get everythingIncludedSubtitle =>
      'يفتح Premium تجربة Puffree الكاملة.';

  @override
  String get choosePlan => 'اختر خطتك';

  @override
  String get choosePlanSubtitle => 'يمكنك تغيير اختيارك قبل الشراء.';

  @override
  String get featureTasks => 'مهام موسعة';

  @override
  String get featureTasksSubtitle => 'المزيد من التمارين والتحديات';

  @override
  String get featureStats => 'إحصائيات كاملة';

  @override
  String get featureStatsSubtitle => 'رؤى تفصيلية للتقدم';

  @override
  String get profileEditTitle => 'الملف الشخصي';

  @override
  String get profileEditTapToChangePhoto => 'اضغط على الصورة للتغيير';

  @override
  String get profileEditNameLabel => 'الاسم';

  @override
  String get profileEditNameHint => 'أدخل اسمك';

  @override
  String get profileEditSaveButton => 'حفظ التغييرات';

  @override
  String get profileEditErrorEmptyName => 'يرجى إدخال اسم';

  @override
  String get profileEditSuccessUpdated => 'تم تحديث الملف الشخصي بنجاح';

  @override
  String profileEditErrorUpdate(String error) {
    return 'فشل تحديث الملف الشخصي: $error';
  }

  @override
  String get authWelcomeBack => 'مرحبًا بعودتك!';

  @override
  String get authCreateAccount => 'إنشاء حساب';

  @override
  String get authResetPassword => 'إعادة تعيين كلمة المرور';

  @override
  String get authLoginSubtitle => 'سجّل الدخول لمتابعة رحلتك';

  @override
  String get authRegisterSubtitle => 'ابدأ حياة خالية من التدخين اليوم';

  @override
  String get authForgotSubtitle => 'أدخل بريدك الإلكتروني وسنرسل لك التعليمات';

  @override
  String get authTabLogin => 'تسجيل الدخول';

  @override
  String get authTabRegister => 'التسجيل';

  @override
  String get authNameHint => 'اسمك';

  @override
  String get authNameRequired => 'أدخل اسمك';

  @override
  String get authEmailHint => 'البريد الإلكتروني';

  @override
  String get authEmailRequired => 'أدخل البريد الإلكتروني';

  @override
  String get authEmailInvalid => 'بريد إلكتروني غير صالح';

  @override
  String get authPasswordHint => 'كلمة المرور';

  @override
  String get authPasswordRequired => 'أدخل كلمة المرور';

  @override
  String get authPasswordMinLength =>
      'يجب أن تكون كلمة المرور 6 أحرف على الأقل';

  @override
  String get authConfirmPasswordHint => 'أعد إدخال كلمة المرور';

  @override
  String get authPasswordsDoNotMatch => 'كلمتا المرور غير متطابقتين';

  @override
  String get authForgotPassword => 'نسيت كلمة المرور؟';

  @override
  String get authLoginButton => 'تسجيل الدخول';

  @override
  String get authRegisterButton => 'إنشاء حساب';

  @override
  String get authSendLinkButton => 'إرسال الرابط';

  @override
  String get authBackToLogin => 'العودة لتسجيل الدخول';

  @override
  String get authOrContinueWith => 'أو تابع باستخدام';

  @override
  String get authGoogle => 'Google';

  @override
  String get authApple => 'Apple';

  @override
  String get authResetLinkSent =>
      'تم إرسال رابط إعادة التعيين إلى بريدك الإلكتروني!';

  @override
  String get authErrorGeneric => 'حدث خطأ. يرجى التحقق من البيانات.';

  @override
  String get authErrorSocial => 'فشل تسجيل الدخول عبر الشبكات الاجتماعية.';

  @override
  String get profileYourProfile => 'ملفك الشخصي';

  @override
  String get profileEdit => 'تعديل الملف الشخصي';

  @override
  String get switchAccountTitle => 'تسجيل الدخول إلى حساب آخر؟';

  @override
  String get switchAccountBody =>
      'ستفتح صفحة تسجيل الدخول حيث يمكنك الدخول إلى حساب آخر.';

  @override
  String get switchAccountButton => 'تسجيل الدخول إلى حساب آخر';

  @override
  String get switchAccountSubtitle => 'فتح صفحة تسجيل الدخول';

  @override
  String get continueAction => 'متابعة';

  @override
  String get logoutTitle => 'تسجيل الخروج؟';

  @override
  String get logoutBody => 'هل أنت متأكد أنك تريد تسجيل الخروج من حسابك؟';

  @override
  String get logoutButton => 'تسجيل الخروج';

  @override
  String get premiumBrand => 'Puffree Premium';

  @override
  String get motStartJourney =>
      'Today begins your new journey. One step already matters.';

  @override
  String get motMilestone1 =>
      'Your first day. You took the first big step. Keep going.';

  @override
  String get motMilestone3 =>
      'Three days. That is worth celebrating. You are staying on course.';

  @override
  String get motMilestone7 => 'A full week. Seven days of choosing yourself.';

  @override
  String get motMilestone10 =>
      '10 days. You have already built serious momentum.';

  @override
  String get motMilestone14 =>
      'Two weeks. You have made it through an important part of the journey.';

  @override
  String get motMilestone21 =>
      '21 days. You are proving that your habits can change.';

  @override
  String get motMilestone30 =>
      '30 days. A full month of new decisions. That is a big achievement.';

  @override
  String get motMilestone45 => '45 days. A month and a half of moving forward.';

  @override
  String get motMilestone60 =>
      '60 days. Two months of consistency. That is powerful.';

  @override
  String get motMilestone90 =>
      '90 days. Three months. Look how far you have come.';

  @override
  String get motMilestone120 =>
      '120 days. You keep choosing your path every day.';

  @override
  String get motMilestone180 =>
      'Six months. 180 days of consistency. That is seriously impressive.';

  @override
  String get motMilestone270 =>
      '270 days. You have created a huge distance from your old habit.';

  @override
  String get motMilestone365 =>
      'One year. 365 days of your journey. This is consistency, not luck.';

  @override
  String get motFirstWeek1 => 'Today, you only need to take the next step.';

  @override
  String get motFirstWeek2 =>
      'You do not have to finish the whole journey today. Just keep going.';

  @override
  String get motFirstWeek3 => 'Every day is its own win. Today is yours.';

  @override
  String get motFirstWeek4 =>
      'A difficult moment does not erase your progress.';

  @override
  String get motFirstWeek5 =>
      'You already started. Now give yourself a chance to continue.';

  @override
  String get motFirstWeek6 =>
      'One day at a time. That is how big changes are built.';

  @override
  String get motFirstWeek7 => 'You keep choosing yourself. That matters.';

  @override
  String get motSecondWeek1 =>
      'You are not where you started anymore. Keep moving.';

  @override
  String get motSecondWeek2 =>
      'Two weeks are closer than they seem. Keep your rhythm.';

  @override
  String get motSecondWeek3 => 'Your progress is built from small decisions.';

  @override
  String get motSecondWeek4 =>
      'Do not wait for a perfect day. Create the next good one.';

  @override
  String get motSecondWeek5 =>
      'You can get through a difficult craving and return to your plan.';

  @override
  String get motSecondWeek6 => 'Every new day builds more confidence.';

  @override
  String get motSecondWeek7 =>
      'You have already proven that you can handle difficult moments.';

  @override
  String get motFirstMonth1 =>
      'You are building a new habit one step at a time.';

  @override
  String get motFirstMonth2 => 'Your past does not define today’s choice.';

  @override
  String get motFirstMonth3 =>
      'Thirty days begin with one decision: keep going.';

  @override
  String get motFirstMonth4 => 'Confidence grows through many consistent days.';

  @override
  String get motFirstMonth5 => 'Every new day adds another page to your story.';

  @override
  String get motFirstMonth6 =>
      'Your progress belongs to you. Nobody can take it away.';

  @override
  String get motFirstMonth7 =>
      'You have already come far enough to be proud of yourself.';

  @override
  String get motFirstMonth8 =>
      'Keep going calmly. Big changes do not require rushing.';

  @override
  String get motSecondMonth1 => 'Two months is no longer a coincidence.';

  @override
  String get motSecondMonth2 => 'You are turning intention into consistency.';

  @override
  String get motSecondMonth3 =>
      'Your strength is in the decisions you make every day.';

  @override
  String get motSecondMonth4 =>
      'You already know you can handle difficult moments.';

  @override
  String get motSecondMonth5 => 'Keep building the life you want to live.';

  @override
  String get motSecondMonth6 =>
      'Every day away from the old habit is another step forward.';

  @override
  String get motSecondMonth7 =>
      'You are not competing with anyone. This path is yours.';

  @override
  String get motSecondMonth8 => 'Look back at day one. The progress is real.';

  @override
  String get motThirdMonth1 =>
      'Three months is serious distance. And you are still moving.';

  @override
  String get motThirdMonth2 =>
      'You have created a new starting point for yourself.';

  @override
  String get motThirdMonth3 =>
      'Consistency is stronger than motivation. You are proving it.';

  @override
  String get motThirdMonth4 => 'You keep choosing what matters to you.';

  @override
  String get motThirdMonth5 =>
      'With every day, the old pattern becomes less important.';

  @override
  String get motThirdMonth6 =>
      'You are not waiting for the right moment. You are creating it.';

  @override
  String get motThirdMonth7 => '90 days is a story made of many small wins.';

  @override
  String get motThirdMonth8 => 'You have come a long way. Keep building on it.';

  @override
  String get motLongTerm1 => 'You are far from where you started. Keep going.';

  @override
  String get motLongTerm2 =>
      'Freedom starts with a choice and grows through daily decisions.';

  @override
  String get motLongTerm3 =>
      'Your result is the sum of every day you kept going.';

  @override
  String get motLongTerm4 =>
      'You have created a distance you may once have thought impossible.';

  @override
  String get motLongTerm5 => 'Remember why you started.';

  @override
  String get motLongTerm6 => 'Every new day makes your story stronger.';

  @override
  String get motLongTerm7 =>
      'You are not going backward. You are moving forward.';

  @override
  String get motLongTerm8 =>
      'What once felt difficult is now part of your journey.';

  @override
  String get motLongTerm9 =>
      'You have already proven something important: change is possible.';

  @override
  String get motLongTerm10 => 'Keep living at your new rhythm.';

  @override
  String get motLevelDefault => 'New level. You keep moving forward.';

  @override
  String get motLevel1 =>
      'The journey has begun. The most important thing is taking the first step.';

  @override
  String get motLevel2 =>
      'The seed is growing. Protect your progress every day.';

  @override
  String get motLevel3 =>
      'You are growing. Small decisions create big changes.';

  @override
  String get motLevel4 =>
      'Your roots are getting stronger. Keep building your foundation.';

  @override
  String get motLevel5 =>
      'You are becoming more confident. Keep your momentum.';

  @override
  String get motLevel6 =>
      'Strength grows when you keep going through difficult moments.';

  @override
  String get motLevel7 => 'Your determination is becoming part of your story.';

  @override
  String get motLevel8 => 'The spark has become steady forward movement.';

  @override
  String get motLevel9 => 'You have come a long way. Give yourself credit.';

  @override
  String get motLevel10 =>
      'Level ten. You already understand the power of consistency.';

  @override
  String get motLevel11 =>
      'You keep growing even when the path gets difficult.';

  @override
  String get motLevel12 =>
      'You have become an example to yourself. Keep going.';

  @override
  String get motLevel13 =>
      'You have built serious momentum. Now protect your direction.';

  @override
  String get motLevel14 => 'Legendary level. Look at how far you have come.';

  @override
  String get motShort1 => 'Today is another step.';

  @override
  String get motShort2 => 'Keep moving forward.';

  @override
  String get motShort3 => 'You are doing it.';

  @override
  String get motShort4 => 'Your progress matters.';

  @override
  String get motShort5 => 'Do not let one difficult moment define the day.';

  @override
  String get motShort6 => 'You are stronger than your old habit.';

  @override
  String get motShort7 => 'Choose the next step.';

  @override
  String get motShort8 => 'You already started. Keep going.';

  @override
  String get motShort9 => 'Today’s choice matters.';

  @override
  String get motShort10 => 'One day at a time.';

  @override
  String get motShort11 => 'You can do more than you think.';

  @override
  String get motShort12 => 'Your journey belongs to you.';

  @override
  String get profileEditErrorPhotoNotFound => 'تعذر الحصول على الصورة المحددة';

  @override
  String get profileEditErrorOpenGallery => 'تعذر فتح المعرض';

  @override
  String get profileEditErrorPickPhoto => 'حدث خطأ أثناء اختيار الصورة';

  @override
  String get featureMotivation => 'تحفيز شخصي';

  @override
  String get featureMotivationSubtitle => 'إرشاد لرحلتك';

  @override
  String get featureSupport => 'أدوات دعم إضافية';

  @override
  String get featureSupportSubtitle => 'المزيد من المساعدة عند الحاجة';

  @override
  String get featureNotifications => 'تذكيرات ذكية';

  @override
  String get featureNotificationsSubtitle => 'تحفيز في الوقت المناسب';

  @override
  String get featureAds => 'بدون إعلانات';

  @override
  String get featureAdsSubtitle => 'تجربة هادئة ونظيفة';

  @override
  String get planMonthly => 'شهري';

  @override
  String get planMonthlySubtitle => 'مرن بدون التزام طويل';

  @override
  String get planYearly => 'سنوي';

  @override
  String get planYearlySubtitle => 'أفضل توازن بين السعر والميزات';

  @override
  String get planLifetime => 'مدى الحياة';

  @override
  String get planLifetimeSubtitle => 'دفعة واحدة — Premium للأبد';

  @override
  String get perMonth => '/ شهر';

  @override
  String get perYear => '/ سنة';

  @override
  String get bestValue => 'أفضل قيمة';

  @override
  String get oneTime => 'دفعة واحدة';

  @override
  String get buyMonthly => 'احصل على Premium شهريًا';

  @override
  String get buyYearly => 'احصل على Premium سنويًا';

  @override
  String get buyLifetime => 'احصل على Premium مدى الحياة';

  @override
  String get restorePurchases => 'استعادة المشتريات';

  @override
  String get securePurchase => 'شراء آمن';

  @override
  String get cancelAnytime => 'إلغاء في أي وقت';

  @override
  String get restoreAnytime => 'يمكن استعادة المشتريات';

  @override
  String get legalMonthly =>
      'يتجدد الاشتراك تلقائيًا كل شهر. يمكنك إلغاؤه من إعدادات App Store أو Google Play. يتم عرض السعر قبل تأكيد الشراء.';

  @override
  String get legalYearly =>
      'يتجدد الاشتراك تلقائيًا كل سنة. يمكنك إلغاؤه من إعدادات App Store أو Google Play. يتم عرض السعر قبل تأكيد الشراء.';

  @override
  String get legalLifetime =>
      'هذه عملية شراء لمرة واحدة ولا تتجدد تلقائيًا. يتم عرض السعر قبل تأكيد الشراء.';

  @override
  String get legalContactEmail => 'support@puffreeapp.com';

  @override
  String get privacyPolicyTitle => 'سياسة الخصوصية';

  @override
  String get privacyPolicyLastUpdated => 'آخر تحديث: يناير 2026';

  @override
  String get privacyPolicyIntro =>
      'يساعدك Puffree (\"نحن\" و\"لنا\" و\"التطبيق\") على تتبع رحلتك والتحفيز على الإقلاع عن التدخين. توضح هذه السياسة المعلومات التي نجمعها، وكيف نستخدمها، والخيارات المتاحة لك.';

  @override
  String get privacySection1Title => 'المعلومات التي نجمعها';

  @override
  String get privacySection1Body =>
      'تفاصيل الحساب التي تقدمها عند تسجيل الدخول، مثل عنوان البريد الإلكتروني واسم العرض وصورة الملف الشخصي، أو معرّف مجهول إذا كنت تستخدم التطبيق دون حساب. كما نخزن بيانات الامتناع عن التدخين التي تدخلها بنفسك، مثل تاريخ الإقلاع، وعدد السجائر يوميًا، وتكلفة علبة السجائر، والرغبات الشديدة التي تسجلها.';

  @override
  String get privacySection2Title => 'كيفية استخدام معلوماتك';

  @override
  String get privacySection2Body =>
      'لحساب مدة الامتناع عن التدخين، والإنجازات الصحية، والأموال التي وفرتها؛ لمزامنة تقدمك عبر الأجهزة؛ لإرسال تذكيرات وإشعارات تحفيزية اختيارية؛ لمعالجة مشتريات اشتراك Premium؛ ولتشخيص الأعطال وتحسين التطبيق.';

  @override
  String get privacySection3Title => 'تخزين البيانات وأمانها';

  @override
  String get privacySection3Body =>
      'يتم تخزين بياناتك باستخدام Firebase (Google Cloud) مع تشفير أثناء النقل. نطبق تدابير تقنية وتنظيمية معقولة لحماية بياناتك، ولكن لا توجد أي طريقة لتخزين البيانات أو نقلها عبر الإنترنت آمنة بشكل كامل.';

  @override
  String get privacySection4Title => 'الخدمات التابعة لجهات خارجية';

  @override
  String get privacySection4Body =>
      'نستخدم Firebase Authentication وCloud Firestore لإدارة الحسابات ومزامنة البيانات، ونستخدم أنظمة الفوترة في Apple App Store أو Google Play لمعالجة اشتراكات Premium. نحن لا نبيع معلوماتك الشخصية إلى جهات خارجية.';

  @override
  String get privacySection5Title => 'خياراتك وحقوقك';

  @override
  String get privacySection5Body =>
      'يمكنك مراجعة ملفك الشخصي أو تعديله في أي وقت، وإعادة ضبط تقدمك المحلي من الإعدادات، وتعطيل الإشعارات الفورية من إعدادات جهازك، وطلب الوصول إلى بياناتك أو تصحيحها أو حذفها من خلال التواصل معنا.';

  @override
  String get privacySection6Title => 'خصوصية الأطفال';

  @override
  String get privacySection6Body =>
      'Puffree غير موجه للأطفال دون سن 13 عامًا، أو دون سن 16 عامًا في الاتحاد الأوروبي، ولا نجمع معلومات شخصية منهم عن علم. إذا كنت تعتقد أن طفلًا قدم لنا بيانات، يرجى التواصل معنا حتى نتمكن من حذفها.';

  @override
  String get privacySection7Title => 'إخلاء المسؤولية الصحية';

  @override
  String get privacySection7Body =>
      'Puffree هو أداة لتتبع العادات مصممة لدعم رحلتك نحو حياة خالية من التدخين. وهو ليس جهازًا طبيًا ولا يقدم نصائح طبية أو تشخيصًا أو علاجًا. استشر دائمًا أخصائي رعاية صحية مؤهلًا بشأن الإقلاع عن التدخين.';

  @override
  String get privacySection8Title => 'التغييرات والتواصل';

  @override
  String get privacySection8Body =>
      'قد نقوم بتحديث هذه السياسة من وقت لآخر، وسيتم الإعلان عن التغييرات المهمة داخل التطبيق. إذا كانت لديك أسئلة حول هذه السياسة أو بياناتك، يرجى التواصل معنا باستخدام معلومات الاتصال أدناه.';

  @override
  String get termsOfUseTitle => 'شروط الاستخدام';

  @override
  String get termsOfUseLastUpdated => 'آخر تحديث: يناير 2026';

  @override
  String get termsOfUseIntro =>
      'تحكم شروط الاستخدام هذه وصولك إلى Puffree واستخدامك له. بإنشاء حساب أو استخدام التطبيق، فإنك توافق على هذه الشروط. إذا كنت لا توافق عليها، يرجى عدم استخدام التطبيق.';

  @override
  String get termsSection1Title => 'قبول الشروط';

  @override
  String get termsSection1Body =>
      'بتنزيل Puffree أو تثبيته أو استخدامه، فإنك تؤكد موافقتك على شروط الاستخدام هذه وعلى سياسة الخصوصية الخاصة بنا، وأن لديك الأهلية القانونية لإبرام هذه الاتفاقية.';

  @override
  String get termsSection2Title => 'وصف الخدمة';

  @override
  String get termsSection2Body =>
      'Puffree هو تطبيق لتتبع العادات والتحفيز يساعدك على مراقبة تقدمك بعد الإقلاع عن التدخين، بما في ذلك مدة الامتناع عن التدخين، والإنجازات الصحية، والأموال التي وفرتها، وسجل الرغبات الشديدة. وهو أداة للعافية الشخصية وليس خدمة طبية أو سريرية.';

  @override
  String get termsSection3Title => 'الأهلية والحسابات';

  @override
  String get termsSection3Body =>
      'يجب أن يكون عمرك 13 عامًا على الأقل، أو الحد الأدنى لسن الموافقة الرقمية في بلدك، لاستخدام Puffree. أنت مسؤول عن الحفاظ على سرية حسابك وعن جميع الأنشطة التي تتم من خلاله.';

  @override
  String get termsSection4Title => 'اشتراكات Premium والفوترة';

  @override
  String get termsSection4Body =>
      'يتم تقديم ميزات Premium من خلال اشتراك يتجدد تلقائيًا ويتم تحصيل رسومه عبر Apple App Store أو Google Play. تتجدد الاشتراكات تلقائيًا ما لم يتم إلغاؤها قبل 24 ساعة على الأقل من نهاية الفترة الحالية، وتتم معالجة عمليات استرداد الأموال وفقًا لسياسة المتجر المعني.';

  @override
  String get termsSection5Title => 'إخلاء المسؤولية الصحية والطبية';

  @override
  String get termsSection5Body =>
      'لا يقدم Puffree نصائح طبية وليس بديلًا عن الرعاية المهنية. قد يتضمن الإقلاع عن التدخين أعراض انسحاب؛ يرجى استشارة طبيب أو مقدم رعاية صحية مرخص قبل اتخاذ قرارات تتعلق بصحتك.';

  @override
  String get termsSection6Title => 'الاستخدام المقبول';

  @override
  String get termsSection6Body =>
      'توافق على عدم إساءة استخدام التطبيق، أو محاولة إجراء هندسة عكسية له أو تعطيل خدماته، أو تحميل محتوى غير قانوني أو ضار، أو استخدام التطبيق بأي طريقة تنتهك القوانين المعمول بها أو حقوق الآخرين.';

  @override
  String get termsSection7Title => 'إخلاء المسؤولية وحدود المسؤولية';

  @override
  String get termsSection7Body =>
      'يتم تقديم Puffree \"كما هو\" دون أي ضمانات من أي نوع. إلى أقصى حد يسمح به القانون، لا نتحمل المسؤولية عن أي أضرار غير مباشرة أو عرضية أو تبعية تنشأ عن استخدامك للتطبيق.';

  @override
  String get termsSection8Title => 'التغييرات على هذه الشروط والتواصل';

  @override
  String get termsSection8Body =>
      'قد نقوم بتحديث هذه الشروط من وقت لآخر؛ ويُعد استمرارك في استخدام التطبيق بعد سريان التغييرات قبولًا للشروط المعدلة. يمكن إرسال الأسئلة إلى عنوان الاتصال أدناه.';

  @override
  String get systemThemeLabel => 'النظام';

  @override
  String get notificationsEnabledLabel => 'الإشعارات مفعّلة';

  @override
  String get notificationsDisabledLabel => 'الإشعارات معطّلة';

  @override
  String get signInToAnotherAccount => 'تسجيل الدخول إلى حساب آخر';

  @override
  String get openSignInPage => 'فتح صفحة تسجيل الدخول';

  @override
  String get securePayment => 'دفع آمن';
}
