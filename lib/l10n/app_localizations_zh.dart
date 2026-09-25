// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => 'Puffree';

  @override
  String get tagline => '远离吸烟的自由';

  @override
  String get today => '今天';

  @override
  String get streak => '连续';

  @override
  String get saved => '已节省';

  @override
  String get avoided => '已避免';

  @override
  String get totalDays => '总天数';

  @override
  String get dailyMotivation => '今日动力';

  @override
  String get checkIn => '今天没有吸烟';

  @override
  String get checkedInToday => '今日已打卡';

  @override
  String get missions => '今日任务';

  @override
  String completedOf(int completed, int total) {
    return '已完成 $completed / $total';
  }

  @override
  String get premium => 'Premium';

  @override
  String get tryFree => '免费试用3天';

  @override
  String get buyPremium => '购买 Premium';

  @override
  String get restore => '恢复购买';

  @override
  String get premiumHint => '使用 Premium 解锁全部功能';

  @override
  String get settings => '设置';

  @override
  String get progress => '你的进度';

  @override
  String get statistics => '统计';

  @override
  String get currentStreak => '当前连续';

  @override
  String get record => '纪录';

  @override
  String get bodyChanges => '身体发生的变化';

  @override
  String get resetProgress => '重置进度';

  @override
  String get resetConfirm => '所有关于天数、连续和统计的数据将被删除。此操作无法撤销。';

  @override
  String get cancel => '取消';

  @override
  String get reset => '重置';

  @override
  String get journalTitle => '日记';

  @override
  String get journalHint => '写下你的想法';

  @override
  String get journalPlaceholder => '你今天感觉如何？';

  @override
  String get save => '保存';

  @override
  String get moodCheck => '你感觉如何？';

  @override
  String get moodCheckHint => '花一点时间检查自己的状态。';

  @override
  String get version => '版本';

  @override
  String get privacy => '隐私政策';

  @override
  String get terms => '使用条款';

  @override
  String get disclaimer =>
      'Puffree 是一款激励应用。它不是医疗设备，也不能替代专业医疗建议。如果有严重的尼古丁依赖，请咨询专家。';

  @override
  String level(int number) {
    return '等级 $number';
  }

  @override
  String daysSmokeFree(int count) {
    return '已戒烟 $count 天';
  }

  @override
  String nextLevelProgress(int percent) {
    return '距离下一级 $percent%';
  }

  @override
  String get friend => '朋友';

  @override
  String helloName(String name) {
    return '你好，$name！';
  }

  @override
  String get pathToFreedom => '通往自由的道路';

  @override
  String get withoutCigs => '没有香烟';

  @override
  String get iSmoked => '我吸烟了';

  @override
  String get relapseTitle => '没关系';

  @override
  String get relapseBody => '一根香烟不会抹去你的进度。从这个时刻学习，继续向前。';

  @override
  String get relapseDone => '继续';

  @override
  String get home => '首页';

  @override
  String get tasks => '任务';

  @override
  String get missionBreathe => '深呼吸';

  @override
  String get missionWater => '喝水';

  @override
  String get missionWalk => '步行10分钟';

  @override
  String get missionJournal => '写下想法';

  @override
  String get missionMeditation => '冥想5分钟';

  @override
  String get missionFocus => '无手机专注';

  @override
  String get missionReflect => '回顾一天';

  @override
  String get missionHelp => '支持他人';

  @override
  String get missionBreatheDesc => '做几次缓慢的深呼吸。';

  @override
  String get missionWaterDesc => '喝一杯水。';

  @override
  String get missionWalkDesc => '步行10分钟。';

  @override
  String get missionJournalDesc => '写下关于今天的一个想法。';

  @override
  String get missionMeditationDesc => '花5分钟冥想。';

  @override
  String get missionFocusDesc => '花一些时间在没有手机的情况下专注。';

  @override
  String get missionReflectDesc => '想想今天过得怎么样。';

  @override
  String get missionHelpDesc => '做一件善意的事来支持某人。';

  @override
  String get sosTitle => 'SOS 支持';

  @override
  String get sosTimer => '渴望计时器';

  @override
  String get sosBreathe => '呼吸';

  @override
  String get sosChat => '交谈';

  @override
  String get sosStart => '开始';

  @override
  String get sosDone => '完成';

  @override
  String get sosManaged => '你控制住了渴望！';

  @override
  String get sosWon => '你赢了！';

  @override
  String get sosLeft => '剩余';

  @override
  String get sosTip1 => '做几次缓慢的深呼吸。';

  @override
  String get sosTip2 => '喝一杯水。';

  @override
  String get sosTip3 => '换个地方。';

  @override
  String get sosTip4 => '让双手忙碌起来。';

  @override
  String get sosTip5 => '想想你为什么开始。';

  @override
  String get sosTip6 => '给渴望几分钟时间过去。';

  @override
  String get breatheIn => '吸气';

  @override
  String get breatheHold => '屏住';

  @override
  String get breatheOut => '呼气';

  @override
  String get breatheHint => '跟随圆圈缓慢呼吸。';

  @override
  String get breatheStart => '开始呼吸';

  @override
  String get chatPick => '你现在感觉如何？';

  @override
  String get chatCraving => '我有渴望';

  @override
  String get chatStress => '我感到压力';

  @override
  String get chatBoredom => '我感到无聊';

  @override
  String get chatNeedWalk => '我需要走走';

  @override
  String get chatNeedWater => '我需要喝水';

  @override
  String get chatNeedBreathe => '我需要呼吸';

  @override
  String get chatIntroStress => '看起来你感到压力。让我们一起度过这一刻。';

  @override
  String get chatIntroBoredom => '无聊可能会让渴望更强烈。让我们找点其他事情专注。';

  @override
  String get chatIntroCraving => '渴望可能很强烈，但它会过去。让我们一次一个时刻。';

  @override
  String get chatReplyStress => '试着做几次缓慢的呼吸，给自己一个短暂的休息。你不必对渴望采取行动。';

  @override
  String get chatReplyBoredom => '让我们换个环境。短途散步、喝水或让双手忙碌起来。';

  @override
  String get chatReplyCraving => '做决定前先等几分钟。喝点水，缓慢呼吸，提醒自己为什么开始。';

  @override
  String get onboardingTitle1 => '自由呼吸';

  @override
  String get onboardingDesc1 => 'Puffree 帮助你一步一步戒烟——没有压力，有支持。';

  @override
  String get onboardingTitle2 => '等级与进度';

  @override
  String get onboardingDesc2 => '没有香烟的每一天都会解锁新等级。看着你的力量和健康成长。';

  @override
  String get onboardingTitle3 => '每日支持';

  @override
  String get onboardingDesc3 => '动力、任务和进度跟踪。在这条路上你并不孤单。';

  @override
  String get aboutYou => '关于你的一些信息';

  @override
  String get aboutYouDesc => '这有助于计算节省的金钱和香烟';

  @override
  String get cigsPerDay => '以前每天的香烟数';

  @override
  String get pricePerPack => '每包价格';

  @override
  String get startJourney => '开始旅程';

  @override
  String get next => '下一步';

  @override
  String get skip => '跳过';

  @override
  String get youGotThis => '你能行。一次一个时刻。';

  @override
  String get waitTheWave => '度过渴望的浪潮';

  @override
  String get youPassedThis => '你度过了这一刻';

  @override
  String get greatJob => '做得好。你掌控着局面。';

  @override
  String get giveYourselfMinutes => '给自己几分钟，专注于当下。';

  @override
  String get keepGoing => '继续';

  @override
  String get done => '完成';

  @override
  String get breatheSlowly => '缓慢呼吸';

  @override
  String get followTheCircle => '跟随圆圈的节奏';

  @override
  String get chooseWhatFits => '选择最符合你现在感觉的选项。';

  @override
  String get yourResults => '你的结果';

  @override
  String get whatChanged => '因你而已经改变的事情';

  @override
  String get recoveryPath => '恢复之路';

  @override
  String get everyMilestone => '每一个里程碑都是向前的又一步';

  @override
  String get levelProgress => '到下一级的进度';

  @override
  String get yourPathContinues => '你的道路在继续';

  @override
  String get daysWordOne => '天';

  @override
  String get daysWordFew => '天';

  @override
  String get daysWordMany => '天';

  @override
  String get momentum => '动力';

  @override
  String missionsLeft(int count) {
    return '还剩 $count 个任务';
  }

  @override
  String get allMissionsDone => '所有任务已完成';

  @override
  String get dayComplete => '今日完成';

  @override
  String get keepGoingShort => '继续';

  @override
  String get inProgress => '进行中';

  @override
  String get complete => '已完成';

  @override
  String get yourPlanToday => '今日计划';

  @override
  String get everythingDone => '全部完成';

  @override
  String get theme => '主题';

  @override
  String get language => '语言';

  @override
  String get notifications => '通知';

  @override
  String get notificationsHint => '提醒与动力';

  @override
  String get data => '数据';

  @override
  String get aboutApp => '关于应用';

  @override
  String get appTheme => '应用主题';

  @override
  String get chooseTheme => '选择 Puffree 的外观。';

  @override
  String get systemTheme => '系统';

  @override
  String get systemThemeDesc => '跟随手机设置';

  @override
  String get lightTheme => '浅色';

  @override
  String get lightThemeDesc => '始终使用浅色主题';

  @override
  String get darkTheme => '深色';

  @override
  String get darkThemeDesc => '始终使用深色主题';

  @override
  String get premiumActive => 'Premium 已激活';

  @override
  String get trialActive => '试用期已激活';

  @override
  String get fullAccess => '访问全部功能';

  @override
  String get openPremium => '打开 Premium 和订阅选项';

  @override
  String get resetProgressTitle => '重置进度？';

  @override
  String get resetProgressBody => '所有关于天数、连续和统计的数据将被删除。此操作无法撤销。';

  @override
  String get excellent => '太棒了！';

  @override
  String get anotherDayFree => '又一天没有香烟';

  @override
  String get continueBtn => '继续';

  @override
  String get newAchievement => '新成就';

  @override
  String get newLevel => '新等级！';

  @override
  String get levelUpMessage => '继续加油——你做得很好！';

  @override
  String get freeFor => '已自由';

  @override
  String get toNextLevel => '到下一级';

  @override
  String get keyResults => '关键结果';

  @override
  String get progressSystem => '进度系统';

  @override
  String get everyDayCloser => '每一天都让你更接近下一级';

  @override
  String get current => '当前';

  @override
  String get nextLevel => '下一个';

  @override
  String get smallSteps => '小步前进。大变化。';

  @override
  String get youAreFurther => '你已经比昨天走得更远';

  @override
  String get madeForFuture => '为无烟的未来而生';

  @override
  String get dayStreakCaption => '连续天数';

  @override
  String get cigarettesAvoidedCaption => '已避免';

  @override
  String get freeDaysCaption => '自由天数';

  @override
  String get levelLabel => '等级';

  @override
  String get keepStreakAlive => '保持连续记录';

  @override
  String get failedToLoadProgress => '进度加载失败';

  @override
  String get levelTitle1 => '第一口呼吸';

  @override
  String get levelTitle2 => '幼苗';

  @override
  String get levelTitle3 => '生长';

  @override
  String get levelTitle4 => '扎根';

  @override
  String get levelTitle5 => '树干';

  @override
  String get levelTitle6 => '力量';

  @override
  String get levelTitle7 => '火焰';

  @override
  String get levelTitle8 => '火花';

  @override
  String get levelTitle9 => '冠军';

  @override
  String get levelTitle10 => '大师';

  @override
  String get levelTitle11 => '钻石';

  @override
  String get levelTitle12 => '星辰';

  @override
  String get levelTitle13 => '火箭';

  @override
  String get levelTitle14 => '传奇';

  @override
  String get levelTitleDefault => '路径';

  @override
  String get milestone1Title => '新旅程的开始';

  @override
  String get milestone1Desc => '你已经迈出了第一步，正在继续前进。';

  @override
  String get milestone2Title => '初步变化';

  @override
  String get milestone2Desc => '身体正逐渐适应无烟生活。';

  @override
  String get milestone3Title => '新阶段';

  @override
  String get milestone3Desc => '无烟生活的新节奏正逐渐形成。';

  @override
  String get milestone4Title => '稳步进展';

  @override
  String get milestone4Desc => '两周是养成新习惯道路上的一个显著里程碑。';

  @override
  String get milestone5Title => '习惯大转变';

  @override
  String get milestone5Desc => '坚持一个月是一个重大的个人成就。';

  @override
  String get milestone6Title => '重要关口';

  @override
  String get milestone6Desc => '继续前行有助于巩固新的生活方式。';

  @override
  String get milestone7Title => '自由周年';

  @override
  String get milestone7Desc => '无烟一年是你人生旅程中的一个重大里程碑。';

  @override
  String get navProgress => '进度';

  @override
  String get more => '更多';

  @override
  String get settingsSubtitle => '按自己的喜好设置 Puffree';

  @override
  String get sectionApp => '应用';

  @override
  String get sectionData => '数据';

  @override
  String get sectionAbout => '关于';

  @override
  String get resetProgressSubtitle => '重新开始旅程';

  @override
  String get premiumActiveBadge => '已激活';

  @override
  String get splashCaption => '远离吸烟的自由';

  @override
  String get todayStartJourney => '今天是你新旅程的开始。';

  @override
  String realResultKeepGoing(int count, String daysWord) {
    return '$count $daysWord 已经是真实的成果。请继续保持。';
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
  String get onbTitle1 => '你使用什么？';

  @override
  String get onbSubtitle1 => '我们将根据你的习惯进行个性化设置。';

  @override
  String get onbTitle2 => '你使用多少？';

  @override
  String get onbSubtitle2 => '真实的数字能帮助我们计算你的实际进度。';

  @override
  String get onbTitle3 => '这花费你多少钱？';

  @override
  String get onbSubtitle3 => '看看你每个月可以节省多少钱。';

  @override
  String get onbTitle4 => '你的身体感觉如何？';

  @override
  String get onbSubtitle4 => '选择你最常注意到的症状。';

  @override
  String get onbTitle5 => '你为什么想戒掉？';

  @override
  String get onbSubtitle5 => '你的理由将驱动我们为你制定的计划。';

  @override
  String get onbTitle6 => '正在制定你的计划';

  @override
  String get onbSubtitle6 => '我们正在为你创建专属路径。';

  @override
  String get onbTitle7 => '你的计划已准备就绪';

  @override
  String get onbSubtitle7 => '用为你量身定制的计划开始你的旅程。';

  @override
  String get onbEyebrowBeforeStart => '开始之前';

  @override
  String get onbEyebrowStartingPoint => '起点';

  @override
  String get onbEyebrowRealCost => '真实成本';

  @override
  String get onbEyebrowSelfAwareness => '自我认知';

  @override
  String get onbEyebrowYourReason => '你的理由';

  @override
  String get onbEyebrowPersonalization => '个性化';

  @override
  String get onbEyebrowDone => '你已准备好';

  @override
  String get onbHabitCigarettesTitle => '香烟';

  @override
  String get onbHabitCigarettesSubtitle => '普通香烟或手卷烟';

  @override
  String get onbHabitVapeTitle => '电子烟 / 烟弹';

  @override
  String get onbHabitVapeSubtitle => '电子烟和烟弹系统';

  @override
  String get onbPodsPerWeekLabel => '每周烟弹数量';

  @override
  String get onbCigarettesPerDayLabel => '每天香烟数量';

  @override
  String get onbYearsSmokedLabel => '吸烟年数';

  @override
  String get onbUnitPieces => '支';

  @override
  String get onbUnitYears => '年';

  @override
  String get onbAmountVapeHint => '这有助于我们估算你的每周成本和进度。';

  @override
  String get onbPotentialSavingsLabel => '潜在每月节省';

  @override
  String get onbPerMonthQuitting => '戒烟后每月';

  @override
  String get onbPricePerPodLabel => '每个烟弹价格';

  @override
  String get onbPricePerPackLabel => '每包价格';

  @override
  String get onbCigarettesPerPackLabel => '每包香烟数量';

  @override
  String get onbCurrencyLabel => '货币';

  @override
  String get onbSymptomBreath => '气短';

  @override
  String get onbSymptomAnxiety => '焦虑 / 不安';

  @override
  String get onbSymptomPulse => '心跳过快或不规律';

  @override
  String get onbSymptomMorning => '晨咳 / 痰';

  @override
  String get onbSymptomCough => '频繁咳嗽';

  @override
  String get onbBodyHint => '你可以选择多个。这有助于我们关注对你重要的事情。';

  @override
  String get onbMotivationHealth => '更好的健康和精力';

  @override
  String get onbMotivationFreedom => '摆脱成瘾';

  @override
  String get onbMotivationMoney => '节省金钱';

  @override
  String get onbMotivationFamily => '为了家人 / 孩子';

  @override
  String get onbMotivationControl => '重新掌控我的生活';

  @override
  String get onbMotivationFuture => '更健康的未来';

  @override
  String get onbSelectMultipleHint => '你可以选择多个理由';

  @override
  String get onbStartingMapLabel => '正在构建你的地图';

  @override
  String get onbBuildingStepSave => '计算你的节省金额';

  @override
  String get onbBuildingStepGoal => '设定你的主要目标';

  @override
  String get onbBuildingStepScenarios => '创建个人场景';

  @override
  String get onbBuildingStepSteps => '准备第一步';

  @override
  String get onbBuildingHint => '这通常只需要几秒钟。';

  @override
  String get onbPleaseWait => '请稍候…';

  @override
  String get onbCreatingPlan => '正在创建你的计划…';

  @override
  String get onbFirst30DaysLabel => '前30天';

  @override
  String get onbLessExpensesLabel => '减少开支';

  @override
  String get onbSavingsPerMonth => '每月节省';

  @override
  String get onbSavingsPerYear => '每年节省';

  @override
  String get onbPlanPersonalizedTitle => '你的个性化计划';

  @override
  String onbPlanPersonalizedSubtitle(int motivations, int symptoms) {
    return '基于 $motivations 个理由和 $symptoms 个症状';
  }

  @override
  String get onbResultHint => '你以后可以随时在设置中调整这些数字。';

  @override
  String get onbBreathingHint => '呼吸';

  @override
  String get onbContinue => '继续';

  @override
  String get onbStartJourney => '开始我的旅程';

  @override
  String get onboardingHabitTitle => '准备好重新掌控了吗？';

  @override
  String get onboardingHabitSubtitle =>
      '先了解你的习惯。没有冗长表格——几个精确回答，Puffree 就会为你规划路线。';

  @override
  String get onboardingAmountTitle => '描述你平常的一天';

  @override
  String get onboardingAmountSubtitle => '这不是为了评判你。这是我们衡量进度的起点。';

  @override
  String get onboardingMoneyTitle => '这个习惯从你身上拿走多少？';

  @override
  String get onboardingMoneySubtitle => '价格会立即在屏幕上更新——你看到的不是抽象数字，而是习惯的真实成本。';

  @override
  String get onboardingBodyTitle => '你在自己身上注意到什么？';

  @override
  String get onboardingBodySubtitle => '勾选适用于你的选项。可以选择多项或一项都不选。';

  @override
  String get onboardingMotivationTitle => '你为什么要这样做？';

  @override
  String get onboardingMotivationSubtitle =>
      '这将成为你的个人支柱。Puffree 会在需要时把你带回这个理由。';

  @override
  String get onboardingBuildingTitle => '正在构建你的路线';

  @override
  String get onboardingBuildingSubtitle => '不是医学诊断，也不是完美一天的承诺。只是你的起点和清晰的下一步。';

  @override
  String get onboardingResultTitle => '你的第一个进度界面已经在这里';

  @override
  String get onboardingResultSubtitle => '我们将起始数据保存在设备上，并转化为可衡量的进度。';

  @override
  String get onboardingEyebrowBeforeStart => '开始之前';

  @override
  String get onboardingEyebrowStartPoint => '你的起点';

  @override
  String get onboardingEyebrowRealCost => '真实成本';

  @override
  String get onboardingEyebrowSelfFeeling => '自我感受';

  @override
  String get onboardingEyebrowYourReason => '你的理由';

  @override
  String get onboardingEyebrowPersonalization => '个性化';

  @override
  String get onboardingEyebrowDone => '完成';

  @override
  String get onboardingCigarettesChoice => '我抽香烟';

  @override
  String get onboardingCigarettesChoiceSubtitle => 'Puffree 的主要场景';

  @override
  String get onboardingVapeChoice => '我使用电子烟';

  @override
  String get onboardingVapeChoiceSubtitle => '我们会把这个选择保存在你的个人资料中';

  @override
  String get onboardingPodsPerWeek => '每周烟弹 / 一次性烟支数';

  @override
  String get onboardingUnitPcs => '个';

  @override
  String get onboardingVapeHint => '之后 Puffree 个人资料可以分开香烟和电子烟场景，且不丢失历史。';

  @override
  String get onboardingCigarettesPerDay => '每天香烟数';

  @override
  String get onboardingYearsSmoked => '已经持续多少年';

  @override
  String get onboardingUnitYears => '年';

  @override
  String get onboardingPricePerPod => '一个烟弹的价格';

  @override
  String get onboardingPricePerPack => '一包的价格';

  @override
  String get onboardingCigarettesPerPack => '每包香烟数';

  @override
  String get onboardingPotentialSavings => '潜在节省';

  @override
  String get onboardingPerMonthIfQuit => '如果戒掉习惯，每月可节省';

  @override
  String get onboardingCurrency => '货币';

  @override
  String get onboardingSymptomBreath => '感觉呼吸变得更沉重';

  @override
  String get onboardingSymptomAnxiety => '有时感到强烈焦虑';

  @override
  String get onboardingSymptomPulse => '注意到脉搏加快';

  @override
  String get onboardingSymptomMorning => '早上特别想抽第一支烟';

  @override
  String get onboardingSymptomCough => '有晨咳';

  @override
  String get onboardingBodyHint => '这是自我描述，不是诊断。如果症状让你担心，最好与医生讨论。';

  @override
  String get onboardingMotivationHealth => '我想更好地照顾健康';

  @override
  String get onboardingMotivationFreedom => '我想感觉更自由';

  @override
  String get onboardingMotivationMoney => '我想停止把钱花在这上面';

  @override
  String get onboardingMotivationFamily => '我想在亲人面前少依赖这个习惯';

  @override
  String get onboardingMotivationControl => '我想重新获得掌控感';

  @override
  String get onboardingMotivationFuture => '我想为未来而做这件事';

  @override
  String get onboardingCanSelectSeveral => '可以选择多项';

  @override
  String get onboardingYourStartCard => '你的起始卡片';

  @override
  String get onboardingStepSaveAnswers => '保存你的回答';

  @override
  String get onboardingStepFinancialGoal => '计算财务目标';

  @override
  String get onboardingStepCravingScenarios => '形成渴求场景';

  @override
  String get onboardingStepFirstSteps => '准备第一步';

  @override
  String get onboardingBuildingHint =>
      '我们故意不承诺「X 小时内肺部再生」——Puffree 展示可衡量的内容，并把事实与动机分开。';

  @override
  String get onboardingSavingsPerMonth => '节省 / 月';

  @override
  String get onboardingSavingsPerYear => '节省 / 年';

  @override
  String get onboardingResultHint => '这些数字是根据你的回答计算的，不是结果承诺。真正的进步取决于你的行为。';

  @override
  String get onboardingFirst30Days => '前 30 天';

  @override
  String get onboardingLessSpendMoreControl => '少花钱 → 更掌控';

  @override
  String get onboardingPlanPersonalized => '计划已个性化';

  @override
  String onboardingMotivationsCount(int count) {
    return '$count 个个人动机';
  }

  @override
  String onboardingSymptomsCount(int count) {
    return '$count 个已标记状态';
  }

  @override
  String get onboardingTakeFirstStep => '迈出第一步';

  @override
  String get onboardingPleaseWait => '请稍等几秒…';

  @override
  String get onboardingCreatingPlan => '正在创建计划…';

  @override
  String get onboardingStartMyJourney => '开始我的旅程';

  @override
  String get onboardingContinue => '继续';

  @override
  String get premiumTitle => 'Puffree Premium';

  @override
  String get premiumSubtitle => '为您的旅程提供更多工具。\n选择适合您的方案。';

  @override
  String get oneMembership => '一次 Premium 访问解锁全部功能';

  @override
  String get everythingIncluded => '全部包含';

  @override
  String get everythingIncludedSubtitle => 'Premium 解锁完整的 Puffree 体验。';

  @override
  String get choosePlan => '选择您的方案';

  @override
  String get choosePlanSubtitle => '购买前可以更改选择。';

  @override
  String get featureTasks => '扩展任务';

  @override
  String get featureTasksSubtitle => '更多练习与挑战';

  @override
  String get featureStats => '完整统计';

  @override
  String get featureStatsSubtitle => '详细进度洞察';

  @override
  String get profileEditTitle => '个人资料';

  @override
  String get profileEditTapToChangePhoto => '点击照片进行更改';

  @override
  String get profileEditNameLabel => '姓名';

  @override
  String get profileEditNameHint => '请输入姓名';

  @override
  String get profileEditSaveButton => '保存更改';

  @override
  String get profileEditErrorEmptyName => '请输入姓名';

  @override
  String get profileEditSuccessUpdated => '个人资料已成功更新';

  @override
  String profileEditErrorUpdate(String error) {
    return '更新个人资料失败：$error';
  }

  @override
  String get authWelcomeBack => '欢迎回来！';

  @override
  String get authCreateAccount => '创建账户';

  @override
  String get authResetPassword => '重置密码';

  @override
  String get authLoginSubtitle => '登录以继续你的旅程';

  @override
  String get authRegisterSubtitle => '今天开始无烟新生活';

  @override
  String get authForgotSubtitle => '输入你的邮箱，我们将发送说明';

  @override
  String get authTabLogin => '登录';

  @override
  String get authTabRegister => '注册';

  @override
  String get authNameHint => '你的姓名';

  @override
  String get authNameRequired => '请输入姓名';

  @override
  String get authEmailHint => '邮箱地址';

  @override
  String get authEmailRequired => '请输入邮箱';

  @override
  String get authEmailInvalid => '邮箱无效';

  @override
  String get authPasswordHint => '密码';

  @override
  String get authPasswordRequired => '请输入密码';

  @override
  String get authPasswordMinLength => '密码至少需要6个字符';

  @override
  String get authConfirmPasswordHint => '确认密码';

  @override
  String get authPasswordsDoNotMatch => '两次密码不一致';

  @override
  String get authForgotPassword => '忘记密码？';

  @override
  String get authLoginButton => '登录';

  @override
  String get authRegisterButton => '注册';

  @override
  String get authSendLinkButton => '发送链接';

  @override
  String get authBackToLogin => '返回登录';

  @override
  String get authOrContinueWith => '或使用';

  @override
  String get authGoogle => 'Google';

  @override
  String get authApple => 'Apple';

  @override
  String get authResetLinkSent => '密码重置链接已发送到您的邮箱！';

  @override
  String get authErrorGeneric => '出现错误，请检查输入信息。';

  @override
  String get authErrorSocial => '社交登录失败。';

  @override
  String get profileYourProfile => '你的个人资料';

  @override
  String get profileEdit => '编辑个人资料';

  @override
  String get switchAccountTitle => '登录其他账户？';

  @override
  String get switchAccountBody => '将打开登录页面，你可以登录其他账户。';

  @override
  String get switchAccountButton => '登录其他账户';

  @override
  String get switchAccountSubtitle => '打开登录页面';

  @override
  String get continueAction => '继续';

  @override
  String get logoutTitle => '退出登录？';

  @override
  String get logoutBody => '确定要退出当前账户吗？';

  @override
  String get logoutButton => '退出登录';

  @override
  String get premiumBrand => 'Puffree Premium';

  @override
  String get motStartJourney => '今天是你新旅程的开始。迈出一步就很了不起。';

  @override
  String get motMilestone1 => '第一天。你迈出了勇敢的第一步。继续保持。';

  @override
  String get motMilestone3 => '三天了。这值得庆祝，你正行驶在正确的轨道上。';

  @override
  String get motMilestone7 => '整整一周。连续七天你都做出了有利于自己的选择。';

  @override
  String get motMilestone10 => '10天。你已经积累了相当大的自信。';

  @override
  String get motMilestone14 => '两周。你度过了旅程中至关重要的一段。你会越来越强大。';

  @override
  String get motMilestone21 => '21天。你正在用行动证明，自己完全有能力改变习惯。';

  @override
  String get motMilestone30 => '30天。整整一个月的新选择。这是一个伟大的成就。';

  @override
  String get motMilestone45 => '45天。一个半月的坚持，你在不断向前迈进。';

  @override
  String get motMilestone60 => '60天。两个月的自律。非常棒的结果。';

  @override
  String get motMilestone90 => '90天。三个月。看看你已经走了多远。';

  @override
  String get motMilestone120 => '120天。每一天你都在坚定地选择属于自己的路。';

  @override
  String get motMilestone180 => '半年。180天的坚持。这真的很震撼。';

  @override
  String get motMilestone270 => '270天。你已经与旧习惯拉开了巨大的距离。';

  @override
  String get motMilestone365 => '一年。365天的历程。这不是偶然，这是不懈的坚持。';

  @override
  String get motFirstWeek1 => '今天，你只需要迈出下一步。';

  @override
  String get motFirstWeek2 => '你不需要在今天走完全程，只需一步一步走下去。';

  @override
  String get motFirstWeek3 => '每一天都是一次独立的胜利。今天属于你。';

  @override
  String get motFirstWeek4 => '艰难的时刻不会抹去你已取得的进步。';

  @override
  String get motFirstWeek5 => '你已经开始了，给自己一个继续下去的机会。';

  @override
  String get motFirstWeek6 => '日复一日。伟大的改变正是这样铸就的。';

  @override
  String get motFirstWeek7 => '你一次又一次选择战胜自己，这至关重要。';

  @override
  String get motSecondWeek1 => '你已经远离了起点。继续向前。';

  @override
  String get motSecondWeek2 => '两周比想象中近得多。保持你的节奏。';

  @override
  String get motSecondWeek3 => '你的进步是由每一个微小的决定汇聚而成的。';

  @override
  String get motSecondWeek4 => '不要等待完美的一天，去创造下一个美好的一天。';

  @override
  String get motSecondWeek5 => '你完全有能力战胜冲动，回归预定计划。';

  @override
  String get motSecondWeek6 => '每一个新的一天都在巩固你的自信。';

  @override
  String get motSecondWeek7 => '你已经证明了自己能够挺过艰难时刻。';

  @override
  String get motFirstMonth1 => '你正在一步步建立全新的习惯。';

  @override
  String get motFirstMonth2 => '过去并不能决定你今天的选择。';

  @override
  String get motFirstMonth3 => '三十天始于一个简单的决定：坚持下去。';

  @override
  String get motFirstMonth4 => '自信不是一天建成的，而是源于日复一日的坚持。';

  @override
  String get motFirstMonth5 => '每一个新的一天都在为你的故事翻开新的一页。';

  @override
  String get motFirstMonth6 => '你的进步只属于你，没有人能从你身边拿走。';

  @override
  String get motFirstMonth7 => '你走得足够远，完全值得为自己感到骄傲。';

  @override
  String get motFirstMonth8 => '从容前行。伟大的改变不需要急于求成。';

  @override
  String get motSecondMonth1 => '两个月绝对不再是偶然。';

  @override
  String get motSecondMonth2 => '你正在把决心转化为长期的习惯。';

  @override
  String get motSecondMonth3 => '你的力量蕴藏在每天所做的决定中。';

  @override
  String get motSecondMonth4 => '你已经知道自己有能力应对艰难时刻。';

  @override
  String get motSecondMonth5 => '继续去构建你渴望的生活。';

  @override
  String get motSecondMonth6 => '远离旧习惯的每一天，都是向目标迈进的一大步。';

  @override
  String get motSecondMonth7 => '你不必与任何人竞争，这是只属于你自己的道路。';

  @override
  String get motSecondMonth8 => '回头看看第一天的自己，进步显而易见。';

  @override
  String get motThirdMonth1 => '三个月是一段长远的距离。而你依然在坚实前行。';

  @override
  String get motThirdMonth2 => '你为自己树立了全新的起点。';

  @override
  String get motThirdMonth3 => '自律比一时冲动的动力更强大，你正在证明这一点。';

  @override
  String get motThirdMonth4 => '你始终在选择对自己真正重要的事物。';

  @override
  String get motThirdMonth5 => '随着时光推移，旧的模式正变得越来越无足轻重。';

  @override
  String get motThirdMonth6 => '你不再等待时机，你在亲自创造时机。';

  @override
  String get motThirdMonth7 => '90天，是一个由许多微小胜利交织而成的故事。';

  @override
  String get motThirdMonth8 => '你已经走了很远，不要停下脚步。';

  @override
  String get motLongTerm1 => '你已经远远抛开了起点。继续前行。';

  @override
  String get motLongTerm2 => '自由始于选择，源于每日的坚定。';

  @override
  String get motLongTerm3 => '你的成果，是你坚持走过的每一天累积起来的。';

  @override
  String get motLongTerm4 => '你创造了曾经甚至不敢想象的距离。';

  @override
  String get motLongTerm5 => '不要忘记当初为什么出发。';

  @override
  String get motLongTerm6 => '每一个新的一天都在让你的故事更具力量。';

  @override
  String get motLongTerm7 => '你没有退路，你在坚定地向前。';

  @override
  String get motLongTerm8 => '曾经看似艰难的事情，如今已成为你人生道路的一部分。';

  @override
  String get motLongTerm9 => '你已经向自己证明了最重要的事：改变是完全可能的。';

  @override
  String get motLongTerm10 => '继续以你的新节奏生活吧。';

  @override
  String get motLevelDefault => '全新等级。你正在不断前行。';

  @override
  String get motLevel1 => '旅程已经开启。最重要的是迈出第一步。';

  @override
  String get motLevel2 => '幼苗已经破土。用心呵护你每一天的进步。';

  @override
  String get motLevel3 => '你在成长。微小的决定能带来巨大的改变。';

  @override
  String get motLevel4 => '根基日益稳固。继续构建你的基石。';

  @override
  String get motLevel5 => '你越来越自信了。保持住这个节奏。';

  @override
  String get motLevel6 => '力量诞生于你直面困难依然坚持的时刻。';

  @override
  String get motLevel7 => '你的决心正在成为你人生故事的一部分。';

  @override
  String get motLevel8 => '星火已成燎原之势，坚定不移地向前。';

  @override
  String get motLevel9 => '你走过了一段了不起的旅程。肯定你自己的进步。';

  @override
  String get motLevel10 => '第十级。你已经深刻理解了坚持的力量。';

  @override
  String get motLevel11 => '即使道路坎坷，你依然在不断成长。';

  @override
  String get motLevel12 => '你已经成为了自己的榜样。继续加油。';

  @override
  String get motLevel13 => '你已经积累了巨大的势能，现在保持好方向。';

  @override
  String get motLevel14 => '传奇等级。看看你所创造的一切奇迹。';

  @override
  String get motShort1 => '今天又是进步的一步。';

  @override
  String get motShort2 => '继续你的旅程。';

  @override
  String get motShort3 => '你做得很好。';

  @override
  String get motShort4 => '你的进步至关重要。';

  @override
  String get motShort5 => '不要因为一时艰难而停下脚步。';

  @override
  String get motShort6 => '你比自己的旧习惯更强大。';

  @override
  String get motShort7 => '做出属于你的下一步选择。';

  @override
  String get motShort8 => '既然已经开始，就继续坚持。';

  @override
  String get motShort9 => '今天的选择很重要。';

  @override
  String get motShort10 => '一步一个脚印。';

  @override
  String get motShort11 => '你能做到的远比想象的要多。';

  @override
  String get motShort12 => '这条路属于你自己。';

  @override
  String get profileEditErrorPhotoNotFound => '无法获取所选照片';

  @override
  String get profileEditErrorOpenGallery => '无法打开相册';

  @override
  String get profileEditErrorPickPhoto => '选择照片时出错';

  @override
  String get featureMotivation => '个性化激励';

  @override
  String get featureMotivationSubtitle => '为您的旅程提供指导';

  @override
  String get featureSupport => '额外支持工具';

  @override
  String get featureSupportSubtitle => '需要时获得更多帮助';

  @override
  String get featureNotifications => '智能提醒';

  @override
  String get featureNotificationsSubtitle => '在合适的时机给予激励';

  @override
  String get featureAds => '无广告';

  @override
  String get featureAdsSubtitle => '平静、干净的体验';

  @override
  String get planMonthly => '月付';

  @override
  String get planMonthlySubtitle => '灵活，无长期承诺';

  @override
  String get planYearly => '年付';

  @override
  String get planYearlySubtitle => '价格与功能的最佳平衡';

  @override
  String get planLifetime => '终身';

  @override
  String get planLifetimeSubtitle => '一次付款 — Premium 永久有效';

  @override
  String get perMonth => '/ 月';

  @override
  String get perYear => '/ 年';

  @override
  String get bestValue => '最超值';

  @override
  String get oneTime => '一次性';

  @override
  String get buyMonthly => '获取月付 Premium';

  @override
  String get buyYearly => '获取年付 Premium';

  @override
  String get buyLifetime => '获取终身 Premium';

  @override
  String get restorePurchases => '恢复购买';

  @override
  String get securePurchase => '安全购买';

  @override
  String get cancelAnytime => '随时取消';

  @override
  String get restoreAnytime => '可恢复购买';

  @override
  String get legalMonthly =>
      '订阅每月自动续订。您可以通过 App Store 或 Google Play 设置取消。价格会在确认购买前显示。';

  @override
  String get legalYearly =>
      '订阅每年自动续订。您可以通过 App Store 或 Google Play 设置取消。价格会在确认购买前显示。';

  @override
  String get legalLifetime => '这是一次性购买，不会自动续订。价格会在确认购买前显示。';

  @override
  String get legalContactEmail => 'support@puffreeapp.com';

  @override
  String get privacyPolicyTitle => '隐私政策';

  @override
  String get privacyPolicyLastUpdated => '最后更新：2026年1月';

  @override
  String get privacyPolicyIntro =>
      'Puffree（“我们”、“我们的”、“应用”）旨在帮助您记录戒烟过程并保持动力。本政策说明我们收集哪些信息、如何使用这些信息，以及您拥有的相关选择权。';

  @override
  String get privacySection1Title => '我们收集的信息';

  @override
  String get privacySection1Body =>
      '当您登录时，我们会收集您提供的账户信息（电子邮箱地址、显示名称和个人资料照片）；如果您不使用账户，我们则会使用匿名标识符。我们还会存储您主动输入的无烟进度数据，例如戒烟日期、每天吸烟数量、每包香烟的费用以及您记录的吸烟欲望。';

  @override
  String get privacySection2Title => '我们如何使用您的信息';

  @override
  String get privacySection2Body =>
      '我们使用这些信息来计算您的无烟持续时间、健康里程碑和节省的金额；在不同设备之间同步您的进度；发送可选的激励提醒和通知；处理 Premium 订阅购买；诊断应用崩溃并改进应用。';

  @override
  String get privacySection3Title => '数据存储与安全';

  @override
  String get privacySection3Body =>
      '您的数据通过 Firebase（Google Cloud）进行存储，并在传输过程中进行加密。我们采取合理的技术和组织安全措施，但任何通过互联网进行的数据存储或传输方式都无法保证绝对安全。';

  @override
  String get privacySection4Title => '第三方服务';

  @override
  String get privacySection4Body =>
      '我们使用 Firebase Authentication 和 Cloud Firestore 来管理账户和同步数据，并使用 Apple App Store 或 Google Play 的计费系统来处理 Premium 订阅。我们不会向第三方出售您的个人信息。';

  @override
  String get privacySection5Title => '您的选择与权利';

  @override
  String get privacySection5Body =>
      '您可以随时查看或编辑个人资料，通过“设置”重置本地进度，在设备设置中关闭推送通知，并通过联系我们来请求访问、更正或删除您的数据。';

  @override
  String get privacySection6Title => '儿童隐私';

  @override
  String get privacySection6Body =>
      'Puffree 不面向 13 岁以下的儿童（欧盟地区为 16 岁以下），我们不会在明知的情况下收集这些儿童的个人信息。如果您认为儿童向我们提供了数据，请联系我们，以便我们将其删除。';

  @override
  String get privacySection7Title => '健康免责声明';

  @override
  String get privacySection7Body =>
      'Puffree 是一款旨在支持您无烟生活过程的习惯追踪工具。它不是医疗设备，也不提供医疗建议、诊断或治疗。关于戒烟事宜，请始终咨询合格的医疗专业人员。';

  @override
  String get privacySection8Title => '政策变更与联系我们';

  @override
  String get privacySection8Body =>
      '我们可能会不时更新本政策；重大变更将在应用中公布。如果您对本政策或您的数据有任何疑问，请使用以下联系方式与我们联系。';

  @override
  String get termsOfUseTitle => '使用条款';

  @override
  String get termsOfUseLastUpdated => '最后更新：2026年1月';

  @override
  String get termsOfUseIntro =>
      '本使用条款规定了您访问和使用 Puffree 的相关事项。创建账户或使用应用即表示您同意这些条款。如果您不同意，请不要使用本应用。';

  @override
  String get termsSection1Title => '接受条款';

  @override
  String get termsSection1Body =>
      '通过下载、安装或使用 Puffree，您确认接受本使用条款和我们的隐私政策，并确认您具备签订本协议所需的法律行为能力。';

  @override
  String get termsSection2Title => '服务说明';

  @override
  String get termsSection2Body =>
      'Puffree 是一款习惯追踪和激励应用，可帮助您在戒烟后监测自己的进度，包括无烟持续时间、健康里程碑、节省的金额以及吸烟欲望记录。它是一款个人健康与福祉工具，而非医疗或临床服务。';

  @override
  String get termsSection3Title => '使用资格与账户';

  @override
  String get termsSection3Body =>
      '您必须年满 13 岁（或达到您所在国家/地区规定的数字同意最低年龄）才能使用 Puffree。您有责任维护账户的机密性，并对通过您的账户进行的所有活动负责。';

  @override
  String get termsSection4Title => 'Premium 订阅与计费';

  @override
  String get termsSection4Body =>
      'Premium 功能以自动续订订阅的形式提供，并通过 Apple App Store 或 Google Play 进行计费。除非您在当前订阅周期结束前至少 24 小时取消订阅，否则订阅将自动续订。退款将按照相关应用商店的政策进行处理。';

  @override
  String get termsSection5Title => '健康与医疗免责声明';

  @override
  String get termsSection5Body =>
      'Puffree 不提供医疗建议，也不能替代专业医疗服务。戒烟可能会引起戒断症状；在做出与健康相关的决定之前，请咨询医生或持证医疗服务提供者。';

  @override
  String get termsSection6Title => '合理使用';

  @override
  String get termsSection6Body =>
      '您同意不会滥用本应用，不会尝试对应用进行逆向工程或干扰其服务，不会上传非法或有害内容，也不会以违反适用法律或他人权利的方式使用本应用。';

  @override
  String get termsSection7Title => '免责声明与责任限制';

  @override
  String get termsSection7Body =>
      'Puffree 按“现状”提供，不提供任何形式的保证。在法律允许的最大范围内，对于因您使用本应用而产生的任何间接、附带或后果性损害，我们不承担责任。';

  @override
  String get termsSection8Title => '条款变更与联系我们';

  @override
  String get termsSection8Body =>
      '我们可能会不时更新本条款；变更生效后继续使用本应用，即表示您接受修订后的条款。如有任何问题，请通过以下联系方式与我们联系。';

  @override
  String get systemThemeLabel => '系统';

  @override
  String get notificationsEnabledLabel => '通知已启用';

  @override
  String get notificationsDisabledLabel => '通知已禁用';

  @override
  String get signInToAnotherAccount => '登录其他账户';

  @override
  String get openSignInPage => '打开登录页面';

  @override
  String get securePayment => '安全支付';
}
