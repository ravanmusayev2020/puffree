// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appName => 'Puffree';

  @override
  String get tagline => '喫煙からの自由';

  @override
  String get today => '今日';

  @override
  String get streak => '連続';

  @override
  String get saved => '節約';

  @override
  String get avoided => '回避';

  @override
  String get totalDays => '合計日数';

  @override
  String get dailyMotivation => '今日のモチベーション';

  @override
  String get checkIn => '今日は吸わなかった';

  @override
  String get checkedInToday => '今日チェックイン済み';

  @override
  String get missions => '今日のミッション';

  @override
  String completedOf(int completed, int total) {
    return '$completed / $total 完了';
  }

  @override
  String get premium => 'Premium';

  @override
  String get tryFree => '3日間無料で試す';

  @override
  String get buyPremium => 'Premiumを購入';

  @override
  String get restore => '購入を復元';

  @override
  String get premiumHint => 'Premiumですべての機能を解除';

  @override
  String get settings => '設定';

  @override
  String get progress => 'あなたの進捗';

  @override
  String get statistics => '統計';

  @override
  String get currentStreak => '現在の連続';

  @override
  String get record => '記録';

  @override
  String get bodyChanges => '体に起こること';

  @override
  String get resetProgress => '進捗をリセット';

  @override
  String get resetConfirm => '日数・連続・統計のデータがすべて削除されます。この操作は取り消せません。';

  @override
  String get cancel => 'キャンセル';

  @override
  String get reset => 'リセット';

  @override
  String get journalTitle => '日記';

  @override
  String get journalHint => '考えを書き留めてください';

  @override
  String get journalPlaceholder => '今日の気分はどうですか？';

  @override
  String get save => '保存';

  @override
  String get moodCheck => '今の気分は？';

  @override
  String get moodCheckHint => '少し自分の状態を確認してみましょう。';

  @override
  String get version => 'バージョン';

  @override
  String get privacy => 'プライバシーポリシー';

  @override
  String get terms => '利用規約';

  @override
  String get disclaimer =>
      'Puffreeはモチベーションアプリです。医療機器ではなく、専門的な医療アドバイスの代わりにはなりません。強いニコチン依存がある場合は専門家に相談してください。';

  @override
  String level(int number) {
    return 'レベル $number';
  }

  @override
  String daysSmokeFree(int count) {
    return '$count日禁煙中';
  }

  @override
  String nextLevelProgress(int percent) {
    return '次のレベルまで $percent%';
  }

  @override
  String get friend => '友達';

  @override
  String helloName(String name) {
    return 'こんにちは、$nameさん！';
  }

  @override
  String get pathToFreedom => '自由への道';

  @override
  String get withoutCigs => 'タバコなしで';

  @override
  String get iSmoked => '吸ってしまった';

  @override
  String get relapseTitle => '大丈夫です';

  @override
  String get relapseBody => '一本のタバコで進捗が消えるわけではありません。この瞬間から学び、前に進み続けましょう。';

  @override
  String get relapseDone => '続ける';

  @override
  String get home => 'ホーム';

  @override
  String get tasks => 'タスク';

  @override
  String get missionBreathe => '深呼吸';

  @override
  String get missionWater => '水を飲む';

  @override
  String get missionWalk => '10分歩く';

  @override
  String get missionJournal => '考えを書く';

  @override
  String get missionMeditation => '5分瞑想';

  @override
  String get missionFocus => 'スマホなしで集中';

  @override
  String get missionReflect => '一日を振り返る';

  @override
  String get missionHelp => '誰かを支える';

  @override
  String get missionBreatheDesc => 'ゆっくりとした深呼吸を数回しましょう。';

  @override
  String get missionWaterDesc => 'コップ一杯の水を飲みましょう。';

  @override
  String get missionWalkDesc => '10分間歩きましょう。';

  @override
  String get missionJournalDesc => '今日のことについて一つ書きましょう。';

  @override
  String get missionMeditationDesc => '5分間瞑想しましょう。';

  @override
  String get missionFocusDesc => 'スマホなしで集中する時間を作りましょう。';

  @override
  String get missionReflectDesc => '今日がどうだったか考えてみましょう。';

  @override
  String get missionHelpDesc => '誰かを支えるために何か優しいことをしましょう。';

  @override
  String get sosTitle => 'SOSサポート';

  @override
  String get sosTimer => '欲求タイマー';

  @override
  String get sosBreathe => '呼吸';

  @override
  String get sosChat => '話す';

  @override
  String get sosStart => '開始';

  @override
  String get sosDone => '完了';

  @override
  String get sosManaged => '欲求を乗り越えました！';

  @override
  String get sosWon => '勝ちました！';

  @override
  String get sosLeft => '残り';

  @override
  String get sosTip1 => 'ゆっくり深呼吸を数回しましょう。';

  @override
  String get sosTip2 => 'コップ一杯の水を飲みましょう。';

  @override
  String get sosTip3 => '場所を変えましょう。';

  @override
  String get sosTip4 => '手を忙しくしましょう。';

  @override
  String get sosTip5 => '始めた理由を思い出しましょう。';

  @override
  String get sosTip6 => '欲求が過ぎるまで数分待ちましょう。';

  @override
  String get breatheIn => '吸う';

  @override
  String get breatheHold => '止める';

  @override
  String get breatheOut => '吐く';

  @override
  String get breatheHint => '円に合わせてゆっくり呼吸しましょう。';

  @override
  String get breatheStart => '呼吸を始める';

  @override
  String get chatPick => '今どんな気持ちですか？';

  @override
  String get chatCraving => '欲求がある';

  @override
  String get chatStress => 'ストレスを感じる';

  @override
  String get chatBoredom => '退屈している';

  @override
  String get chatNeedWalk => '歩きたい';

  @override
  String get chatNeedWater => '水が欲しい';

  @override
  String get chatNeedBreathe => '呼吸したい';

  @override
  String get chatIntroStress => 'ストレスを感じているようですね。一緒にこの瞬間を乗り越えましょう。';

  @override
  String get chatIntroBoredom => '退屈は欲求を強くすることがあります。他のことに集中しましょう。';

  @override
  String get chatIntroCraving => '欲求は強く感じることがありますが、必ず過ぎます。一歩ずついきましょう。';

  @override
  String get chatReplyStress => 'ゆっくり呼吸をして、短い休憩を取りましょう。欲求に従う必要はありません。';

  @override
  String get chatReplyBoredom => '環境を変えましょう。少し歩いたり、水を飲んだり、手を忙しくしましょう。';

  @override
  String get chatReplyCraving => '決断する前に数分待ちましょう。水を飲み、ゆっくり呼吸し、始めた理由を思い出してください。';

  @override
  String get onboardingTitle1 => '自由に呼吸する';

  @override
  String get onboardingDesc1 => 'Puffreeはプレッシャーなく、サポートしながら禁煙を一歩ずつ助けます。';

  @override
  String get onboardingTitle2 => 'レベルと進捗';

  @override
  String get onboardingDesc2 => 'タバコなしの毎日が新しいレベルを解きます。力と健康の成長を見てください。';

  @override
  String get onboardingTitle3 => '毎日のサポート';

  @override
  String get onboardingDesc3 => 'モチベーション、ミッション、進捗追跡。この道であなたは一人ではありません。';

  @override
  String get aboutYou => 'あなたについて少し';

  @override
  String get aboutYouDesc => '節約したお金とタバコの数を計算するのに役立ちます';

  @override
  String get cigsPerDay => '以前の1日のタバコ本数';

  @override
  String get pricePerPack => '1箱の値段';

  @override
  String get startJourney => '旅を始める';

  @override
  String get next => '次へ';

  @override
  String get skip => 'スキップ';

  @override
  String get youGotThis => '大丈夫。一瞬一瞬を大切に。';

  @override
  String get waitTheWave => '欲求の波を乗り越える';

  @override
  String get youPassedThis => 'この瞬間を乗り越えました';

  @override
  String get greatJob => 'よくできました。あなたがコントロールしています。';

  @override
  String get giveYourselfMinutes => '数分時間を取って、今この瞬間に集中しましょう。';

  @override
  String get keepGoing => '続けよう';

  @override
  String get done => '完了';

  @override
  String get breatheSlowly => 'ゆっくり呼吸する';

  @override
  String get followTheCircle => '円のリズムに合わせる';

  @override
  String get chooseWhatFits => '今の気持ちに合うものを選んでください。';

  @override
  String get yourResults => 'あなたの結果';

  @override
  String get whatChanged => 'あなたによってすでに変わったこと';

  @override
  String get recoveryPath => '回復の道';

  @override
  String get everyMilestone => 'すべてのマイルストーンが次の一歩です';

  @override
  String get levelProgress => '次のレベルへの進捗';

  @override
  String get yourPathContinues => 'あなたの道は続きます';

  @override
  String get daysWordOne => '日';

  @override
  String get daysWordFew => '日';

  @override
  String get daysWordMany => '日';

  @override
  String get momentum => '勢い';

  @override
  String missionsLeft(int count) {
    return '残り $count ミッション';
  }

  @override
  String get allMissionsDone => 'すべてのミッション完了';

  @override
  String get dayComplete => '1日完了';

  @override
  String get keepGoingShort => '続けよう';

  @override
  String get inProgress => '進行中';

  @override
  String get complete => '完了';

  @override
  String get yourPlanToday => '今日の計画';

  @override
  String get everythingDone => 'すべて完了';

  @override
  String get theme => 'テーマ';

  @override
  String get language => '言語';

  @override
  String get notifications => '通知';

  @override
  String get notificationsHint => 'リマインダーとモチベーション';

  @override
  String get data => 'データ';

  @override
  String get aboutApp => 'アプリについて';

  @override
  String get appTheme => 'アプリのテーマ';

  @override
  String get chooseTheme => 'Puffreeの見た目を選んでください。';

  @override
  String get systemTheme => 'システム';

  @override
  String get systemThemeDesc => '端末の設定に従う';

  @override
  String get lightTheme => 'ライト';

  @override
  String get lightThemeDesc => '常にライトテーマを使用';

  @override
  String get darkTheme => 'ダーク';

  @override
  String get darkThemeDesc => '常にダークテーマを使用';

  @override
  String get premiumActive => 'Premiumが有効です';

  @override
  String get trialActive => 'トライアル期間中です';

  @override
  String get fullAccess => 'すべての機能にフルアクセス';

  @override
  String get openPremium => 'Premiumとサブスクリプションを開く';

  @override
  String get resetProgressTitle => '進捗をリセットしますか？';

  @override
  String get resetProgressBody => '日数・連続・統計のデータがすべて削除されます。この操作は取り消せません。';

  @override
  String get excellent => '素晴らしい！';

  @override
  String get anotherDayFree => 'また1日タバコなし';

  @override
  String get continueBtn => '続ける';

  @override
  String get newAchievement => '新しい達成';

  @override
  String get newLevel => '新しいレベル！';

  @override
  String get levelUpMessage => '続けてください — 素晴らしい調子です！';

  @override
  String get freeFor => 'すでに自由';

  @override
  String get toNextLevel => '次のレベルまで';

  @override
  String get keyResults => '主な結果';

  @override
  String get progressSystem => '進捗システム';

  @override
  String get everyDayCloser => '毎日が次のレベルに近づきます';

  @override
  String get current => '現在';

  @override
  String get nextLevel => '次';

  @override
  String get smallSteps => '小さな一歩。大きな変化。';

  @override
  String get youAreFurther => '昨日よりすでに先に進んでいます';

  @override
  String get madeForFuture => 'タバコのない未来のために作られました';

  @override
  String get dayStreakCaption => '日連続';

  @override
  String get cigarettesAvoidedCaption => '回避';

  @override
  String get freeDaysCaption => '自由な日数';

  @override
  String get levelLabel => 'レベル';

  @override
  String get keepStreakAlive => 'ストリークを維持しましょう';

  @override
  String get failedToLoadProgress => '進捗の読み込みに失敗しました';

  @override
  String get levelTitle1 => '最初の一息';

  @override
  String get levelTitle2 => '芽生え';

  @override
  String get levelTitle3 => '成長';

  @override
  String get levelTitle4 => '根付き';

  @override
  String get levelTitle5 => '幹';

  @override
  String get levelTitle6 => '力';

  @override
  String get levelTitle7 => '炎';

  @override
  String get levelTitle8 => '火花';

  @override
  String get levelTitle9 => 'チャンピオン';

  @override
  String get levelTitle10 => 'マスター';

  @override
  String get levelTitle11 => 'ダイアモンド';

  @override
  String get levelTitle12 => '星';

  @override
  String get levelTitle13 => 'ロケット';

  @override
  String get levelTitle14 => '伝説';

  @override
  String get levelTitleDefault => '道のり';

  @override
  String get milestone1Title => '新しい道の始まり';

  @override
  String get milestone1Desc => 'あなたはすでに第一歩を踏み出し、前進し続けています。';

  @override
  String get milestone2Title => '最初の変化';

  @override
  String get milestone2Desc => '体は徐々にタバコのない生活に適応していきます。';

  @override
  String get milestone3Title => '新しいステージ';

  @override
  String get milestone3Desc => '習慣のない新しいリズムが徐々に形成されていきます。';

  @override
  String get milestone4Title => '確かな進歩';

  @override
  String get milestone4Desc => '2週間は、新しい習慣への道のりにおける顕著な節目です。';

  @override
  String get milestone5Title => '大きな習慣の変化';

  @override
  String get milestone5Desc => '1ヶ月の継続は、重大な個人的な成果です。';

  @override
  String get milestone6Title => '大きな節目';

  @override
  String get milestone6Desc => '道を続けることで、新しいライフスタイルを定着させることができます。';

  @override
  String get milestone7Title => '自由な1年';

  @override
  String get milestone7Desc => 'タバコのない1年は、あなたの道のりにおける大きな節目です。';

  @override
  String get navProgress => '進捗';

  @override
  String get more => 'その他';

  @override
  String get settingsSubtitle => 'Puffreeを自分用にカスタマイズ';

  @override
  String get sectionApp => 'アプリ';

  @override
  String get sectionData => 'データ';

  @override
  String get sectionAbout => 'アプリについて';

  @override
  String get resetProgressSubtitle => '旅をやり直す';

  @override
  String get premiumActiveBadge => '有効';

  @override
  String get splashCaption => '喫煙からの自由';

  @override
  String get todayStartJourney => '今日はあなたの新しい旅の始まりです。';

  @override
  String realResultKeepGoing(int count, String daysWord) {
    return '$count $daysWord はすでに現実的な成果です。このまま続けましょう。';
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
  String get onbTitle1 => '何を使っていますか？';

  @override
  String get onbSubtitle1 => 'あなたの習慣に合わせてすべてをカスタマイズします。';

  @override
  String get onbTitle2 => 'どれくらい使っていますか？';

  @override
  String get onbSubtitle2 => '正直な数字が、本当の進捗を計算するのに役立ちます。';

  @override
  String get onbTitle3 => 'どれくらい費用がかかっていますか？';

  @override
  String get onbSubtitle3 => '毎月どれだけお金を節約できるか見てみましょう。';

  @override
  String get onbTitle4 => '体の調子はどうですか？';

  @override
  String get onbSubtitle4 => 'よく感じる症状を選択してください。';

  @override
  String get onbTitle5 => 'なぜやめたいのですか？';

  @override
  String get onbSubtitle5 => 'あなたの理由が、私たちが作るプランの原動力になります。';

  @override
  String get onbTitle6 => 'プランを作成中';

  @override
  String get onbSubtitle6 => 'あなただけのパーソナライズされた道を作っています。';

  @override
  String get onbTitle7 => 'プランが完成しました';

  @override
  String get onbSubtitle7 => 'あなたのために作られたプランで旅を始めましょう。';

  @override
  String get onbEyebrowBeforeStart => '始める前に';

  @override
  String get onbEyebrowStartingPoint => '出発点';

  @override
  String get onbEyebrowRealCost => '本当のコスト';

  @override
  String get onbEyebrowSelfAwareness => '自己認識';

  @override
  String get onbEyebrowYourReason => 'あなたの理由';

  @override
  String get onbEyebrowPersonalization => 'パーソナライズ';

  @override
  String get onbEyebrowDone => '準備完了';

  @override
  String get onbHabitCigarettesTitle => 'タバコ';

  @override
  String get onbHabitCigarettesSubtitle => '通常のタバコや手巻きタバコ';

  @override
  String get onbHabitVapeTitle => 'ベイプ / ポッド';

  @override
  String get onbHabitVapeSubtitle => '電子タバコとポッドシステム';

  @override
  String get onbPodsPerWeekLabel => '週あたりのポッド数';

  @override
  String get onbCigarettesPerDayLabel => '1日あたりのタバコ本数';

  @override
  String get onbYearsSmokedLabel => '喫煙年数';

  @override
  String get onbUnitPieces => '本';

  @override
  String get onbUnitYears => '年';

  @override
  String get onbAmountVapeHint => 'これにより、週あたりの費用と進捗を見積もることができます。';

  @override
  String get onbPotentialSavingsLabel => '潜在的な月間節約額';

  @override
  String get onbPerMonthQuitting => 'やめた場合の月額';

  @override
  String get onbPricePerPodLabel => 'ポッド1個の価格';

  @override
  String get onbPricePerPackLabel => '1箱の価格';

  @override
  String get onbCigarettesPerPackLabel => '1箱あたりの本数';

  @override
  String get onbCurrencyLabel => '通貨';

  @override
  String get onbSymptomBreath => '息切れ';

  @override
  String get onbSymptomAnxiety => '不安 / 落ち着きのなさ';

  @override
  String get onbSymptomPulse => '速いまたは不規則な心拍';

  @override
  String get onbSymptomMorning => '朝の咳 / 痰';

  @override
  String get onbSymptomCough => '頻繁な咳';

  @override
  String get onbBodyHint => '複数選択できます。あなたにとって大切なことに焦点を当てるのに役立ちます。';

  @override
  String get onbMotivationHealth => 'より良い健康とエネルギー';

  @override
  String get onbMotivationFreedom => '依存からの解放';

  @override
  String get onbMotivationMoney => 'お金を節約する';

  @override
  String get onbMotivationFamily => '家族 / 子供のために';

  @override
  String get onbMotivationControl => '自分の人生のコントロールを取り戻す';

  @override
  String get onbMotivationFuture => 'より健康的な未来';

  @override
  String get onbSelectMultipleHint => '複数の理由を選択できます';

  @override
  String get onbStartingMapLabel => 'マップを作成中';

  @override
  String get onbBuildingStepSave => '節約額を計算中';

  @override
  String get onbBuildingStepGoal => '主な目標を設定中';

  @override
  String get onbBuildingStepScenarios => '個人シナリオを作成中';

  @override
  String get onbBuildingStepSteps => '最初のステップを準備中';

  @override
  String get onbBuildingHint => '通常、数秒しかかかりません。';

  @override
  String get onbPleaseWait => '少々お待ちください…';

  @override
  String get onbCreatingPlan => 'プランを作成中…';

  @override
  String get onbFirst30DaysLabel => '最初の30日間';

  @override
  String get onbLessExpensesLabel => '支出の削減';

  @override
  String get onbSavingsPerMonth => '月間節約額';

  @override
  String get onbSavingsPerYear => '年間節約額';

  @override
  String get onbPlanPersonalizedTitle => 'あなた専用のプラン';

  @override
  String onbPlanPersonalizedSubtitle(int motivations, int symptoms) {
    return '$motivations個の理由と$symptoms個の症状に基づく';
  }

  @override
  String get onbResultHint => 'これらの数字は後で設定からいつでも調整できます。';

  @override
  String get onbBreathingHint => '呼吸する';

  @override
  String get onbContinue => '続ける';

  @override
  String get onbStartJourney => '旅を始める';

  @override
  String get onboardingHabitTitle => 'コントロールを取り戻す準備はできましたか？';

  @override
  String get onboardingHabitSubtitle =>
      'まず習慣を理解しましょう。長いフォームは不要——正確な回答をいくつか、そしてPuffreeが道筋を作ります。';

  @override
  String get onboardingAmountTitle => 'いつもの一日を教えてください';

  @override
  String get onboardingAmountSubtitle => 'あなたを評価するためではありません。進捗を測るための出発点です。';

  @override
  String get onboardingMoneyTitle => '習慣はあなたからどれだけ奪っていますか？';

  @override
  String get onboardingMoneySubtitle =>
      '価格が画面上ですぐに変わります——抽象的な数字ではなく、習慣の本当のコストが見えます。';

  @override
  String get onboardingBodyTitle => '自分で気づいていることは？';

  @override
  String get onboardingBodySubtitle => '当てはまるものを選んでください。複数でも、なしでも構いません。';

  @override
  String get onboardingMotivationTitle => '何のためにこれをしますか？';

  @override
  String get onboardingMotivationSubtitle =>
      'これがあなたの個人的な支えになります。必要な時にPuffreeがこの理由に戻します。';

  @override
  String get onboardingBuildingTitle => 'あなたの道筋を作成中';

  @override
  String get onboardingBuildingSubtitle =>
      '医学的診断でも、完璧な一日の約束でもありません。ただの出発点と明確な次のステップです。';

  @override
  String get onboardingResultTitle => '最初の進捗画面がすでにここにあります';

  @override
  String get onboardingResultSubtitle => '開始データをデバイスに保存し、測定可能な進捗に変えます。';

  @override
  String get onboardingEyebrowBeforeStart => 'スタート前';

  @override
  String get onboardingEyebrowStartPoint => 'あなたの出発点';

  @override
  String get onboardingEyebrowRealCost => '本当のコスト';

  @override
  String get onboardingEyebrowSelfFeeling => '自己感覚';

  @override
  String get onboardingEyebrowYourReason => 'あなたの理由';

  @override
  String get onboardingEyebrowPersonalization => 'パーソナライズ';

  @override
  String get onboardingEyebrowDone => '完了';

  @override
  String get onboardingCigarettesChoice => 'タバコを吸っています';

  @override
  String get onboardingCigarettesChoiceSubtitle => 'Puffreeのメインシナリオ';

  @override
  String get onboardingVapeChoice => 'ベイプを使っています';

  @override
  String get onboardingVapeChoiceSubtitle => 'この選択をプロフィールに保存します';

  @override
  String get onboardingPodsPerWeek => '週あたりのポッド / 使い捨て';

  @override
  String get onboardingUnitPcs => '本';

  @override
  String get onboardingVapeHint =>
      '後でPuffreeプロフィールはタバコとベイプのシナリオを履歴を失わずに分けられます。';

  @override
  String get onboardingCigarettesPerDay => '1日のタバコ本数';

  @override
  String get onboardingYearsSmoked => '何年続いているか';

  @override
  String get onboardingUnitYears => '年';

  @override
  String get onboardingPricePerPod => '1ポッドの価格';

  @override
  String get onboardingPricePerPack => '1箱の価格';

  @override
  String get onboardingCigarettesPerPack => '1箱の本数';

  @override
  String get onboardingPotentialSavings => '潜在的な節約額';

  @override
  String get onboardingPerMonthIfQuit => '習慣をやめた場合の月額';

  @override
  String get onboardingCurrency => '通貨';

  @override
  String get onboardingSymptomBreath => '息が重くなったと感じる';

  @override
  String get onboardingSymptomAnxiety => '時々強い不安を感じる';

  @override
  String get onboardingSymptomPulse => '脈が速くなっているのに気づく';

  @override
  String get onboardingSymptomMorning => '朝の最初の一本が特に欲しくなる';

  @override
  String get onboardingSymptomCough => '朝の咳がある';

  @override
  String get onboardingBodyHint =>
      'これは自己記述であり、診断ではありません。症状が気になる場合は医師に相談してください。';

  @override
  String get onboardingMotivationHealth => '健康をもっと大切にしたい';

  @override
  String get onboardingMotivationFreedom => 'もっと自由に感じたい';

  @override
  String get onboardingMotivationMoney => 'これにお金を使うのをやめたい';

  @override
  String get onboardingMotivationFamily => '身近な人といる時に習慣に依存したくない';

  @override
  String get onboardingMotivationControl => 'コントロール感を取り戻したい';

  @override
  String get onboardingMotivationFuture => '自分の未来のためにやりたい';

  @override
  String get onboardingCanSelectSeveral => '複数選べます';

  @override
  String get onboardingYourStartCard => 'あなたの開始カード';

  @override
  String get onboardingStepSaveAnswers => '回答を保存中';

  @override
  String get onboardingStepFinancialGoal => '財務目標を計算中';

  @override
  String get onboardingStepCravingScenarios => '欲求シナリオを作成中';

  @override
  String get onboardingStepFirstSteps => '最初のステップを準備中';

  @override
  String get onboardingBuildingHint =>
      '「X時間で肺が再生」とは故意に約束しません——Puffreeは測定可能なことを示し、事実と動機を分けます。';

  @override
  String get onboardingSavingsPerMonth => '節約 / 月';

  @override
  String get onboardingSavingsPerYear => '節約 / 年';

  @override
  String get onboardingResultHint =>
      'これらの数字はあなたの回答に基づく計算であり、結果の約束ではありません。本当の進捗はあなたの行動次第です。';

  @override
  String get onboardingFirst30Days => '最初の30日';

  @override
  String get onboardingLessSpendMoreControl => '支出を減らす → コントロールを増やす';

  @override
  String get onboardingPlanPersonalized => 'プランがパーソナライズされました';

  @override
  String onboardingMotivationsCount(int count) {
    return '$count個の個人的動機';
  }

  @override
  String onboardingSymptomsCount(int count) {
    return '$count個の記録された状態';
  }

  @override
  String get onboardingTakeFirstStep => '最初の一歩を踏み出す';

  @override
  String get onboardingPleaseWait => '数秒お待ちください…';

  @override
  String get onboardingCreatingPlan => 'プランを作成中…';

  @override
  String get onboardingStartMyJourney => '私の旅を始める';

  @override
  String get onboardingContinue => '続ける';

  @override
  String get premiumTitle => 'Puffree Premium';

  @override
  String get premiumSubtitle => 'あなたの旅のためのより多くのツール。\nあなたに合うプランを選んでください。';

  @override
  String get oneMembership => 'すべてに対応する1つのPremiumアクセス';

  @override
  String get everythingIncluded => 'すべて含まれています';

  @override
  String get everythingIncludedSubtitle => 'PremiumはPuffreeのフル体験をアンロックします。';

  @override
  String get choosePlan => 'プランを選択';

  @override
  String get choosePlanSubtitle => '購入前に選択を変更できます。';

  @override
  String get featureTasks => '拡張ミッション';

  @override
  String get featureTasksSubtitle => 'より多くの実践とチャレンジ';

  @override
  String get featureStats => '完全な統計';

  @override
  String get featureStatsSubtitle => '詳細な進捗インサイト';

  @override
  String get profileEditTitle => 'プロフィール';

  @override
  String get profileEditTapToChangePhoto => '写真をタップして変更';

  @override
  String get profileEditNameLabel => '名前';

  @override
  String get profileEditNameHint => '名前を入力';

  @override
  String get profileEditSaveButton => '変更を保存';

  @override
  String get profileEditErrorEmptyName => '名前を入力してください';

  @override
  String get profileEditSuccessUpdated => 'プロフィールを更新しました';

  @override
  String profileEditErrorUpdate(String error) {
    return 'プロフィールの更新に失敗しました: $error';
  }

  @override
  String get authWelcomeBack => 'おかえりなさい！';

  @override
  String get authCreateAccount => 'アカウント作成';

  @override
  String get authResetPassword => 'パスワードリセット';

  @override
  String get authLoginSubtitle => '旅を続けるためにログイン';

  @override
  String get authRegisterSubtitle => '今日から禁煙の新しい生活を始めよう';

  @override
  String get authForgotSubtitle => 'メールを入力すると手順をお送りします';

  @override
  String get authTabLogin => 'ログイン';

  @override
  String get authTabRegister => '登録';

  @override
  String get authNameHint => 'お名前';

  @override
  String get authNameRequired => '名前を入力してください';

  @override
  String get authEmailHint => 'メールアドレス';

  @override
  String get authEmailRequired => 'メールを入力してください';

  @override
  String get authEmailInvalid => '無効なメール';

  @override
  String get authPasswordHint => 'パスワード';

  @override
  String get authPasswordRequired => 'パスワードを入力してください';

  @override
  String get authPasswordMinLength => 'パスワードは6文字以上必要です';

  @override
  String get authConfirmPasswordHint => 'パスワードを再入力';

  @override
  String get authPasswordsDoNotMatch => 'パスワードが一致しません';

  @override
  String get authForgotPassword => 'パスワードをお忘れですか？';

  @override
  String get authLoginButton => 'ログイン';

  @override
  String get authRegisterButton => '登録';

  @override
  String get authSendLinkButton => 'リンクを送信';

  @override
  String get authBackToLogin => 'ログインに戻る';

  @override
  String get authOrContinueWith => 'または';

  @override
  String get authGoogle => 'Google';

  @override
  String get authApple => 'Apple';

  @override
  String get authResetLinkSent => 'パスワードリセットリンクをメールに送信しました！';

  @override
  String get authErrorGeneric => 'エラーが発生しました。入力内容を確認してください。';

  @override
  String get authErrorSocial => 'ソーシャルログインに失敗しました。';

  @override
  String get profileEditErrorPhotoNotFound => '選択した写真を取得できませんでした';

  @override
  String get profileEditErrorOpenGallery => 'ギャラリーを開けませんでした';

  @override
  String get profileEditErrorPickPhoto => '写真の選択中にエラーが発生しました';

  @override
  String get featureMotivation => 'パーソナルモチベーション';

  @override
  String get featureMotivationSubtitle => 'あなたの旅をサポート';

  @override
  String get featureSupport => '追加サポートツール';

  @override
  String get featureSupportSubtitle => '必要なときにさらにサポート';

  @override
  String get featureNotifications => 'スマートリマインダー';

  @override
  String get featureNotificationsSubtitle => '適切なタイミングでモチベーション';

  @override
  String get featureAds => '広告なし';

  @override
  String get featureAdsSubtitle => '落ち着いたクリーンな体験';

  @override
  String get planMonthly => '月額';

  @override
  String get planMonthlySubtitle => '長期コミットなしの柔軟なプラン';

  @override
  String get planYearly => '年額';

  @override
  String get planYearlySubtitle => '価格と機能のベストバランス';

  @override
  String get planLifetime => '生涯';

  @override
  String get planLifetimeSubtitle => '一回の支払い — Premiumがずっと続きます';

  @override
  String get perMonth => '/ 月';

  @override
  String get perYear => '/ 年';

  @override
  String get bestValue => 'お得';

  @override
  String get oneTime => '一回限り';

  @override
  String get buyMonthly => '月額Premiumを取得';

  @override
  String get buyYearly => '年額Premiumを取得';

  @override
  String get buyLifetime => '生涯Premiumを取得';

  @override
  String get restorePurchases => '購入を復元';

  @override
  String get securePurchase => '安全な購入';

  @override
  String get cancelAnytime => 'いつでもキャンセル可能';

  @override
  String get restoreAnytime => '購入は復元できます';

  @override
  String get legalMonthly =>
      'サブスクリプションは毎月自動更新されます。App StoreまたはGoogle Playの設定からキャンセルできます。価格は購入確認前に表示されます。';

  @override
  String get legalYearly =>
      'サブスクリプションは毎年自動更新されます。App StoreまたはGoogle Playの設定からキャンセルできます。価格は購入確認前に表示されます。';

  @override
  String get legalLifetime => 'これは一回限りの購入で、自動更新されません。価格は購入確認前に表示されます。';
}
