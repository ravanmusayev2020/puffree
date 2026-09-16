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
}
