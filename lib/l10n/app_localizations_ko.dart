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
}
