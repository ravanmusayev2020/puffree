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
}
