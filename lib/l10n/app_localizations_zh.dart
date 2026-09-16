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
}
