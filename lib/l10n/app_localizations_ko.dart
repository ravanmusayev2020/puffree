// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => 'Puffree';

  @override
  String get tagline => '흡연으로부터의 자유';

  @override
  String get today => '오늘';

  @override
  String get streak => '연속';

  @override
  String get saved => '절약';

  @override
  String get avoided => '피한 수';

  @override
  String get totalDays => '총 일수';

  @override
  String get dailyMotivation => '오늘의 동기부여';

  @override
  String get checkIn => '오늘 피우지 않았어요';

  @override
  String get checkedInToday => '오늘 체크인 완료';

  @override
  String get missions => '오늘의 미션';

  @override
  String completedOf(int completed, int total) {
    return '$completed / $total 완료';
  }

  @override
  String get premium => 'Premium';

  @override
  String get tryFree => '3일 무료 체험';

  @override
  String get buyPremium => 'Premium 구매';

  @override
  String get restore => '구매 복원';

  @override
  String get premiumHint => 'Premium으로 모든 기능 잠금 해제';

  @override
  String get settings => '설정';

  @override
  String get progress => '나의 진행 상황';

  @override
  String get statistics => '통계';

  @override
  String get currentStreak => '현재 연속';

  @override
  String get record => '기록';

  @override
  String get bodyChanges => '몸에 일어나는 변화';

  @override
  String get resetProgress => '진행 상황 초기화';

  @override
  String get resetConfirm => '일수, 연속, 통계 데이터가 모두 삭제됩니다. 이 작업은 되돌릴 수 없습니다.';

  @override
  String get cancel => '취소';

  @override
  String get reset => '초기화';

  @override
  String get journalTitle => '일기';

  @override
  String get journalHint => '생각을 적어보세요';

  @override
  String get journalPlaceholder => '오늘 기분은 어떠신가요?';

  @override
  String get save => '저장';

  @override
  String get moodCheck => '지금 기분이 어떠신가요?';

  @override
  String get moodCheckHint => '잠시 자신의 상태를 점검해보세요.';

  @override
  String get version => '버전';

  @override
  String get privacy => '개인정보 처리방침';

  @override
  String get terms => '이용약관';

  @override
  String get disclaimer =>
      'Puffree는 동기부여 앱입니다. 의료 기기가 아니며 전문적인 의료 조언을 대체하지 않습니다. 강한 니코틴 중독이 있다면 전문가와 상담하세요.';

  @override
  String level(int number) {
    return '레벨 $number';
  }

  @override
  String daysSmokeFree(int count) {
    return '$count일 금연 중';
  }

  @override
  String nextLevelProgress(int percent) {
    return '다음 레벨까지 $percent%';
  }

  @override
  String get friend => '친구';

  @override
  String helloName(String name) {
    return '안녕하세요, $name님!';
  }

  @override
  String get pathToFreedom => '자유를 향한 길';

  @override
  String get withoutCigs => '담배 없이';

  @override
  String get iSmoked => '피웠어요';

  @override
  String get relapseTitle => '괜찮아요';

  @override
  String get relapseBody => '한 개비의 담배가 진행 상황을 지우지 않습니다. 이 순간에서 배우고 계속 나아가세요.';

  @override
  String get relapseDone => '계속하기';

  @override
  String get home => '홈';

  @override
  String get tasks => '할 일';

  @override
  String get missionBreathe => '깊게 숨쉬기';

  @override
  String get missionWater => '물 마시기';

  @override
  String get missionWalk => '10분 걷기';

  @override
  String get missionJournal => '생각 적기';

  @override
  String get missionMeditation => '5분 명상';

  @override
  String get missionFocus => '폰 없이 집중';

  @override
  String get missionReflect => '하루 돌아보기';

  @override
  String get missionHelp => '누군가 돕기';

  @override
  String get missionBreatheDesc => '천천히 깊게 몇 번 숨을 쉬어보세요.';

  @override
  String get missionWaterDesc => '물 한 잔을 마셔보세요.';

  @override
  String get missionWalkDesc => '10분 동안 걸어보세요.';

  @override
  String get missionJournalDesc => '하루에 대한 생각 하나를 적어보세요.';

  @override
  String get missionMeditationDesc => '5분 동안 명상해보세요.';

  @override
  String get missionFocusDesc => '폰 없이 집중하는 시간을 가져보세요.';

  @override
  String get missionReflectDesc => '하루가 어땠는지 생각해보세요.';

  @override
  String get missionHelpDesc => '누군가를 돕기 위해 친절한 일을 해보세요.';

  @override
  String get sosTitle => 'SOS 지원';

  @override
  String get sosTimer => '갈망 타이머';

  @override
  String get sosBreathe => '호흡';

  @override
  String get sosChat => '대화';

  @override
  String get sosStart => '시작';

  @override
  String get sosDone => '완료';

  @override
  String get sosManaged => '갈망을 이겨냈어요!';

  @override
  String get sosWon => '이겼어요!';

  @override
  String get sosLeft => '남음';

  @override
  String get sosTip1 => '천천히 깊게 몇 번 숨을 쉬어보세요.';

  @override
  String get sosTip2 => '물 한 잔을 마셔보세요.';

  @override
  String get sosTip3 => '장소를 바꿔보세요.';

  @override
  String get sosTip4 => '손을 바쁘게 만들어보세요.';

  @override
  String get sosTip5 => '왜 시작했는지 생각해보세요.';

  @override
  String get sosTip6 => '갈망이 지나갈 때까지 몇 분을 주세요.';

  @override
  String get breatheIn => '들이쉬기';

  @override
  String get breatheHold => '멈추기';

  @override
  String get breatheOut => '내쉬기';

  @override
  String get breatheHint => '원을 따라 천천히 숨쉬세요.';

  @override
  String get breatheStart => '호흡 시작';

  @override
  String get chatPick => '지금 어떤 기분인가요?';

  @override
  String get chatCraving => '갈망이 있어요';

  @override
  String get chatStress => '스트레스를 받아요';

  @override
  String get chatBoredom => '심심해요';

  @override
  String get chatNeedWalk => '걷고 싶어요';

  @override
  String get chatNeedWater => '물이 필요해요';

  @override
  String get chatNeedBreathe => '숨이 필요해요';

  @override
  String get chatIntroStress => '스트레스를 느끼는 것 같네요. 이 순간을 함께 넘깁시다.';

  @override
  String get chatIntroBoredom => '심심함이 갈망을 더 강하게 만들 수 있어요. 다른 것에 집중해봅시다.';

  @override
  String get chatIntroCraving => '갈망은 강할 수 있지만 지나갑니다. 한 순간씩 가봅시다.';

  @override
  String get chatReplyStress => '천천히 몇 번 숨을 쉬고 잠시 휴식을 취하세요. 갈망에 따를 필요는 없습니다.';

  @override
  String get chatReplyBoredom => '환경을 바꿔봅시다. 짧게 걷거나, 물을 마시거나, 손을 바쁘게 하세요.';

  @override
  String get chatReplyCraving =>
      '결정하기 전에 몇 분 기다리세요. 물을 마시고, 천천히 숨쉬고, 왜 시작했는지 떠올려보세요.';

  @override
  String get onboardingTitle1 => '자유롭게 숨쉬기';

  @override
  String get onboardingDesc1 => 'Puffree는 압박 없이, 지원과 함께 금연을 한 걸음씩 돕습니다.';

  @override
  String get onboardingTitle2 => '레벨과 진행';

  @override
  String get onboardingDesc2 => '담배 없는 매일은 새로운 레벨을 엽니다. 힘과 건강이 자라는 것을 지켜보세요.';

  @override
  String get onboardingTitle3 => '매일의 지원';

  @override
  String get onboardingDesc3 => '동기부여, 미션, 진행 추적. 이 길에서 혼자가 아닙니다.';

  @override
  String get aboutYou => '당신에 대해 조금';

  @override
  String get aboutYouDesc => '절약한 돈과 담배 수를 계산하는 데 도움이 됩니다';

  @override
  String get cigsPerDay => '이전 하루 담배 수';

  @override
  String get pricePerPack => '한 갑 가격';

  @override
  String get startJourney => '여정 시작';

  @override
  String get next => '다음';

  @override
  String get skip => '건너뛰기';

  @override
  String get youGotThis => '할 수 있어요. 한 순간씩.';

  @override
  String get waitTheWave => '갈망의 파도를 견디세요';

  @override
  String get youPassedThis => '이 순간을 넘어섰어요';

  @override
  String get greatJob => '잘했어요. 당신이 통제하고 있습니다.';

  @override
  String get giveYourselfMinutes => '몇 분을 주고 지금 이 순간에 집중하세요.';

  @override
  String get keepGoing => '계속하기';

  @override
  String get done => '완료';

  @override
  String get breatheSlowly => '천천히 숨쉬기';

  @override
  String get followTheCircle => '원의 리듬을 따르세요';

  @override
  String get chooseWhatFits => '지금 기분에 맞는 것을 선택하세요.';

  @override
  String get yourResults => '나의 결과';

  @override
  String get whatChanged => '당신 덕분에 이미 달라진 것들';

  @override
  String get recoveryPath => '회복의 길';

  @override
  String get everyMilestone => '모든 이정표는 또 하나의 발걸음입니다';

  @override
  String get levelProgress => '다음 레벨까지의 진행';

  @override
  String get yourPathContinues => '당신의 길은 계속됩니다';

  @override
  String get daysWordOne => '일';

  @override
  String get daysWordFew => '일';

  @override
  String get daysWordMany => '일';

  @override
  String get momentum => '추진력';

  @override
  String missionsLeft(int count) {
    return '$count개 미션 남음';
  }

  @override
  String get allMissionsDone => '모든 미션 완료';

  @override
  String get dayComplete => '하루 완료';

  @override
  String get keepGoingShort => '계속하기';

  @override
  String get inProgress => '진행 중';

  @override
  String get complete => '완료';

  @override
  String get yourPlanToday => '오늘의 계획';

  @override
  String get everythingDone => '모두 완료';

  @override
  String get theme => '테마';

  @override
  String get language => '언어';

  @override
  String get notifications => '알림';

  @override
  String get notificationsHint => '알림과 동기부여';

  @override
  String get data => '데이터';

  @override
  String get aboutApp => '앱 정보';

  @override
  String get appTheme => '앱 테마';

  @override
  String get chooseTheme => 'Puffree가 어떻게 보일지 선택하세요.';

  @override
  String get systemTheme => '시스템';

  @override
  String get systemThemeDesc => '휴대폰 설정을 따름';

  @override
  String get lightTheme => '라이트';

  @override
  String get lightThemeDesc => '항상 라이트 테마 사용';

  @override
  String get darkTheme => '다크';

  @override
  String get darkThemeDesc => '항상 다크 테마 사용';

  @override
  String get premiumActive => 'Premium 활성화됨';

  @override
  String get trialActive => '체험 기간 활성화됨';

  @override
  String get fullAccess => '모든 기능에 대한 전체 액세스';

  @override
  String get openPremium => 'Premium 및 구독 옵션 열기';

  @override
  String get resetProgressTitle => '진행 상황을 초기화할까요?';

  @override
  String get resetProgressBody => '일수, 연속, 통계 데이터가 모두 삭제됩니다. 이 작업은 되돌릴 수 없습니다.';

  @override
  String get excellent => '훌륭해요!';

  @override
  String get anotherDayFree => '또 하루 담배 없이';

  @override
  String get continueBtn => '계속하기';

  @override
  String get newAchievement => '새로운 성취';

  @override
  String get newLevel => '새로운 레벨!';

  @override
  String get levelUpMessage => '계속하세요 — 정말 잘하고 있어요!';

  @override
  String get freeFor => '이미 자유로움';

  @override
  String get toNextLevel => '다음 레벨까지';

  @override
  String get keyResults => '주요 결과';

  @override
  String get progressSystem => '진행 시스템';

  @override
  String get everyDayCloser => '매일 다음 레벨에 더 가까워집니다';

  @override
  String get current => '현재';

  @override
  String get nextLevel => '다음';

  @override
  String get smallSteps => '작은 걸음. 큰 변화.';

  @override
  String get youAreFurther => '이미 어제보다 더 멀리 와 있어요';

  @override
  String get madeForFuture => '담배 없는 미래를 위해 만들어졌습니다';

  @override
  String get dayStreakCaption => '일 연속';

  @override
  String get cigarettesAvoidedCaption => '피하지 않음';

  @override
  String get freeDaysCaption => '자유로운 날들';

  @override
  String get levelLabel => '레벨';

  @override
  String get keepStreakAlive => '연속 기록을 유지하세요';

  @override
  String get failedToLoadProgress => '진행 상황을 불러오지 못했습니다';

  @override
  String get levelTitle1 => '첫 호흡';

  @override
  String get levelTitle2 => '싹';

  @override
  String get levelTitle3 => '성장';

  @override
  String get levelTitle4 => '뿌리';

  @override
  String get levelTitle5 => '줄기';

  @override
  String get levelTitle6 => '힘';

  @override
  String get levelTitle7 => '불꽃';

  @override
  String get levelTitle8 => '불씨';

  @override
  String get levelTitle9 => '챔피언';

  @override
  String get levelTitle10 => '마스터';

  @override
  String get levelTitle11 => '다이아몬드';

  @override
  String get levelTitle12 => '별';

  @override
  String get levelTitle13 => '로켓';

  @override
  String get levelTitle14 => '전설';

  @override
  String get levelTitleDefault => '경로';

  @override
  String get milestone1Title => '새로운 경로의 시작';

  @override
  String get milestone1Desc => '당신은 이미 첫 걸음을 내디뎠고 계속해서 전진하고 있습니다.';

  @override
  String get milestone2Title => '첫 번째 변화';

  @override
  String get milestone2Desc => '신체는 점차 담배 없는 삶에 적응하고 있습니다.';

  @override
  String get milestone3Title => '새로운 단계';

  @override
  String get milestone3Desc => '습관이 없는 새로운 리듬이 서서히 형성되고 있습니다.';

  @override
  String get milestone4Title => '확신 있는 진전';

  @override
  String get milestone4Desc => '2주는 새로운 습관으로 가는 길에서 눈에 띄는 이정표입니다.';

  @override
  String get milestone5Title => '큰 습관의 변화';

  @override
  String get milestone5Desc => '한 달간의 꾸준함은 진지한 개인적 결과입니다.';

  @override
  String get milestone6Title => '큰 이정표';

  @override
  String get milestone6Desc => '경로를 계속하는 것은 새로운 라이프스타일을 공고히 하는 데 도움이 됩니다.';

  @override
  String get milestone7Title => '자유의 1년';

  @override
  String get milestone7Desc => '담배 없는 1년은 당신의 경로에서 큰 이정표입니다.';

  @override
  String get navProgress => '진행';

  @override
  String get more => '더보기';

  @override
  String get settingsSubtitle => 'Puffree를 나에게 맞게 설정';

  @override
  String get sectionApp => '앱';

  @override
  String get sectionData => '데이터';

  @override
  String get sectionAbout => '앱 정보';

  @override
  String get resetProgressSubtitle => '여정을 다시 시작';

  @override
  String get premiumActiveBadge => '활성';

  @override
  String get splashCaption => '흡연으로부터의 자유';

  @override
  String get todayStartJourney => '오늘은 새로운 여정의 시작입니다.';

  @override
  String realResultKeepGoing(int count, String daysWord) {
    return '$count $daysWord은(는) 이미 실제적인 결과입니다. 계속하세요.';
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
  String get onbTitle1 => '무엇을 사용하시나요?';

  @override
  String get onbSubtitle1 => '습관에 맞춰 모든 것을 개인화해 드릴게요.';

  @override
  String get onbTitle2 => '얼마나 사용하시나요?';

  @override
  String get onbSubtitle2 => '솔직한 숫자가 실제 진행 상황을 계산하는 데 도움이 됩니다.';

  @override
  String get onbTitle3 => '비용이 얼마나 드나요?';

  @override
  String get onbSubtitle3 => '매달 얼마나 절약할 수 있는지 확인해 보세요.';

  @override
  String get onbTitle4 => '몸이 어떻게 느끼시나요?';

  @override
  String get onbSubtitle4 => '가장 자주 느끼는 증상을 선택해 주세요.';

  @override
  String get onbTitle5 => '왜 끊고 싶으신가요?';

  @override
  String get onbSubtitle5 => '당신의 이유가 우리가 만들어 드릴 계획의 원동력이 됩니다.';

  @override
  String get onbTitle6 => '계획을 만들고 있어요';

  @override
  String get onbSubtitle6 => '당신만을 위한 맞춤 경로를 만들고 있습니다.';

  @override
  String get onbTitle7 => '계획이 준비됐어요';

  @override
  String get onbSubtitle7 => '당신을 위해 만든 계획으로 여정을 시작하세요.';

  @override
  String get onbEyebrowBeforeStart => '시작하기 전에';

  @override
  String get onbEyebrowStartingPoint => '출발점';

  @override
  String get onbEyebrowRealCost => '실제 비용';

  @override
  String get onbEyebrowSelfAwareness => '자기 인식';

  @override
  String get onbEyebrowYourReason => '당신의 이유';

  @override
  String get onbEyebrowPersonalization => '개인화';

  @override
  String get onbEyebrowDone => '준비 완료';

  @override
  String get onbHabitCigarettesTitle => '담배';

  @override
  String get onbHabitCigarettesSubtitle => '일반 담배 또는 말아 피우는 담배';

  @override
  String get onbHabitVapeTitle => '베이프 / 팟';

  @override
  String get onbHabitVapeSubtitle => '전자담배 및 팟 시스템';

  @override
  String get onbPodsPerWeekLabel => '주당 팟 수';

  @override
  String get onbCigarettesPerDayLabel => '하루 담배 개비 수';

  @override
  String get onbYearsSmokedLabel => '흡연 연수';

  @override
  String get onbUnitPieces => '개';

  @override
  String get onbUnitYears => '년';

  @override
  String get onbAmountVapeHint => '주간 비용과 진행 상황을 추정하는 데 도움이 됩니다.';

  @override
  String get onbPotentialSavingsLabel => '예상 월간 절약액';

  @override
  String get onbPerMonthQuitting => '끊었을 때 월 기준';

  @override
  String get onbPricePerPodLabel => '팟 1개 가격';

  @override
  String get onbPricePerPackLabel => '한 갑 가격';

  @override
  String get onbCigarettesPerPackLabel => '한 갑당 개비 수';

  @override
  String get onbCurrencyLabel => '통화';

  @override
  String get onbSymptomBreath => '숨이 참';

  @override
  String get onbSymptomAnxiety => '불안 / 초조함';

  @override
  String get onbSymptomPulse => '빠르거나 불규칙한 심장 박동';

  @override
  String get onbSymptomMorning => '아침 기침 / 가래';

  @override
  String get onbSymptomCough => '잦은 기침';

  @override
  String get onbBodyHint => '여러 개를 선택할 수 있습니다. 당신에게 중요한 것에 집중하는 데 도움이 됩니다.';

  @override
  String get onbMotivationHealth => '더 나은 건강과 에너지';

  @override
  String get onbMotivationFreedom => '중독에서의 자유';

  @override
  String get onbMotivationMoney => '돈 절약';

  @override
  String get onbMotivationFamily => '가족 / 아이들을 위해';

  @override
  String get onbMotivationControl => '내 삶의 통제권을 되찾기';

  @override
  String get onbMotivationFuture => '더 건강한 미래';

  @override
  String get onbSelectMultipleHint => '여러 이유를 선택할 수 있습니다';

  @override
  String get onbStartingMapLabel => '지도를 만드는 중';

  @override
  String get onbBuildingStepSave => '절약액 계산 중';

  @override
  String get onbBuildingStepGoal => '주요 목표 설정 중';

  @override
  String get onbBuildingStepScenarios => '개인 시나리오 생성 중';

  @override
  String get onbBuildingStepSteps => '첫 단계 준비 중';

  @override
  String get onbBuildingHint => '보통 몇 초밖에 걸리지 않습니다.';

  @override
  String get onbPleaseWait => '잠시만 기다려 주세요…';

  @override
  String get onbCreatingPlan => '계획을 만드는 중…';

  @override
  String get onbFirst30DaysLabel => '첫 30일';

  @override
  String get onbLessExpensesLabel => '지출 감소';

  @override
  String get onbSavingsPerMonth => '월간 절약액';

  @override
  String get onbSavingsPerYear => '연간 절약액';

  @override
  String get onbPlanPersonalizedTitle => '당신만의 맞춤 계획';

  @override
  String onbPlanPersonalizedSubtitle(int motivations, int symptoms) {
    return '$motivations개의 이유와 $symptoms개의 증상 기반';
  }

  @override
  String get onbResultHint => '이 숫자들은 나중에 설정에서 언제든 조정할 수 있습니다.';

  @override
  String get onbBreathingHint => '호흡하세요';

  @override
  String get onbContinue => '계속';

  @override
  String get onbStartJourney => '내 여정 시작하기';

  @override
  String get onboardingHabitTitle => 'Pronto para recuperar o controle?';

  @override
  String get onboardingHabitSubtitle =>
      'Primeiro vamos entender seu hábito. Sem formulários longos — algumas respostas precisas e o Puffree montará seu caminho.';

  @override
  String get onboardingAmountTitle => 'Descreva seu dia típico';

  @override
  String get onboardingAmountSubtitle =>
      'Isso não é para te julgar. É o ponto de partida a partir do qual mediremos o progresso.';

  @override
  String get onboardingMoneyTitle => 'Quanto o hábito te tira?';

  @override
  String get onboardingMoneySubtitle =>
      'O preço muda imediatamente na tela — você vê não um número abstrato, mas o custo real do hábito.';

  @override
  String get onboardingBodyTitle => 'O que você nota em si?';

  @override
  String get onboardingBodySubtitle =>
      'Marque o que acontece com você. Pode escolher várias opções ou nenhuma.';

  @override
  String get onboardingMotivationTitle => 'Por que você faz isso?';

  @override
  String get onboardingMotivationSubtitle =>
      'Isso se tornará sua âncora pessoal. O Puffree te trará de volta a essa razão no momento certo.';

  @override
  String get onboardingBuildingTitle => 'Montando seu caminho';

  @override
  String get onboardingBuildingSubtitle =>
      'Não é diagnóstico médico nem promessa de um dia perfeito. Apenas seu ponto de partida e próximos passos claros.';

  @override
  String get onboardingResultTitle =>
      'Sua primeira tela de progresso já está aqui';

  @override
  String get onboardingResultSubtitle =>
      'Salvamos os dados iniciais no dispositivo e os transformamos em progresso mensurável.';

  @override
  String get onboardingEyebrowBeforeStart => 'ANTES DE COMEÇAR';

  @override
  String get onboardingEyebrowStartPoint => 'SEU PONTO DE PARTIDA';

  @override
  String get onboardingEyebrowRealCost => 'O CUSTO REAL';

  @override
  String get onboardingEyebrowSelfFeeling => 'COMO VOCÊ SE SENTE';

  @override
  String get onboardingEyebrowYourReason => 'SUA RAZÃO';

  @override
  String get onboardingEyebrowPersonalization => 'PERSONALIZAÇÃO';

  @override
  String get onboardingEyebrowDone => 'PRONTO';

  @override
  String get onboardingCigarettesChoice => 'Eu fumo cigarros';

  @override
  String get onboardingCigarettesChoiceSubtitle =>
      'O cenário principal do Puffree';

  @override
  String get onboardingVapeChoice => 'Eu uso vape';

  @override
  String get onboardingVapeChoiceSubtitle =>
      'Guardaremos esta escolha no seu perfil';

  @override
  String get onboardingPodsPerWeek => 'Pods / descartáveis por semana';

  @override
  String get onboardingUnitPcs => 'un.';

  @override
  String get onboardingVapeHint =>
      'Mais tarde, o perfil Puffree poderá separar cenários de cigarros e vape sem perder o histórico.';

  @override
  String get onboardingCigarettesPerDay => 'Cigarros por dia';

  @override
  String get onboardingYearsSmoked => 'Há quantos anos isso dura';

  @override
  String get onboardingUnitYears => 'anos';

  @override
  String get onboardingPricePerPod => 'Preço de um pod';

  @override
  String get onboardingPricePerPack => 'Preço do maço';

  @override
  String get onboardingCigarettesPerPack => 'Cigarros por maço';

  @override
  String get onboardingPotentialSavings => 'Economia potencial';

  @override
  String get onboardingPerMonthIfQuit => 'por mês se você parar o hábito';

  @override
  String get onboardingCurrency => 'Moeda';

  @override
  String get onboardingSymptomBreath =>
      'Sinto que a respiração ficou mais pesada';

  @override
  String get onboardingSymptomAnxiety => 'Às vezes sinto forte ansiedade';

  @override
  String get onboardingSymptomPulse => 'Noto o pulso acelerado';

  @override
  String get onboardingSymptomMorning =>
      'De manhã me dá muita vontade do primeiro cigarro';

  @override
  String get onboardingSymptomCough => 'Tenho tosse matinal';

  @override
  String get onboardingBodyHint =>
      'Isto é uma autodescrição, não um diagnóstico. Se os sintomas te preocupam, é melhor falar com um médico.';

  @override
  String get onboardingMotivationHealth => 'Quero cuidar melhor da saúde';

  @override
  String get onboardingMotivationFreedom => 'Quero me sentir mais livre';

  @override
  String get onboardingMotivationMoney =>
      'Quero parar de gastar dinheiro com isso';

  @override
  String get onboardingMotivationFamily =>
      'Quero depender menos do hábito perto dos entes queridos';

  @override
  String get onboardingMotivationControl =>
      'Quero recuperar a sensação de controle';

  @override
  String get onboardingMotivationFuture => 'Quero fazer isso pelo meu futuro';

  @override
  String get onboardingCanSelectSeveral => 'Pode escolher várias';

  @override
  String get onboardingYourStartCard => 'seu cartão inicial';

  @override
  String get onboardingStepSaveAnswers => 'Salvando suas respostas';

  @override
  String get onboardingStepFinancialGoal => 'Calculando o objetivo financeiro';

  @override
  String get onboardingStepCravingScenarios =>
      'Formando cenários para a vontade';

  @override
  String get onboardingStepFirstSteps => 'Preparando os primeiros passos';

  @override
  String get onboardingBuildingHint =>
      'De propósito não prometemos «regeneração dos pulmões em X horas» — o Puffree mostra coisas mensuráveis e separa fato de motivação.';

  @override
  String get onboardingSavingsPerMonth => 'economia / mês';

  @override
  String get onboardingSavingsPerYear => 'economia / ano';

  @override
  String get onboardingResultHint =>
      'Esses números são um cálculo com base nas suas respostas, não uma promessa de resultados. O progresso real depende do seu comportamento.';

  @override
  String get onboardingFirst30Days => 'Primeiros 30 dias';

  @override
  String get onboardingLessSpendMoreControl => 'menos gastos → mais controle';

  @override
  String get onboardingPlanPersonalized => 'Plano personalizado';

  @override
  String onboardingMotivationsCount(int count) {
    return '$count motivações pessoais';
  }

  @override
  String onboardingSymptomsCount(int count) {
    return '$count estados marcados';
  }

  @override
  String get onboardingTakeFirstStep => 'dê o primeiro passo';

  @override
  String get onboardingPleaseWait => 'Por favor, aguarde alguns segundos…';

  @override
  String get onboardingCreatingPlan => 'Criando o plano…';

  @override
  String get onboardingStartMyJourney => 'Começar meu caminho';

  @override
  String get onboardingContinue => 'Continuar';

  @override
  String get premiumTitle => 'Puffree Premium';

  @override
  String get premiumSubtitle => '여정을 위한 더 많은 도구.\n나에게 맞는 플랜을 선택하세요.';

  @override
  String get oneMembership => '모든 것을 위한 하나의 Premium 액세스';

  @override
  String get everythingIncluded => '모든 기능 포함';

  @override
  String get everythingIncludedSubtitle => 'Premium은 Puffree의 전체 경험을 잠금 해제합니다.';

  @override
  String get choosePlan => '플랜 선택';

  @override
  String get choosePlanSubtitle => '구매 전에 선택을 변경할 수 있습니다.';

  @override
  String get featureTasks => '확장 미션';

  @override
  String get featureTasksSubtitle => '더 많은 연습과 도전';

  @override
  String get featureStats => '전체 통계';

  @override
  String get featureStatsSubtitle => '상세한 진행 인사이트';

  @override
  String get profileEditTitle => '프로필';

  @override
  String get profileEditTapToChangePhoto => '사진을 탭하여 변경';

  @override
  String get profileEditNameLabel => '이름';

  @override
  String get profileEditNameHint => '이름을 입력하세요';

  @override
  String get profileEditSaveButton => '변경 사항 저장';

  @override
  String get profileEditErrorEmptyName => '이름을 입력해 주세요';

  @override
  String get profileEditSuccessUpdated => '프로필이 성공적으로 업데이트되었습니다';

  @override
  String profileEditErrorUpdate(String error) {
    return '프로필 업데이트 실패: $error';
  }

  @override
  String get authWelcomeBack => '다시 오신 것을 환영합니다!';

  @override
  String get authCreateAccount => '계정 만들기';

  @override
  String get authResetPassword => '비밀번호 재설정';

  @override
  String get authLoginSubtitle => '여정을 계속하려면 로그인하세요';

  @override
  String get authRegisterSubtitle => '오늘부터 금연 생활을 시작하세요';

  @override
  String get authForgotSubtitle => '이메일을 입력하면 안내를 보내드립니다';

  @override
  String get authTabLogin => '로그인';

  @override
  String get authTabRegister => '회원가입';

  @override
  String get authNameHint => '이름';

  @override
  String get authNameRequired => '이름을 입력하세요';

  @override
  String get authEmailHint => '이메일 주소';

  @override
  String get authEmailRequired => '이메일을 입력하세요';

  @override
  String get authEmailInvalid => '잘못된 이메일';

  @override
  String get authPasswordHint => '비밀번호';

  @override
  String get authPasswordRequired => '비밀번호를 입력하세요';

  @override
  String get authPasswordMinLength => '비밀번호는 최소 6자 이상이어야 합니다';

  @override
  String get authConfirmPasswordHint => '비밀번호 확인';

  @override
  String get authPasswordsDoNotMatch => '비밀번호가 일치하지 않습니다';

  @override
  String get authForgotPassword => '비밀번호를 잊으셨나요?';

  @override
  String get authLoginButton => '로그인';

  @override
  String get authRegisterButton => '회원가입';

  @override
  String get authSendLinkButton => '링크 보내기';

  @override
  String get authBackToLogin => '로그인으로 돌아가기';

  @override
  String get authOrContinueWith => '또는';

  @override
  String get authGoogle => 'Google';

  @override
  String get authApple => 'Apple';

  @override
  String get authResetLinkSent => '비밀번호 재설정 링크가 이메일로 전송되었습니다!';

  @override
  String get authErrorGeneric => '오류가 발생했습니다. 입력 내용을 확인하세요.';

  @override
  String get authErrorSocial => '소셜 로그인에 실패했습니다.';

  @override
  String get profileYourProfile => '내 프로필';

  @override
  String get profileEdit => '프로필 편집';

  @override
  String get switchAccountTitle => '다른 계정으로 로그인할까요?';

  @override
  String get switchAccountBody => '로그인 페이지가 열려 다른 계정으로 로그인할 수 있습니다.';

  @override
  String get switchAccountButton => '다른 계정으로 로그인';

  @override
  String get switchAccountSubtitle => '로그인 페이지 열기';

  @override
  String get continueAction => '계속';

  @override
  String get logoutTitle => '로그아웃할까요?';

  @override
  String get logoutBody => '정말 계정에서 로그아웃하시겠습니까?';

  @override
  String get logoutButton => '로그아웃';

  @override
  String get premiumBrand => 'Puffree Premium';

  @override
  String get motStartJourney => '오늘 당신의 새로운 여정이 시작됩니다. 한 걸음도 이미 큰 의미가 있습니다.';

  @override
  String get motMilestone1 => '첫날. 첫 걸음을 내딛었습니다. 계속 나아가세요.';

  @override
  String get motMilestone3 => '3일 차. 축하할 가치가 있습니다. 목표를 향해 잘 가고 있습니다.';

  @override
  String get motMilestone7 => '일주일 달성. 나 자신을 위해 선택한 7일간의 결정들.';

  @override
  String get motMilestone10 => '10일 차. 이미 상당한 자신감이 쌓였습니다.';

  @override
  String get motMilestone14 => '2주 달성. 여정의 중요한 고비를 넘겼습니다. 더 강해질 것입니다.';

  @override
  String get motMilestone21 => '21일 차. 습관을 바꿀 능력이 있음을 스스로 증명하고 있습니다.';

  @override
  String get motMilestone30 => '30일 달성. 새로운 선택으로 가득 찬 한 달. 위대한 결과입니다.';

  @override
  String get motMilestone45 => '45일 차. 한 달 반 동안 멈추지 않고 앞을 향해 나아가고 있습니다.';

  @override
  String get motMilestone60 => '60일 달성. 두 달간의 꾸준함. 정말 강력한 성과입니다.';

  @override
  String get motMilestone90 => '90일 달성. 세 달. 자신이 얼마나 멀리 왔는지 돌아보세요.';

  @override
  String get motMilestone120 => '120일 차. 매일 스스로의 길을 선택하고 있습니다.';

  @override
  String get motMilestone180 => '반년 달성. 180일간의 일관성. 진심으로 대단합니다.';

  @override
  String get motMilestone270 => '270일 차. 예전 습관과 자신 사이에 엄청난 거리를 만들었습니다.';

  @override
  String get motMilestone365 => '1년 달성. 여정의 365일. 이것은 우연이 아닌 꾸준함의 결과입니다.';

  @override
  String get motFirstWeek1 => '오늘은 그저 다음 한 걸음만 내딛으면 됩니다.';

  @override
  String get motFirstWeek2 => '오늘 모든 길을 다 갈 필요는 없습니다. 그저 계속하세요.';

  @override
  String get motFirstWeek3 => '매일매일이 하나의 승리입니다. 오늘은 당신의 날입니다.';

  @override
  String get motFirstWeek4 => '힘든 순간이 온다고 해서 지금까지의 노력이 사라지지 않습니다.';

  @override
  String get motFirstWeek5 => '이미 시작했습니다. 이제 스스로에게 계속할 기회를 주세요.';

  @override
  String get motFirstWeek6 => '하루하루 차근차근. 큰 변화는 이렇게 만들어집니다.';

  @override
  String get motFirstWeek7 => '당신은 계속해서 자신을 선택하고 있습니다. 그것이 중요합니다.';

  @override
  String get motSecondWeek1 => '처음 시작했던 곳에서 이미 멀어졌습니다. 더 나아가세요.';

  @override
  String get motSecondWeek2 => '2주는 생각보다 가깝습니다. 당신만의 리듬을 유지하세요.';

  @override
  String get motSecondWeek3 => '당신의 변화는 작은 결정들이 모여 만들어집니다.';

  @override
  String get motSecondWeek4 => '완벽한 날을 기다리지 마세요. 오늘 하루를 좋은 날로 만드세요.';

  @override
  String get motSecondWeek5 => '유혹의 순간을 이겨내고 다시 계획으로 돌아올 힘이 있습니다.';

  @override
  String get motSecondWeek6 => '새로운 날이 올 때마다 자신감이 더욱 단단해집니다.';

  @override
  String get motSecondWeek7 => '힘든 순간도 버텨낼 수 있음을 이미 증명했습니다.';

  @override
  String get motFirstMonth1 => '한 걸음씩 새로운 습관을 만들어가고 있습니다.';

  @override
  String get motFirstMonth2 => '과거가 오늘의 선택을 결정하지 않습니다.';

  @override
  String get motFirstMonth3 => '30일도 \'계속하겠다\'는 하나의 결심에서 시작합니다.';

  @override
  String get motFirstMonth4 => '자신감은 하루아침이 아니라 꾸준한 날들을 통해 자랍니다.';

  @override
  String get motFirstMonth5 => '새로운 하루는 당신의 이야기에 한 페이지를 더합니다.';

  @override
  String get motFirstMonth6 => '당신의 성과는 온전히 당신의 것입니다. 누구도 빼앗을 수 없습니다.';

  @override
  String get motFirstMonth7 => '스스로를 자랑스러워해도 될 만큼 이미 충분히 나아왔습니다.';

  @override
  String get motFirstMonth8 => '의연하게 계속하세요. 큰 변화에는 서두름이 필요하지 않습니다.';

  @override
  String get motSecondMonth1 => '두 달의 결과는 더 이상偶然이 아닙니다.';

  @override
  String get motSecondMonth2 => '결심을 꾸준한 행동으로 바꾸고 있습니다.';

  @override
  String get motSecondMonth3 => '당신의 힘은 매일 내리는 결정 속에 있습니다.';

  @override
  String get motSecondMonth4 => '힘든 순간도 능히 이겨낼 수 있음을 스스로 잘 알고 있습니다.';

  @override
  String get motSecondMonth5 => '당신이 꿈꾸는 삶을 계속해서 만들어가세요.';

  @override
  String get motSecondMonth6 => '옛 습관 없이 보내는 매일이 앞으로 나아가는 한 걸음입니다.';

  @override
  String get motSecondMonth7 => '누구와도 경쟁할 필요 없습니다. 이 길은 오롯이 당신의 것입니다.';

  @override
  String get motSecondMonth8 => '뒤를 돌아보고 첫날의 자신과 비교해 보세요. 변화는 명확합니다.';

  @override
  String get motThirdMonth1 => '세 달은 결코 짧지 않은 시간입니다. 당신은 여전히 나아가고 있습니다.';

  @override
  String get motThirdMonth2 => '스스로를 위한 새로운 출발점을 만들었습니다.';

  @override
  String get motThirdMonth3 => '꾸준함은 동기부여보다 강합니다. 당신이 그것을 증명하고 있습니다.';

  @override
  String get motThirdMonth4 => '자신에게 진정 중요한 것이 무엇인지 계속 선택하고 있습니다.';

  @override
  String get motThirdMonth5 => '날이 갈수록 예전의 습관은 힘을 잃어갑니다.';

  @override
  String get motThirdMonth6 => '알맞은 때를 기다리지 않고, 스스로 때를 만들어가고 있습니다.';

  @override
  String get motThirdMonth7 => '90일은 수많은 작은 승리들이 모여 만들어진 이야기입니다.';

  @override
  String get motThirdMonth8 => '멀리 왔습니다. 여기서 멈추지 마세요.';

  @override
  String get motLongTerm1 => '시작점으로부터 아주 멀리 왔습니다. 계속 나아가세요.';

  @override
  String get motLongTerm2 => '자유는 하나의 선택에서 시작해 매일의 결정으로 완성됩니다.';

  @override
  String get motLongTerm3 => '당신의 결과는 포기하지 않고 이어온 모든 날들의 합입니다.';

  @override
  String get motLongTerm4 => '한때는 불가능하다고 생각했던 거리를 만들어냈습니다.';

  @override
  String get motLongTerm5 => '처음 시작했던 이유를 잊지 마세요.';

  @override
  String get motLongTerm6 => '새로운 하루하루가 당신의 이야기를 더 강하게 만듭니다.';

  @override
  String get motLongTerm7 => '뒤로 돌아가지 않습니다. 앞을 향해 나아갈 뿐입니다.';

  @override
  String get motLongTerm8 => '한때 어렵게만 느껴졌던 것이 이제는 당신의 삶의 일부가 되었습니다.';

  @override
  String get motLongTerm9 => '변화는 가능하다는 가장 중요한 사실을 스스로에게 증명했습니다.';

  @override
  String get motLongTerm10 => '당신만의 새로운 리듬으로 계속 살아가세요.';

  @override
  String get motLevelDefault => '새로운 레벨입니다. 계속해서 앞으로 나아가고 있군요.';

  @override
  String get motLevel1 => '여정이 시작되었습니다. 가장 중요한 것은 첫 걸음을 떼는 것입니다.';

  @override
  String get motLevel2 => '새싹이 돋아났습니다. 매일 자신의 성장을 보살펴주세요.';

  @override
  String get motLevel3 => '자라고 있습니다. 작은 결정들이 모여 큰 변화를 만듭니다.';

  @override
  String get motLevel4 => '뿌리가 깊어지고 있습니다. 자신만의 기초를 계속 다지세요.';

  @override
  String get motLevel5 => '더욱 자신감이 생기고 있습니다. 지금의 속도를 유지하세요.';

  @override
  String get motLevel6 => '어려움에도 불구하고 계속 나아갈 때 진짜 힘이 생깁니다.';

  @override
  String get motLevel7 => '당신의 단호함이 이야기의 일부가 되어가고 있습니다.';

  @override
  String get motLevel8 => '작은 불꽃이 확고한 전진의 힘으로 바뀌었습니다.';

  @override
  String get motLevel9 => '의미 있는 길을 걸어왔습니다. 자신의 성장을 인정해 주세요.';

  @override
  String get motLevel10 => '레벨 10. 이제 일관성이 가진 진정한 가치를 알고 있습니다.';

  @override
  String get motLevel11 => '험난한 길을 만나도 당신은 계속해서 성장하고 있습니다.';

  @override
  String get motLevel12 => '스스로에게 훌륭한 본보기가 되었습니다. 계속 나아가세요.';

  @override
  String get motLevel13 => '엄청난 추진력을 얻었습니다. 이제 방향을 잘 유지하세요.';

  @override
  String get motLevel14 => '전설적인 레벨입니다. 지금까지 이뤄낸 모든 것들을 바라보세요.';

  @override
  String get motShort1 => '오늘도 또 한 걸음.';

  @override
  String get motShort2 => '당신의 길을 계속 가세요.';

  @override
  String get motShort3 => '잘해내고 있습니다.';

  @override
  String get motShort4 => '당신의 성장은 가치가 있습니다.';

  @override
  String get motShort5 => '한 번의 힘든 순간 때문에 멈추지 마세요.';

  @override
  String get motShort6 => '당신은 옛 습관보다 강합니다.';

  @override
  String get motShort7 => '다음 한 걸음을 선택하세요.';

  @override
  String get motShort8 => '이미 시작했습니다. 계속하세요.';

  @override
  String get motShort9 => '오늘의 선택이 중요합니다.';

  @override
  String get motShort10 => '하루에 한 걸음씩.';

  @override
  String get motShort11 => '생각하는 것보다 더 많은 것을 해낼 수 있습니다.';

  @override
  String get motShort12 => '당신의 여정은 온전히 당신의 것입니다.';

  @override
  String get profileEditErrorPhotoNotFound => '선택한 사진을 가져올 수 없습니다';

  @override
  String get profileEditErrorOpenGallery => '갤러리를 열 수 없습니다';

  @override
  String get profileEditErrorPickPhoto => '사진을 선택하는 중 오류가 발생했습니다';

  @override
  String get featureMotivation => '개인 동기부여';

  @override
  String get featureMotivationSubtitle => '여정을 위한 가이드';

  @override
  String get featureSupport => '추가 지원 도구';

  @override
  String get featureSupportSubtitle => '필요할 때 더 많은 도움';

  @override
  String get featureNotifications => '스마트 알림';

  @override
  String get featureNotificationsSubtitle => '적절한 시점에 동기부여';

  @override
  String get featureAds => '광고 없음';

  @override
  String get featureAdsSubtitle => '차분하고 깔끔한 경험';

  @override
  String get planMonthly => '월간';

  @override
  String get planMonthlySubtitle => '장기 약정 없는 유연한 플랜';

  @override
  String get planYearly => '연간';

  @override
  String get planYearlySubtitle => '가격과 기능의 최적 균형';

  @override
  String get planLifetime => '평생';

  @override
  String get planLifetimeSubtitle => '한 번의 결제 — Premium 영구 이용';

  @override
  String get perMonth => '/ 월';

  @override
  String get perYear => '/ 년';

  @override
  String get bestValue => '최고의 가치';

  @override
  String get oneTime => '일회성';

  @override
  String get buyMonthly => '월간 Premium 받기';

  @override
  String get buyYearly => '연간 Premium 받기';

  @override
  String get buyLifetime => '평생 Premium 받기';

  @override
  String get restorePurchases => '구매 복원';

  @override
  String get securePurchase => '안전한 구매';

  @override
  String get cancelAnytime => '언제든 취소 가능';

  @override
  String get restoreAnytime => '구매를 복원할 수 있습니다';

  @override
  String get legalMonthly =>
      '구독은 매월 자동으로 갱신됩니다. App Store 또는 Google Play 설정에서 취소할 수 있습니다. 가격은 구매 확인 전에 표시됩니다.';

  @override
  String get legalYearly =>
      '구독은 매년 자동으로 갱신됩니다. App Store 또는 Google Play 설정에서 취소할 수 있습니다. 가격은 구매 확인 전에 표시됩니다.';

  @override
  String get legalLifetime => '일회성 구매이며 자동으로 갱신되지 않습니다. 가격은 구매 확인 전에 표시됩니다.';

  @override
  String get legalContactEmail => 'support@puffreeapp.com';

  @override
  String get privacyPolicyTitle => '개인정보 처리방침';

  @override
  String get privacyPolicyLastUpdated => '최종 업데이트: 2026년 1월';

  @override
  String get privacyPolicyIntro =>
      'Puffree(이하 \"당사\", \"저희\", \"앱\")는 금연 여정을 기록하고 동기를 유지할 수 있도록 도와드립니다. 본 개인정보 처리방침은 당사가 어떤 정보를 수집하고, 어떻게 사용하며, 사용자가 어떤 선택을 할 수 있는지 설명합니다.';

  @override
  String get privacySection1Title => '수집하는 정보';

  @override
  String get privacySection1Body =>
      '로그인할 때 사용자가 제공하는 계정 정보(이메일 주소, 표시 이름, 프로필 사진) 또는 계정 없이 앱을 사용하는 경우의 익명 식별자를 수집합니다. 또한 금연 시작일, 하루 흡연량, 한 갑의 가격, 기록한 흡연 욕구 등 사용자가 직접 입력하는 금연 관련 데이터도 저장합니다.';

  @override
  String get privacySection2Title => '정보의 이용 방법';

  @override
  String get privacySection2Body =>
      '금연 기간, 건강 관련 목표 달성 기록 및 절약한 금액을 계산하고, 여러 기기에서 진행 상황을 동기화하며, 선택적으로 동기 부여 알림과 알림 메시지를 보내고, Premium 구독 구매를 처리하며, 앱의 오류를 진단하고 서비스를 개선하기 위해 정보를 사용합니다.';

  @override
  String get privacySection3Title => '데이터 저장 및 보안';

  @override
  String get privacySection3Body =>
      '사용자의 데이터는 Firebase(Google Cloud)를 사용하여 저장되며 전송 중 암호화됩니다. 당사는 합리적인 기술적·관리적 보호 조치를 적용하지만, 인터넷을 통한 데이터 저장 또는 전송 방법이 완전히 안전하다고 보장할 수는 없습니다.';

  @override
  String get privacySection4Title => '제3자 서비스';

  @override
  String get privacySection4Body =>
      '당사는 계정 관리 및 데이터 동기화를 위해 Firebase Authentication과 Cloud Firestore를 사용하며, Premium 구독 결제를 처리하기 위해 Apple App Store 또는 Google Play의 결제 시스템을 사용합니다. 당사는 사용자의 개인정보를 제3자에게 판매하지 않습니다.';

  @override
  String get privacySection5Title => '사용자의 선택 및 권리';

  @override
  String get privacySection5Body =>
      '사용자는 언제든지 프로필을 확인하거나 수정할 수 있으며, 설정에서 로컬 진행 상황을 초기화하고 기기 설정에서 푸시 알림을 비활성화할 수 있습니다. 또한 당사에 문의하여 자신의 데이터에 대한 접근, 수정 또는 삭제를 요청할 수 있습니다.';

  @override
  String get privacySection6Title => '아동의 개인정보 보호';

  @override
  String get privacySection6Body =>
      'Puffree는 만 13세 미만의 아동(유럽연합에서는 만 16세 미만)을 대상으로 하지 않으며, 해당 연령대의 개인정보를 고의로 수집하지 않습니다. 아동이 당사에 데이터를 제공했다고 생각되는 경우, 데이터를 삭제할 수 있도록 당사에 문의해 주세요.';

  @override
  String get privacySection7Title => '건강 관련 면책사항';

  @override
  String get privacySection7Body =>
      'Puffree는 금연 여정을 지원하기 위해 설계된 습관 추적 도구입니다. 의료기기가 아니며 의료 조언, 진단 또는 치료를 제공하지 않습니다. 금연과 관련된 사항은 항상 자격을 갖춘 의료 전문가와 상담하시기 바랍니다.';

  @override
  String get privacySection8Title => '변경 및 문의';

  @override
  String get privacySection8Body =>
      '당사는 본 방침을 수시로 업데이트할 수 있으며, 중요한 변경 사항은 앱을 통해 안내합니다. 본 방침 또는 사용자의 데이터에 관한 문의가 있는 경우 아래의 연락처를 통해 당사에 문의해 주세요.';

  @override
  String get termsOfUseTitle => '이용약관';

  @override
  String get termsOfUseLastUpdated => '최종 업데이트: 2026년 1월';

  @override
  String get termsOfUseIntro =>
      '본 이용약관은 Puffree에 대한 접근 및 앱의 이용에 적용됩니다. 계정을 생성하거나 앱을 사용하면 본 약관에 동의하는 것으로 간주됩니다. 동의하지 않는 경우 앱을 사용하지 마세요.';

  @override
  String get termsSection1Title => '약관 동의';

  @override
  String get termsSection1Body =>
      'Puffree를 다운로드, 설치 또는 사용함으로써 사용자는 본 이용약관과 개인정보 처리방침에 동의하며, 본 계약을 체결할 수 있는 법적 능력이 있음을 확인합니다.';

  @override
  String get termsSection2Title => '서비스 설명';

  @override
  String get termsSection2Body =>
      'Puffree는 금연 후 진행 상황을 관리할 수 있도록 도와주는 습관 추적 및 동기 부여 앱입니다. 금연 기간, 건강 관련 목표 달성 기록, 절약한 금액 및 흡연 욕구 기록 등을 확인할 수 있습니다. 본 앱은 개인 웰니스 도구이며 의료 또는 임상 서비스가 아닙니다.';

  @override
  String get termsSection3Title => '이용 자격 및 계정';

  @override
  String get termsSection3Body =>
      'Puffree를 사용하려면 만 13세 이상(또는 거주 국가에서 정한 디지털 동의 최소 연령)이어야 합니다. 사용자는 계정의 기밀성을 유지하고 자신의 계정에서 발생하는 모든 활동에 대해 책임을 집니다.';

  @override
  String get termsSection4Title => 'Premium 구독 및 결제';

  @override
  String get termsSection4Body =>
      'Premium 기능은 Apple App Store 또는 Google Play를 통해 결제되는 자동 갱신 구독으로 제공됩니다. 현재 구독 기간이 종료되기 최소 24시간 전에 취소하지 않으면 구독이 자동으로 갱신됩니다. 환불은 해당 스토어의 정책에 따라 처리됩니다.';

  @override
  String get termsSection5Title => '건강 및 의료 관련 면책사항';

  @override
  String get termsSection5Body =>
      'Puffree는 의료 조언을 제공하지 않으며 전문적인 의료 서비스를 대체하지 않습니다. 금연 과정에서 금단 증상이 나타날 수 있으므로 건강과 관련된 결정을 내리기 전에 의사 또는 면허를 보유한 의료 서비스 제공자와 상담하시기 바랍니다.';

  @override
  String get termsSection6Title => '허용되는 이용';

  @override
  String get termsSection6Body =>
      '사용자는 앱을 오용하거나, 앱을 리버스 엔지니어링하거나 서비스를 방해하려고 시도하거나, 불법적이거나 유해한 콘텐츠를 업로드하거나, 관련 법률 또는 타인의 권리를 침해하는 방식으로 앱을 사용하지 않는 데 동의합니다.';

  @override
  String get termsSection7Title => '면책 및 책임의 제한';

  @override
  String get termsSection7Body =>
      'Puffree는 어떠한 종류의 보증도 없이 \"있는 그대로\" 제공됩니다. 법률이 허용하는 최대 범위 내에서 당사는 앱 사용으로 인해 발생하는 간접적, 부수적 또는 결과적 손해에 대해 책임을 지지 않습니다.';

  @override
  String get termsSection8Title => '약관 변경 및 문의';

  @override
  String get termsSection8Body =>
      '당사는 본 약관을 수시로 업데이트할 수 있습니다. 변경 사항이 적용된 후에도 앱을 계속 사용하면 개정된 약관에 동의한 것으로 간주됩니다. 문의 사항은 아래의 연락처로 보내주시기 바랍니다.';

  @override
  String get systemThemeLabel => '시스템';

  @override
  String get notificationsEnabledLabel => '알림 활성화됨';

  @override
  String get notificationsDisabledLabel => '알림 비활성화됨';

  @override
  String get signInToAnotherAccount => '다른 계정으로 로그인';

  @override
  String get openSignInPage => '로그인 페이지 열기';

  @override
  String get securePayment => '안전한 결제';
}
