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
  String get profileYourProfile => 'あなたのプロフィール';

  @override
  String get profileEdit => 'プロフィールを編集';

  @override
  String get switchAccountTitle => '別のアカウントでログインしますか？';

  @override
  String get switchAccountBody => 'ログインページが開き、別のアカウントでログインできます。';

  @override
  String get switchAccountButton => '別のアカウントでログイン';

  @override
  String get switchAccountSubtitle => 'ログインページを開く';

  @override
  String get continueAction => '続行';

  @override
  String get logoutTitle => 'ログアウトしますか？';

  @override
  String get logoutBody => '本当にアカウントからログアウトしますか？';

  @override
  String get logoutButton => 'ログアウト';

  @override
  String get premiumBrand => 'Puffree Premium';

  @override
  String get motStartJourney => '今日、あなたの新しい道が始まります。一歩踏み出したこと自体が大きな価値です。';

  @override
  String get motMilestone1 => '最初の1日。大きな一歩を踏み出しましたね。そのまま進みましょう。';

  @override
  String get motMilestone3 => '3日達成。お祝いしましょう。正しいコースを進んでいます。';

  @override
  String get motMilestone7 => '丸1週間。自分自身のための決断を続けた7日間です。';

  @override
  String get motMilestone10 => '10日達成。自信の大きな土台ができました。';

  @override
  String get motMilestone14 => '2週間。道のりの大切な部分を乗り越えました。もっと強くなれます。';

  @override
  String get motMilestone21 => '21日達成。習慣を変える力があることを証明しています。';

  @override
  String get motMilestone30 => '30日達成。新しい選択で満たされた丸1ヶ月。素晴らしい成果です。';

  @override
  String get motMilestone45 => '45日達成。1ヶ月半、たゆまぬ前進を続けています。';

  @override
  String get motMilestone60 => '60日達成。2ヶ月間の継続。力強い結果です。';

  @override
  String get motMilestone90 => '90日達成。3ヶ月。自分がどれほど遠くまで来たか振り返ってみてください。';

  @override
  String get motMilestone120 => '120日達成。毎日、自分の道を選び続けています。';

  @override
  String get motMilestone180 => '半年。180日間の継続。本当に素晴らしいことです。';

  @override
  String get motMilestone270 => '270日達成。古い習慣との間に大きな距離を作ることができました。';

  @override
  String get motMilestone365 => '1年達成。365日の歩み。これは偶然ではなく、あなたの継続の力です。';

  @override
  String get motFirstWeek1 => '今日は次の1歩を踏み出すだけで十分です。';

  @override
  String get motFirstWeek2 => '今日中にすべての道のりを歩む必要はありません。ただ続けましょう。';

  @override
  String get motFirstWeek3 => '毎日が1つの勝利です。今日はあなたの勝ちです。';

  @override
  String get motFirstWeek4 => 'つらい瞬間があっても、これまでの進歩が消えるわけではありません。';

  @override
  String get motFirstWeek5 => 'すでにスタートを切りました。自分に続けるチャンスを与えましょう。';

  @override
  String get motFirstWeek6 => '1日1日の積み重ね。大きな変化はそうして作られます。';

  @override
  String get motFirstWeek7 => 'あなたは何度も自分自身を選んでいます。それが何より大切です。';

  @override
  String get motSecondWeek1 => 'もうスタート地点にはいません。前へ進みましょう。';

  @override
  String get motSecondWeek2 => '2週間は思ったよりすぐそこです。自分のリズムを保ちましょう。';

  @override
  String get motSecondWeek3 => 'あなたの進歩は、毎日の小さな決断から作られます。';

  @override
  String get motSecondWeek4 => '完璧な日を探す必要はありません。今日という日を良い日にしましょう。';

  @override
  String get motSecondWeek5 => '欲求の波を乗り越えて、計画に戻る力があなたにはあります。';

  @override
  String get motSecondWeek6 => '新しい一日を迎えるたびに、自信が深まります。';

  @override
  String get motSecondWeek7 => '困難な瞬間を乗り越えられることを、あなたはすでに証明しました。';

  @override
  String get motFirstMonth1 => '一歩一歩、新しい習慣を作り上げています。';

  @override
  String get motFirstMonth2 => '過去が今日の選択を決めるわけではありません。';

  @override
  String get motFirstMonth3 => '30日も「続ける」という1つの決意から始まります。';

  @override
  String get motFirstMonth4 => '自信は1日ではなく、継続する日々によって育まれます。';

  @override
  String get motFirstMonth5 => '新しい1日が、あなたの物語に新しい1ページを加えます。';

  @override
  String get motFirstMonth6 => 'あなたの進歩はあなたのものです。誰も奪うことはできません。';

  @override
  String get motFirstMonth7 => '自分を誇りに思うのに十分なほど、あなたは歩んできました。';

  @override
  String get motFirstMonth8 => '落ち着いて進みましょう。大きな変化に焦りは禁物です。';

  @override
  String get motSecondMonth1 => '2ヶ月の継続は、もう偶然ではありません。';

  @override
  String get motSecondMonth2 => '意思を確かな習慣へと変えています。';

  @override
  String get motSecondMonth3 => 'あなたの強さは、毎日下す決断の中にあります。';

  @override
  String get motSecondMonth4 => '困難な瞬間も乗り越えられることを、あなたはもう知っています。';

  @override
  String get motSecondMonth5 => 'あなたが望む人生を、これからも築いていきましょう。';

  @override
  String get motSecondMonth6 => '古い習慣なしで過ごす毎日は、前進への1歩です。';

  @override
  String get motSecondMonth7 => '誰かと競う必要はありません。これはあなただけの道です。';

  @override
  String get motSecondMonth8 => '初日と今の自分を比べてみてください。進歩は明らかです。';

  @override
  String get motThirdMonth1 => '3ヶ月という大きな節目。そしてあなたは今も進んでいます。';

  @override
  String get motThirdMonth2 => '自分の中に新しいスタート地点を作りました。';

  @override
  String get motThirdMonth3 => '継続はモチベーションよりも強力です。それを証明していますね。';

  @override
  String get motThirdMonth4 => '自分にとって本当に大切なものを選択し続けています。';

  @override
  String get motThirdMonth5 => '日が経つにつれて、古い習慣は意味を失っていきます。';

  @override
  String get motThirdMonth6 => '適切な瞬間を待つのではなく、自分で作っているのです。';

  @override
  String get motThirdMonth7 => '90日は、たくさんの小さな勝利で紡がれた物語です。';

  @override
  String get motThirdMonth8 => '遠くまで来ました。ここで立ち止まらず進みましょう。';

  @override
  String get motLongTerm1 => 'スタート地点からはるか遠くまで来ました。進み続けましょう。';

  @override
  String get motLongTerm2 => '自由は選択から始まり、毎日の決断によって育まれます。';

  @override
  String get motLongTerm3 => 'あなたの成果は、あきらめずに継続した毎日の積み重ねです。';

  @override
  String get motLongTerm4 => 'かつては想像もできなかったほどの距離を歩んできました。';

  @override
  String get motLongTerm5 => '始めた理由を忘れないでください。';

  @override
  String get motLongTerm6 => '新しい一日ごとに、あなたの物語はより強くなります。';

  @override
  String get motLongTerm7 => '後ろを振り向く必要はありません。前だけを見て進みましょう。';

  @override
  String get motLongTerm8 => 'かつて難しく思えたことが、今ではあなたの歩みの一部になりました。';

  @override
  String get motLongTerm9 => '一番大切なことを自分自身に証明しました。「変化は可能だ」と。';

  @override
  String get motLongTerm10 => '新しいリズムで、自分らしく歩み続けましょう。';

  @override
  String get motLevelDefault => '新しいレベルです。前進を続けていますね。';

  @override
  String get motLevel1 => '旅が始まりました。最も大切なのは最初の一歩を踏み出すことです。';

  @override
  String get motLevel2 => '芽が出ました。毎日の進歩を大切に育てましょう。';

  @override
  String get motLevel3 => '成長しています。小さな決断が大きな変化を生み出します。';

  @override
  String get motLevel4 => '根がしっかり張ってきました。土台を作り続けましょう。';

  @override
  String get motLevel5 => '自信がついてきました。このペースを維持しましょう。';

  @override
  String get motLevel6 => '困難に負けず継続するとき、本当の強さが生まれます。';

  @override
  String get motLevel7 => 'あなたの決意が、物語の一部になっていきます。';

  @override
  String get motLevel8 => '小さな火花が、確かな前進の動きに変わりました。';

  @override
  String get motLevel9 => '長い道のりを歩んできました。自分の進歩を認めましょう。';

  @override
  String get motLevel10 => 'レベル10。継続の真の価値をあなたは知っています。';

  @override
  String get motLevel11 => '道が険しくなっても、あなたは成長し続けています。';

  @override
  String get motLevel12 => '自分自身の素晴らしい手本になりました。そのまま進みましょう。';

  @override
  String get motLevel13 => '素晴らしい勢いがついています。正しい方向を維持しましょう。';

  @override
  String get motLevel14 => '伝説的なレベルです。あなたが成し遂げたことを見つめてみてください。';

  @override
  String get motShort1 => '今日もまた一歩。';

  @override
  String get motShort2 => '自分の道を進みましょう。';

  @override
  String get motShort3 => 'うまくいっていますよ。';

  @override
  String get motShort4 => 'あなたの進歩には価値があります。';

  @override
  String get motShort5 => '一度のつまずきで立ち止まらないで。';

  @override
  String get motShort6 => 'あなたは古い習慣より強いです。';

  @override
  String get motShort7 => '次の選択をしましょう。';

  @override
  String get motShort8 => '始めたのだから、続けましょう。';

  @override
  String get motShort9 => '今日の選択が大切です。';

  @override
  String get motShort10 => '一日一日を大切に。';

  @override
  String get motShort11 => '自分で思う以上の力があります。';

  @override
  String get motShort12 => 'あなたの道は、あなたのものです。';

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

  @override
  String get legalContactEmail => 'support@puffreeapp.com';

  @override
  String get privacyPolicyTitle => 'プライバシーポリシー';

  @override
  String get privacyPolicyLastUpdated => '最終更新日：2026年1月';

  @override
  String get privacyPolicyIntro =>
      'Puffree（「当社」「私たち」「アプリ」）は、禁煙への取り組みを記録し、モチベーションを維持するためのサポートを提供します。本ポリシーでは、当社が収集する情報、その利用方法、およびお客様が選択できる事項について説明します。';

  @override
  String get privacySection1Title => '収集する情報';

  @override
  String get privacySection1Body =>
      'サインイン時にお客様が提供するアカウント情報（メールアドレス、表示名、プロフィール写真）、またはアカウントを使用せずにアプリを利用する場合の匿名識別子を収集します。また、禁煙開始日、1日あたりの喫煙本数、1箱あたりの価格、記録した喫煙欲求など、お客様自身が入力する禁煙に関するデータも保存します。';

  @override
  String get privacySection2Title => '情報の利用方法';

  @override
  String get privacySection2Body =>
      '禁煙期間、健康に関するマイルストーン、節約できた金額を計算するため、デバイス間で進捗を同期するため、任意のモチベーションリマインダーや通知を送信するため、Premiumサブスクリプションの購入を処理するため、クラッシュの原因を特定しアプリを改善するために情報を利用します。';

  @override
  String get privacySection3Title => 'データの保存とセキュリティ';

  @override
  String get privacySection3Body =>
      'お客様のデータはFirebase（Google Cloud）を使用して保存され、通信中は暗号化されます。当社は合理的な技術的および組織的な安全対策を講じていますが、インターネット上でのデータの保存または送信方法が完全に安全であるとは限りません。';

  @override
  String get privacySection4Title => '第三者サービス';

  @override
  String get privacySection4Body =>
      'アカウントの管理とデータの同期にはFirebase AuthenticationおよびCloud Firestoreを使用し、Premiumサブスクリプションの決済処理にはApple App StoreまたはGoogle Playの課金システムを使用します。当社はお客様の個人情報を第三者に販売することはありません。';

  @override
  String get privacySection5Title => 'お客様の選択と権利';

  @override
  String get privacySection5Body =>
      'お客様はいつでもプロフィールを確認または編集できます。設定からローカルの進捗をリセットしたり、デバイスの設定からプッシュ通知を無効にしたりできます。また、当社に連絡することで、データへのアクセス、訂正、削除をリクエストできます。';

  @override
  String get privacySection6Title => 'お子様のプライバシー';

  @override
  String get privacySection6Body =>
      'Puffreeは13歳未満のお子様（EUでは16歳未満）を対象としておらず、これらの方から意図的に個人情報を収集することはありません。お子様が当社にデータを提供したと思われる場合は、データを削除できるよう当社までご連絡ください。';

  @override
  String get privacySection7Title => '健康に関する免責事項';

  @override
  String get privacySection7Body =>
      'Puffreeは、禁煙への取り組みをサポートするために設計された習慣管理ツールです。医療機器ではなく、医療上の助言、診断、治療を提供するものではありません。禁煙については、必ず資格を持つ医療専門家にご相談ください。';

  @override
  String get privacySection8Title => '変更とお問い合わせ';

  @override
  String get privacySection8Body =>
      '当社は本ポリシーを随時更新することがあります。重要な変更についてはアプリ内でお知らせします。本ポリシーまたはお客様のデータについてご質問がある場合は、以下の連絡先までお問い合わせください。';

  @override
  String get termsOfUseTitle => '利用規約';

  @override
  String get termsOfUseLastUpdated => '最終更新日：2026年1月';

  @override
  String get termsOfUseIntro =>
      '本利用規約は、Puffreeへのアクセスおよびアプリの利用について定めるものです。アカウントを作成するかアプリを利用することで、本規約に同意したものとみなされます。同意されない場合は、アプリを利用しないでください。';

  @override
  String get termsSection1Title => '規約への同意';

  @override
  String get termsSection1Body =>
      'Puffreeをダウンロード、インストール、または利用することで、本利用規約およびプライバシーポリシーに同意し、本契約を締結するために必要な法的能力を有していることを確認したものとします。';

  @override
  String get termsSection2Title => 'サービスの説明';

  @override
  String get termsSection2Body =>
      'Puffreeは、禁煙後の進捗を管理するための習慣管理・モチベーションアプリです。禁煙期間、健康に関するマイルストーン、節約できた金額、喫煙欲求の記録などを確認できます。本アプリは個人向けのウェルネスツールであり、医療または臨床サービスではありません。';

  @override
  String get termsSection3Title => '利用資格とアカウント';

  @override
  String get termsSection3Body =>
      'Puffreeを利用するには13歳以上（またはお住まいの国で定められたデジタル同意の最低年齢）である必要があります。アカウントの機密性を維持し、アカウント上で行われるすべての活動について、お客様が責任を負うものとします。';

  @override
  String get termsSection4Title => 'Premiumサブスクリプションと請求';

  @override
  String get termsSection4Body =>
      'Premium機能は、Apple App StoreまたはGoogle Playを通じて請求される自動更新サブスクリプションとして提供されます。サブスクリプションは、現在の期間終了の24時間以上前にキャンセルされない限り自動的に更新されます。返金については、該当するストアのポリシーに従って処理されます。';

  @override
  String get termsSection5Title => '健康・医療に関する免責事項';

  @override
  String get termsSection5Body =>
      'Puffreeは医療上の助言を提供するものではなく、専門的な医療サービスの代替となるものでもありません。禁煙には離脱症状が伴う場合があります。健康に関する判断を行う前に、医師または資格を持つ医療従事者にご相談ください。';

  @override
  String get termsSection6Title => '許容される利用';

  @override
  String get termsSection6Body =>
      'お客様は、アプリを不正に使用したり、リバースエンジニアリングを試みたり、サービスを妨害したり、違法または有害なコンテンツをアップロードしたり、適用される法律や他者の権利を侵害する方法でアプリを使用したりしないことに同意するものとします。';

  @override
  String get termsSection7Title => '免責事項および責任の制限';

  @override
  String get termsSection7Body =>
      'Puffreeは、いかなる種類の保証もなく「現状のまま」提供されます。法律で認められる最大限の範囲において、アプリの利用から生じる間接的、偶発的、または結果的な損害について、当社は責任を負いません。';

  @override
  String get termsSection8Title => '本規約の変更とお問い合わせ';

  @override
  String get termsSection8Body =>
      '当社は本規約を随時更新することがあります。変更が有効になった後もアプリの利用を継続した場合、改訂された本規約に同意したものとみなされます。ご質問は、以下の連絡先までお送りください。';

  @override
  String get systemThemeLabel => 'システム';

  @override
  String get notificationsEnabledLabel => '通知が有効です';

  @override
  String get notificationsDisabledLabel => '通知が無効です';

  @override
  String get signInToAnotherAccount => '別のアカウントにログイン';

  @override
  String get openSignInPage => 'ログインページを開く';

  @override
  String get securePayment => '安全な支払い';
}
