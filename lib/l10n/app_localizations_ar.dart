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
}
