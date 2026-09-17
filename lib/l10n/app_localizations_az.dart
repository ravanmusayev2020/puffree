// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get appName => 'Puffree';

  @override
  String get tagline => 'Siqaretsiz azadlıq';

  @override
  String get today => 'Bu gün';

  @override
  String get streak => 'Seriya';

  @override
  String get saved => 'Qənaət';

  @override
  String get avoided => 'Qaçınılıb';

  @override
  String get totalDays => 'Ümumi günlər';

  @override
  String get dailyMotivation => 'Günün motivasiyası';

  @override
  String get checkIn => 'Bu gün siqaret çəkmədim';

  @override
  String get checkedInToday => 'Bu gün qeyd olundu';

  @override
  String get missions => 'Günün tapşırıqları';

  @override
  String completedOf(int completed, int total) {
    return '$completed / $total tamamlanıb';
  }

  @override
  String get premium => 'Premium';

  @override
  String get tryFree => '3 gün pulsuz sına';

  @override
  String get buyPremium => 'Premium al';

  @override
  String get restore => 'Satınalmaları bərpa et';

  @override
  String get premiumHint => 'Premium ilə bütün funksiyaları aç';

  @override
  String get settings => 'Ayarlar';

  @override
  String get progress => 'İnkişafın';

  @override
  String get statistics => 'Statistika';

  @override
  String get currentStreak => 'Cari seriya';

  @override
  String get record => 'Rekord';

  @override
  String get bodyChanges => 'Bədəndə nələr baş verir';

  @override
  String get resetProgress => 'İnkişafı sıfırla';

  @override
  String get resetConfirm =>
      'Bütün günlər, seriya və statistika silinəcək. Bu əməliyyat geri qaytarıla bilməz.';

  @override
  String get cancel => 'Ləğv et';

  @override
  String get reset => 'Sıfırla';

  @override
  String get journalTitle => 'Gündəlik';

  @override
  String get journalHint => 'Düşüncələrini yaz';

  @override
  String get journalPlaceholder => 'Bu gün özünü necə hiss edirsən?';

  @override
  String get save => 'Yadda saxla';

  @override
  String get moodCheck => 'Özünü necə hiss edirsən?';

  @override
  String get moodCheckHint => 'Bir dəqiqə özünə diqqət yetir.';

  @override
  String get version => 'Versiya';

  @override
  String get privacy => 'Məxfilik siyasəti';

  @override
  String get terms => 'İstifadə şərtləri';

  @override
  String get disclaimer =>
      'Puffree motivasiya tətbiqidir. Tibbi vasitə deyil və həkim məsləhətini əvəz etmir. Güclü nikotin asılılığı varsa, mütəxəssisə müraciət et.';

  @override
  String level(int number) {
    return 'Səviyyə $number';
  }

  @override
  String daysSmokeFree(int count) {
    return '$count gün siqaretsiz';
  }

  @override
  String nextLevelProgress(int percent) {
    return 'Növbəti səviyyəyə $percent%';
  }

  @override
  String get friend => 'Dost';

  @override
  String helloName(String name) {
    return 'Salam, $name!';
  }

  @override
  String get pathToFreedom => 'Azadlığa yolun';

  @override
  String get withoutCigs => 'siqaretsiz';

  @override
  String get iSmoked => 'Siqaret çəkdim';

  @override
  String get relapseTitle => 'Problem yoxdur';

  @override
  String get relapseBody =>
      'Bir siqaret inkişafını silmir. Bu andan dərs çıxar və irəli getməyə davam et.';

  @override
  String get relapseDone => 'Davam et';

  @override
  String get home => 'Əsas';

  @override
  String get tasks => 'Tapşırıqlar';

  @override
  String get missionBreathe => 'Dərin nəfəs';

  @override
  String get missionWater => 'Su iç';

  @override
  String get missionWalk => '10 dəq gəzinti';

  @override
  String get missionJournal => 'Düşüncə yaz';

  @override
  String get missionMeditation => '5 dəq meditasiya';

  @override
  String get missionFocus => 'Telefonsuz fokus';

  @override
  String get missionReflect => 'Günü düşün';

  @override
  String get missionHelp => 'Kiməsə dəstək ol';

  @override
  String get missionBreatheDesc => 'Bir neçə yavaş və dərin nəfəs al.';

  @override
  String get missionWaterDesc => 'Bir stəkan su iç.';

  @override
  String get missionWalkDesc => '10 dəqiqə gəz.';

  @override
  String get missionJournalDesc => 'Günün haqqında bir düşüncə yaz.';

  @override
  String get missionMeditationDesc => '5 dəqiqə meditasiya et.';

  @override
  String get missionFocusDesc => 'Telefonsuz fokuslan.';

  @override
  String get missionReflectDesc => 'Günün necə keçdiyini düşün.';

  @override
  String get missionHelpDesc => 'Kiməsə kömək etmək üçün bir şey et.';

  @override
  String get sosTitle => 'SOS Dəstək';

  @override
  String get sosTimer => 'Həvəs taymeri';

  @override
  String get sosBreathe => 'Nəfəs';

  @override
  String get sosChat => 'Söhbət';

  @override
  String get sosStart => 'Başla';

  @override
  String get sosDone => 'Hazır';

  @override
  String get sosManaged => 'Həvəsi idarə etdin!';

  @override
  String get sosWon => 'Qalib gəldin!';

  @override
  String get sosLeft => 'qalıb';

  @override
  String get sosTip1 => 'Bir neçə yavaş dərin nəfəs al.';

  @override
  String get sosTip2 => 'Bir stəkan su iç.';

  @override
  String get sosTip3 => 'Başqa yerə keç.';

  @override
  String get sosTip4 => 'Əllərini məşğul et.';

  @override
  String get sosTip5 => 'Niyə başladığını xatırla.';

  @override
  String get sosTip6 => 'Həvəsin keçməsi üçün bir neçə dəqiqə ver.';

  @override
  String get breatheIn => 'Nəfəs al';

  @override
  String get breatheHold => 'Saxla';

  @override
  String get breatheOut => 'Nəfəs ver';

  @override
  String get breatheHint => 'Dairəyə əməl et və yavaş nəfəs al.';

  @override
  String get breatheStart => 'Nəfəsə başla';

  @override
  String get chatPick => 'İndi nə hiss edirsən?';

  @override
  String get chatCraving => 'Həvəsim var';

  @override
  String get chatStress => 'Stressdəyəm';

  @override
  String get chatBoredom => 'Canım darıxır';

  @override
  String get chatNeedWalk => 'Gəzmək istəyirəm';

  @override
  String get chatNeedWater => 'Su istəyirəm';

  @override
  String get chatNeedBreathe => 'Nəfəs almaq istəyirəm';

  @override
  String get chatIntroStress =>
      'Stress hiss etdiyin görünür. Gəl bu anı birlikdə keçək.';

  @override
  String get chatIntroBoredom =>
      'Darıxmaq həvəsi gücləndirə bilər. Gəl başqa şeyə fokuslanaq.';

  @override
  String get chatIntroCraving =>
      'Həvəs güclü ola bilər, amma keçəcək. Gəl addım-addım gedək.';

  @override
  String get chatReplyStress =>
      'Bir neçə yavaş nəfəs al və özünə qısa fasilə ver. Həvəsə tabe olmaq məcburi deyil.';

  @override
  String get chatReplyBoredom =>
      'Mühiti dəyişək. Qısa gəzinti et, su iç və ya əllərini məşğul et.';

  @override
  String get chatReplyCraving =>
      'Qərar verməzdən əvvəl bir neçə dəqiqə gözlə. Su iç, yavaş nəfəs al və niyə başladığını xatırla.';

  @override
  String get onboardingTitle1 => 'Azad nəfəs al';

  @override
  String get onboardingDesc1 =>
      'Puffree siqareti tərk etməyə addım-addım kömək edir — təzyiqsiz və dəstəklə.';

  @override
  String get onboardingTitle2 => 'Səviyyələr və inkişaf';

  @override
  String get onboardingDesc2 =>
      'Hər siqaretsiz gün yeni səviyyə açır. Gücün və sağlamlığın artdığını gör.';

  @override
  String get onboardingTitle3 => 'Gündəlik dəstək';

  @override
  String get onboardingDesc3 =>
      'Motivasiya, tapşırıqlar və inkişaf izləməsi. Bu yolda tək deyilsən.';

  @override
  String get aboutYou => 'Bir az sənin haqqında';

  @override
  String get aboutYouDesc =>
      'Bu, qənaət edilən pul və siqaretləri hesablamağa kömək edir';

  @override
  String get cigsPerDay => 'Əvvəl gündə siqaret sayı';

  @override
  String get pricePerPack => 'Paket qiyməti';

  @override
  String get startJourney => 'Yola başla';

  @override
  String get next => 'Növbəti';

  @override
  String get skip => 'Keç';

  @override
  String get youGotThis => 'Sən bacararsan. Bir an bir dəfə.';

  @override
  String get waitTheWave => 'Həvəs dalğasını keç';

  @override
  String get youPassedThis => 'Bu anı keçdin';

  @override
  String get greatJob => 'Əla iş. Vəziyyəti sən idarə edirsən.';

  @override
  String get giveYourselfMinutes =>
      'Özünə bir neçə dəqiqə ver və indiki ana fokuslan.';

  @override
  String get keepGoing => 'DAVAM ET';

  @override
  String get done => 'HAZIR';

  @override
  String get breatheSlowly => 'Yavaş nəfəs al';

  @override
  String get followTheCircle => 'Dairənin ritminə əməl et';

  @override
  String get chooseWhatFits => 'İndi hiss etdiyinə uyğun olanı seç.';

  @override
  String get yourResults => 'Nəticələrin';

  @override
  String get whatChanged => 'Sənin sayəndə artıq dəyişənlər';

  @override
  String get recoveryPath => 'Bərpa yolu';

  @override
  String get everyMilestone => 'Hər mərhələ irəli atılan daha bir addımdır';

  @override
  String get levelProgress => 'Növbəti səviyyəyə irəliləyiş';

  @override
  String get yourPathContinues => 'Yolun davam edir';

  @override
  String get daysWordOne => 'gün';

  @override
  String get daysWordFew => 'gün';

  @override
  String get daysWordMany => 'gün';

  @override
  String get momentum => 'İMPULS';

  @override
  String missionsLeft(int count) {
    return '$count tapşırıq qalıb';
  }

  @override
  String get allMissionsDone => 'Bütün tapşırıqlar tamamlandı';

  @override
  String get dayComplete => 'Gün tamamlandı';

  @override
  String get keepGoingShort => 'Davam et';

  @override
  String get inProgress => 'DAVAM EDİR';

  @override
  String get complete => 'TAMAMLANDI';

  @override
  String get yourPlanToday => 'Bu günün planı';

  @override
  String get everythingDone => 'Hər şey tamamlandı';

  @override
  String get theme => 'Tema';

  @override
  String get language => 'Dil';

  @override
  String get notifications => 'Bildirişlər';

  @override
  String get notificationsHint => 'Xatırlatmalar və motivasiya';

  @override
  String get data => 'Məlumatlar';

  @override
  String get aboutApp => 'Tətbiq haqqında';

  @override
  String get appTheme => 'Tətbiq teması';

  @override
  String get chooseTheme => 'Puffree-nin necə görünəcəyini seç.';

  @override
  String get systemTheme => 'Sistem';

  @override
  String get systemThemeDesc => 'Telefon ayarlarına əməl et';

  @override
  String get lightTheme => 'İşıqlı';

  @override
  String get lightThemeDesc => 'Həmişə işıqlı tema';

  @override
  String get darkTheme => 'Qaranlıq';

  @override
  String get darkThemeDesc => 'Həmişə qaranlıq tema';

  @override
  String get premiumActive => 'Premium aktivdir';

  @override
  String get trialActive => 'Sınaq müddəti aktivdir';

  @override
  String get fullAccess => 'Bütün funksiyalara tam giriş';

  @override
  String get openPremium => 'Premium və abunəlik seçimlərini aç';

  @override
  String get resetProgressTitle => 'İnkişafı sıfırlamaq istəyirsən?';

  @override
  String get resetProgressBody =>
      'Bütün günlər, seriya və statistika silinəcək. Bu əməliyyat geri qaytarıla bilməz.';

  @override
  String get excellent => 'Əla!';

  @override
  String get anotherDayFree => 'Daha bir gün siqaretsiz';

  @override
  String get continueBtn => 'Davam et';

  @override
  String get newAchievement => 'YENİ UĞUR';

  @override
  String get newLevel => 'Yeni səviyyə!';

  @override
  String get levelUpMessage => 'Davam et — sən əla gedirsən!';

  @override
  String get freeFor => 'ARTIQ AZADSAN';

  @override
  String get toNextLevel => 'Növbəti səviyyəyə';

  @override
  String get keyResults => 'ƏSAS NƏTİCƏLƏR';

  @override
  String get progressSystem => 'İNKIŞAF SİSTEMİ';

  @override
  String get everyDayCloser => 'Hər gün növbəti səviyyəyə yaxınlaşdırır';

  @override
  String get current => 'İndi';

  @override
  String get nextLevel => 'Növbəti';

  @override
  String get smallSteps => 'Kiçik addımlar. Böyük dəyişikliklər.';

  @override
  String get youAreFurther => 'Sən artıq dünəndən irəlidəsən';

  @override
  String get madeForFuture => 'Siqaretsiz gələcək üçün yaradılıb';

  @override
  String get dayStreakCaption => 'gün ardıcıl';

  @override
  String get cigarettesAvoidedCaption => 'çəkilməyib';

  @override
  String get freeDaysCaption => 'azadlıq günü';

  @override
  String get levelLabel => 'Səviyyə';

  @override
  String get keepStreakAlive => 'Seriyanı davam etdir';

  @override
  String get failedToLoadProgress => 'İnkişafı yükləmək mümkün olmadı';

  @override
  String get levelTitle1 => 'İlk Nəfəs';

  @override
  String get levelTitle2 => 'Cücərti';

  @override
  String get levelTitle3 => 'Böyümə';

  @override
  String get levelTitle4 => 'Köklər';

  @override
  String get levelTitle5 => 'Gövda';

  @override
  String get levelTitle6 => 'Güc';

  @override
  String get levelTitle7 => 'Atəş';

  @override
  String get levelTitle8 => 'Qığılcım';

  @override
  String get levelTitle9 => 'Çempion';

  @override
  String get levelTitle10 => 'Usta';

  @override
  String get levelTitle11 => 'Almaz';

  @override
  String get levelTitle12 => 'Ulduz';

  @override
  String get levelTitle13 => 'Raket';

  @override
  String get levelTitle14 => 'Əfsanə';

  @override
  String get levelTitleDefault => 'Yol';

  @override
  String get milestone1Title => 'Yeni yolun başlanğıcı';

  @override
  String get milestone1Desc =>
      'Artıq ilk addımı atmısınız və irəliləməyə davam edirsiniz.';

  @override
  String get milestone2Title => 'İlk dəyişikliklər';

  @override
  String get milestone2Desc =>
      'Orqanizm tədricən siqaretsiz həyata uyğunlaşır.';

  @override
  String get milestone3Title => 'Yeni mərhələ';

  @override
  String get milestone3Desc =>
      'Vərdiş olmadan tədricən yeni bir ritm formalaşır.';

  @override
  String get milestone4Title => 'Əmin tərəqqi';

  @override
  String get milestone4Desc =>
      'İki həftə yeni bir vərdiş yolunda nəzərəçarpacaq bir mərhələdir.';

  @override
  String get milestone5Title => 'Böyük vərdiş dəyişir';

  @override
  String get milestone5Desc =>
      'Bir aylıq ardıcıllıq ciddi bir şəxsi nəticədir.';

  @override
  String get milestone6Title => 'Böyük mərhələ';

  @override
  String get milestone6Desc =>
      'Yolu davam etdirmək yeni həyat tərzini möhkəmləndirməyə kömək edir.';

  @override
  String get milestone7Title => 'Azadlıq ili';

  @override
  String get milestone7Desc =>
      'Siqaretsiz bir il yolunuzda böyük bir mərhələdir.';

  @override
  String get navProgress => 'İrəliləyiş';

  @override
  String get more => 'Daha çox';

  @override
  String get settingsSubtitle => 'Puffree-ni özünə uyğunlaşdır';

  @override
  String get sectionApp => 'Tətbiq';

  @override
  String get sectionData => 'Məlumatlar';

  @override
  String get sectionAbout => 'Haqqında';

  @override
  String get resetProgressSubtitle => 'Yolu yenidən başla';

  @override
  String get premiumActiveBadge => 'ACTIVE';

  @override
  String get splashCaption => 'Siqaretdən azadlıq';

  @override
  String get todayStartJourney => 'Bu gün yeni səyahətinizin başlanğıcıdır.';

  @override
  String realResultKeepGoing(int count, String daysWord) {
    return '$count $daysWord artıq real nəticədir. Davam edin.';
  }

  @override
  String get notificationMorningTitle1 => 'Sabahın xeyir ☀️';

  @override
  String notificationMorningBody1(int day) {
    return '$day-ci gün siqaretsiz. Tempini qorumağa davam et.';
  }

  @override
  String get notificationMorningTitle2 => 'Siqaretsiz yeni gün';

  @override
  String get notificationMorningBody2 =>
      'Bu gün bütün yolu düşünməyə ehtiyac yoxdur. Sadəcə bu günü yaşa.';

  @override
  String get notificationMorningTitle3 => 'Davam et';

  @override
  String get notificationMorningBody3 =>
      'Bu gün verdiyin kiçik qərarlar siqaretsiz gələcəyini yaradır.';

  @override
  String get notificationMorningTitle4 => 'Yolun davam edir';

  @override
  String get notificationMorningBody4 =>
      'Siqaretsiz hər gün özünü seçdiyin daha bir gündür.';

  @override
  String get notificationMorningTitle5 => 'Sən bacararsan';

  @override
  String get notificationMorningBody5 =>
      'Bu gün addım-addım irəlilə. Bir anı bir dəfə yaşa.';

  @override
  String get notificationCheckInTitle1 => 'Günün necə keçdi?';

  @override
  String get notificationCheckInBody1 =>
      'Bir dəqiqə ayır və bugünkü inkişafını qeyd et.';

  @override
  String get notificationCheckInTitle2 => 'Puffree check-in';

  @override
  String get notificationCheckInBody2 =>
      'Bu gün siqaret çəkmədin? İnkişafını qeyd et.';

  @override
  String get notificationCheckInTitle3 => 'Daha bir gün';

  @override
  String get notificationCheckInBody3 => 'Sənin yolun günbəgün qurulur.';

  @override
  String get notificationCheckInTitle4 => 'Seriyanı qoruyub saxla';

  @override
  String get notificationCheckInBody4 => 'Puffree-ni aç və bu günü qeyd et.';

  @override
  String get notificationEveningTitle1 => 'Özünü necə hiss edirsən? 🌙';

  @override
  String get notificationEveningBody1 =>
      'Bir az dayan və öz vəziyyətinə diqqət yetir.';

  @override
  String get notificationEveningTitle2 => 'Axşam check-in';

  @override
  String get notificationEveningBody2 =>
      'Bu gün necə keçdi? Gündəliyin səni gözləyir.';

  @override
  String get notificationEveningTitle3 => 'Gün bitməmiş';

  @override
  String get notificationEveningBody3 =>
      'Bir an dayan və nə qədər irəlilədiyini hiss et.';

  @override
  String get notificationEveningTitle4 => 'Özün üçün bir an';

  @override
  String get notificationEveningBody4 =>
      'Nəfəs al, düşün və günü sakit şəkildə tamamla.';

  @override
  String get notificationMilestone1Title => 'İlk günün 🌱';

  @override
  String get notificationMilestone1Body =>
      'Siqaretsiz bir gün artıq real bir addımdır.';

  @override
  String get notificationMilestone3Title => 'Üç gün 🔥';

  @override
  String get notificationMilestone3Body =>
      'Üç gündür siqaretsizsən. Artıq ilk güclü ritmini yaradırsan.';

  @override
  String get notificationMilestone7Title => 'Tam bir həftə! 🏆';

  @override
  String get notificationMilestone7Body =>
      'Yeddi gün siqaretsiz. Bu artıq ciddi bir mərhələdir.';

  @override
  String get notificationMilestone14Title => 'İki həftə 💪';

  @override
  String get notificationMilestone14Body =>
      'On dörd gün siqaretsiz. Yeni ritmini qurmağa davam et.';

  @override
  String get notificationMilestone21Title => 'Üç həftə 🧠';

  @override
  String get notificationMilestone21Body =>
      '21 gün geridə qaldı. Yolun davam edir.';

  @override
  String get notificationMilestone30Title => 'Tam bir ay! 👑';

  @override
  String get notificationMilestone30Body =>
      '30 gün siqaretsiz. Nə qədər irəlilədiyinə bax.';

  @override
  String get notificationMilestone60Title => 'İki ay 🚀';

  @override
  String get notificationMilestone60Body =>
      '60 gün siqaretsiz. Ardıcıllıq artıq sənin gücünə çevrilir.';

  @override
  String get notificationMilestone90Title => '90 gün 💎';

  @override
  String get notificationMilestone90Body =>
      'Üç ay siqaretsiz. Bu, yolunda böyük bir mərhələdir.';

  @override
  String get notificationMilestone180Title => 'Yarım il! ✨';

  @override
  String get notificationMilestone180Body =>
      '180 gün siqaretsiz. Böyük bir irəliləyiş yaratmısan.';

  @override
  String get notificationMilestone365Title => 'Bir il! 🏆';

  @override
  String get notificationMilestone365Body =>
      '365 gün siqaretsiz. Yeni yolunun tam bir ili.';

  @override
  String get notificationMilestoneGenericTitle => 'Daha bir mərhələ';

  @override
  String notificationMilestoneGenericBody(int days) {
    return '$days gün siqaretsiz. İrəliləməyə davam et.';
  }

  @override
  String get notificationRelapseTitle1 => 'Problem yoxdur';

  @override
  String get notificationRelapseBody1 =>
      'Bir çətin an indiyə qədər qurduqlarını silmir.';

  @override
  String get notificationRelapseTitle2 => 'Davam et';

  @override
  String get notificationRelapseBody2 =>
      'Geriləmə bir andır, yolun sonu deyil.';

  @override
  String get notificationRelapseTitle3 => 'Yoluna qayıt';

  @override
  String get notificationRelapseBody3 =>
      'Nəfəs al, bu andan dərs çıxar və davam et.';

  @override
  String get notificationInactive1Title => 'Bu gün səni görmədik 👋';

  @override
  String get notificationInactive1Body =>
      'Hazır olanda Puffree-ni aç və inkişafını qeyd et.';

  @override
  String get notificationInactive2Title => 'Yolun hələ də davam edir';

  @override
  String get notificationInactive2Body =>
      'Bir neçə sakit gün indiyə qədər qazandığın inkişafı silmir.';

  @override
  String get notificationInactive3Title => 'Hazır olanda geri qayıt';

  @override
  String get notificationInactive3Body =>
      'Mükəmməl olmağa ehtiyac yoxdur. Sadəcə növbəti addımı at.';
}
