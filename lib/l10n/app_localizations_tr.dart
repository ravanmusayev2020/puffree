// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appName => 'Puffree';

  @override
  String get tagline => 'Sigaradan özgürlük';

  @override
  String get today => 'Bugün';

  @override
  String get streak => 'Seri';

  @override
  String get saved => 'Tasarruf';

  @override
  String get avoided => 'Kaçınılan';

  @override
  String get totalDays => 'Toplam gün';

  @override
  String get dailyMotivation => 'Günün motivasyonu';

  @override
  String get checkIn => 'Bugün sigara içmedim';

  @override
  String get checkedInToday => 'Bugün kayıt yapıldı';

  @override
  String get missions => 'Günün görevleri';

  @override
  String completedOf(int completed, int total) {
    return '$completed / $total tamamlandı';
  }

  @override
  String get premium => 'Premium';

  @override
  String get tryFree => '3 gün ücretsiz dene';

  @override
  String get buyPremium => 'Premium satın al';

  @override
  String get restore => 'Satın almaları geri yükle';

  @override
  String get premiumHint => 'Premium ile tüm özellikleri aç';

  @override
  String get settings => 'Ayarlar';

  @override
  String get progress => 'İlerlemen';

  @override
  String get statistics => 'İstatistikler';

  @override
  String get currentStreak => 'Mevcut seri';

  @override
  String get record => 'Rekor';

  @override
  String get bodyChanges => 'Vücudunda neler oluyor';

  @override
  String get resetProgress => 'İlerlemeyi sıfırla';

  @override
  String get resetConfirm =>
      'Günler, seri ve istatistiklerle ilgili tüm veriler silinecek. Bu işlem geri alınamaz.';

  @override
  String get cancel => 'İptal';

  @override
  String get reset => 'Sıfırla';

  @override
  String get journalTitle => 'Günlük';

  @override
  String get journalHint => 'Düşüncelerini yaz';

  @override
  String get journalPlaceholder => 'Bugün nasıl hissediyorsun?';

  @override
  String get save => 'Kaydet';

  @override
  String get moodCheck => 'Nasıl hissediyorsun?';

  @override
  String get moodCheckHint => 'Kendini kontrol etmek için bir an ayır.';

  @override
  String get version => 'Sürüm';

  @override
  String get privacy => 'Gizlilik politikası';

  @override
  String get terms => 'Kullanım koşulları';

  @override
  String get disclaimer =>
      'Puffree bir motivasyon uygulamasıdır. Tıbbi bir cihaz değildir ve profesyonel tıbbi tavsiyenin yerini almaz. Güçlü nikotin bağımlılığın varsa bir uzmana danış.';

  @override
  String level(int number) {
    return 'Seviye $number';
  }

  @override
  String daysSmokeFree(int count) {
    return '$count gün sigarasız';
  }

  @override
  String nextLevelProgress(int percent) {
    return 'Sonraki seviyeye %$percent';
  }

  @override
  String get friend => 'Arkadaş';

  @override
  String helloName(String name) {
    return 'Merhaba, $name!';
  }

  @override
  String get pathToFreedom => 'Özgürlüğe giden yolun';

  @override
  String get withoutCigs => 'sigarasız';

  @override
  String get iSmoked => 'Sigara içtim';

  @override
  String get relapseTitle => 'Sorun değil';

  @override
  String get relapseBody =>
      'Bir sigara ilerlemeni silmez. Bu andan ders çıkar ve ilerlemeye devam et.';

  @override
  String get relapseDone => 'Devam et';

  @override
  String get home => 'Ana sayfa';

  @override
  String get tasks => 'Görevler';

  @override
  String get missionBreathe => 'Derin nefes';

  @override
  String get missionWater => 'Su iç';

  @override
  String get missionWalk => '10 dk yürü';

  @override
  String get missionJournal => 'Düşünce yaz';

  @override
  String get missionMeditation => '5 dk meditasyon';

  @override
  String get missionFocus => 'Telefonsuz odak';

  @override
  String get missionReflect => 'Günü düşün';

  @override
  String get missionHelp => 'Birine destek ol';

  @override
  String get missionBreatheDesc => 'Birkaç yavaş ve derin nefes al.';

  @override
  String get missionWaterDesc => 'Bir bardak su iç.';

  @override
  String get missionWalkDesc => '10 dakika yürü.';

  @override
  String get missionJournalDesc => 'Günün hakkında bir düşünce yaz.';

  @override
  String get missionMeditationDesc => '5 dakika meditasyon yap.';

  @override
  String get missionFocusDesc => 'Telefonsuz odaklanarak zaman geçir.';

  @override
  String get missionReflectDesc => 'Gününün nasıl geçtiğini düşün.';

  @override
  String get missionHelpDesc => 'Birine destek olmak için nazik bir şey yap.';

  @override
  String get sosTitle => 'SOS Destek';

  @override
  String get sosTimer => 'İstek zamanlayıcısı';

  @override
  String get sosBreathe => 'Nefes';

  @override
  String get sosChat => 'Konuş';

  @override
  String get sosStart => 'Başla';

  @override
  String get sosDone => 'Tamam';

  @override
  String get sosManaged => 'İsteği yönettin!';

  @override
  String get sosWon => 'Kazandın!';

  @override
  String get sosLeft => 'kaldı';

  @override
  String get sosTip1 => 'Birkaç yavaş ve derin nefes al.';

  @override
  String get sosTip2 => 'Bir bardak su iç.';

  @override
  String get sosTip3 => 'Başka bir yere geç.';

  @override
  String get sosTip4 => 'Ellerini meşgul et.';

  @override
  String get sosTip5 => 'Neden başladığını düşün.';

  @override
  String get sosTip6 => 'İsteğin geçmesi için birkaç dakika ver.';

  @override
  String get breatheIn => 'Nefes al';

  @override
  String get breatheHold => 'Tut';

  @override
  String get breatheOut => 'Nefes ver';

  @override
  String get breatheHint => 'Daireyi takip et ve yavaş nefes al.';

  @override
  String get breatheStart => 'Nefese başla';

  @override
  String get chatPick => 'Şu an ne hissediyorsun?';

  @override
  String get chatCraving => 'İsteğim var';

  @override
  String get chatStress => 'Stresliyim';

  @override
  String get chatBoredom => 'Sıkıldım';

  @override
  String get chatNeedWalk => 'Yürümeye ihtiyacım var';

  @override
  String get chatNeedWater => 'Suya ihtiyacım var';

  @override
  String get chatNeedBreathe => 'Nefese ihtiyacım var';

  @override
  String get chatIntroStress =>
      'Stres hissediyor gibi görünüyorsun. Bu anı birlikte aşalım.';

  @override
  String get chatIntroBoredom =>
      'Sıkıntı isteği güçlendirebilir. Başka bir şeye odaklanalım.';

  @override
  String get chatIntroCraving =>
      'İstek yoğun olabilir ama geçecek. An an gidelim.';

  @override
  String get chatReplyStress =>
      'Birkaç yavaş nefes al ve kendine kısa bir mola ver. İsteğe uymak zorunda değilsin.';

  @override
  String get chatReplyBoredom =>
      'Ortamı değiştirelim. Kısa bir yürüyüş yap, su iç veya ellerini meşgul et.';

  @override
  String get chatReplyCraving =>
      'Karar vermeden önce birkaç dakika bekle. Su iç, yavaş nefes al ve neden başladığını hatırla.';

  @override
  String get onboardingTitle1 => 'Özgürce nefes al';

  @override
  String get onboardingDesc1 =>
      'Puffree, baskı olmadan ve destekle adım adım sigarayı bırakmana yardımcı olur.';

  @override
  String get onboardingTitle2 => 'Seviyeler ve ilerleme';

  @override
  String get onboardingDesc2 =>
      'Sigarasız her gün yeni bir seviye açar. Gücünün ve sağlığının büyüdüğünü izle.';

  @override
  String get onboardingTitle3 => 'Günlük destek';

  @override
  String get onboardingDesc3 =>
      'Motivasyon, görevler ve ilerleme takibi. Bu yolda yalnız değilsin.';

  @override
  String get aboutYou => 'Senin hakkında biraz';

  @override
  String get aboutYouDesc =>
      'Bu, tasarruf edilen para ve sigara sayısını hesaplamaya yardımcı olur';

  @override
  String get cigsPerDay => 'Önceki günlük sigara sayısı';

  @override
  String get pricePerPack => 'Paket fiyatı';

  @override
  String get startJourney => 'Yolculuğa başla';

  @override
  String get next => 'İleri';

  @override
  String get skip => 'Atla';

  @override
  String get youGotThis => 'Başarabilirsin. Bir an bir kez.';

  @override
  String get waitTheWave => 'İstek dalgasını geç';

  @override
  String get youPassedThis => 'Bu anı geçtin';

  @override
  String get greatJob => 'Harika iş. Durumu sen kontrol ediyorsun.';

  @override
  String get giveYourselfMinutes =>
      'Kendine birkaç dakika ver ve şu ana odaklan.';

  @override
  String get keepGoing => 'DEVAM ET';

  @override
  String get done => 'TAMAM';

  @override
  String get breatheSlowly => 'Yavaş nefes al';

  @override
  String get followTheCircle => 'Dairenin ritmini takip et';

  @override
  String get chooseWhatFits => 'Şu anki haline en yakın olanı seç.';

  @override
  String get yourResults => 'Sonuçların';

  @override
  String get whatChanged => 'Senin sayende zaten değişenler';

  @override
  String get recoveryPath => 'İyileşme yolu';

  @override
  String get everyMilestone => 'Her kilometre taşı bir adım daha ileri';

  @override
  String get levelProgress => 'Sonraki seviyeye ilerleme';

  @override
  String get yourPathContinues => 'Yolun devam ediyor';

  @override
  String get daysWordOne => 'gün';

  @override
  String get daysWordFew => 'gün';

  @override
  String get daysWordMany => 'gün';

  @override
  String get momentum => 'İVME';

  @override
  String missionsLeft(int count) {
    return '$count görev kaldı';
  }

  @override
  String get allMissionsDone => 'Tüm görevler tamamlandı';

  @override
  String get dayComplete => 'Gün tamamlandı';

  @override
  String get keepGoingShort => 'Devam et';

  @override
  String get inProgress => 'DEVAM EDİYOR';

  @override
  String get complete => 'TAMAMLANDI';

  @override
  String get yourPlanToday => 'Bugünün planı';

  @override
  String get everythingDone => 'Her şey tamamlandı';

  @override
  String get theme => 'Tema';

  @override
  String get language => 'Dil';

  @override
  String get notifications => 'Bildirimler';

  @override
  String get notificationsHint => 'Hatırlatmalar ve motivasyon';

  @override
  String get data => 'Veriler';

  @override
  String get aboutApp => 'Uygulama hakkında';

  @override
  String get appTheme => 'Uygulama teması';

  @override
  String get chooseTheme => 'Puffree\'nin nasıl görüneceğini seç.';

  @override
  String get systemTheme => 'Sistem';

  @override
  String get systemThemeDesc => 'Telefon ayarlarını takip et';

  @override
  String get lightTheme => 'Açık';

  @override
  String get lightThemeDesc => 'Her zaman açık tema kullan';

  @override
  String get darkTheme => 'Koyu';

  @override
  String get darkThemeDesc => 'Her zaman koyu tema kullan';

  @override
  String get premiumActive => 'Premium aktif';

  @override
  String get trialActive => 'Deneme süresi aktif';

  @override
  String get fullAccess => 'Tüm özelliklere tam erişim';

  @override
  String get openPremium => 'Premium ve abonelik seçeneklerini aç';

  @override
  String get resetProgressTitle => 'İlerlemeyi sıfırlamak istiyor musun?';

  @override
  String get resetProgressBody =>
      'Günler, seri ve istatistiklerle ilgili tüm veriler silinecek. Bu işlem geri alınamaz.';

  @override
  String get excellent => 'Harika!';

  @override
  String get anotherDayFree => 'Bir gün daha sigarasız';

  @override
  String get continueBtn => 'Devam et';

  @override
  String get newAchievement => 'YENİ BAŞARI';

  @override
  String get newLevel => 'Yeni seviye!';

  @override
  String get levelUpMessage => 'Devam et — harika gidiyorsun!';

  @override
  String get freeFor => 'ÖZGÜR';

  @override
  String get toNextLevel => 'Sonraki seviyeye';

  @override
  String get keyResults => 'TEMEL SONUÇLAR';

  @override
  String get progressSystem => 'İLERLEME SİSTEMİ';

  @override
  String get everyDayCloser => 'Her gün seni sonraki seviyeye yaklaştırır';

  @override
  String get current => 'Şu an';

  @override
  String get nextLevel => 'Sonraki';

  @override
  String get smallSteps => 'Küçük adımlar. Büyük değişiklikler.';

  @override
  String get youAreFurther => 'Zaten dünden daha ileridesin';

  @override
  String get madeForFuture => 'Sigarasız bir gelecek için yapıldı';

  @override
  String get dayStreakCaption => 'gün üst üste';

  @override
  String get cigarettesAvoidedCaption => 'içilmeyen';

  @override
  String get freeDaysCaption => 'özgür gün';

  @override
  String get levelLabel => 'Seviye';

  @override
  String get keepStreakAlive => 'Serini bozma';

  @override
  String get failedToLoadProgress => 'İlerleme yüklenemedi';

  @override
  String get levelTitle1 => 'İlk Nefes';

  @override
  String get levelTitle2 => 'Filiz';

  @override
  String get levelTitle3 => 'Büyüme';

  @override
  String get levelTitle4 => 'Kökler';

  @override
  String get levelTitle5 => 'Gövde';

  @override
  String get levelTitle6 => 'Güç';

  @override
  String get levelTitle7 => 'Ateş';

  @override
  String get levelTitle8 => 'Kıvılcım';

  @override
  String get levelTitle9 => 'Şampiyon';

  @override
  String get levelTitle10 => 'Usta';

  @override
  String get levelTitle11 => 'Elmas';

  @override
  String get levelTitle12 => 'Yıldız';

  @override
  String get levelTitle13 => 'Roket';

  @override
  String get levelTitle14 => 'Efsane';

  @override
  String get levelTitleDefault => 'Yol';

  @override
  String get milestone1Title => 'Yeni bir yolun başlangıcı';

  @override
  String get milestone1Desc =>
      'Zaten ilk adımı attın ve ilerlemeye devam ediyorsun.';

  @override
  String get milestone2Title => 'İlk değişiklikler';

  @override
  String get milestone2Desc =>
      'Vücut yavaş yavaş sigarasız yaşama uyum sağlıyor.';

  @override
  String get milestone3Title => 'Yeni aşama';

  @override
  String get milestone3Desc =>
      'Alışkanlık olmadan yavaş yavaş yeni bir ritim oluşuyor.';

  @override
  String get milestone4Title => 'Kendinden emin ilerleme';

  @override
  String get milestone4Desc =>
      'İki hafta, yeni bir alışkanlığa giden yolda dikkat çekici bir dönüm noktasıdır.';

  @override
  String get milestone5Title => 'Büyük alışkanlık değişiyor';

  @override
  String get milestone5Desc =>
      'Bir aylık tutarlılık ciddi bir kişisel sonuçtur.';

  @override
  String get milestone6Title => 'Büyük dönüm noktası';

  @override
  String get milestone6Desc =>
      'Yola devam etmek yeni bir yaşam tarzının pekişmesine yardımcı olur.';

  @override
  String get milestone7Title => 'Özgürlük yılı';

  @override
  String get milestone7Desc =>
      'Sigarasız bir yıl, yolundaki büyük bir dönüm noktasıdır.';

  @override
  String get navProgress => 'İlerleme';

  @override
  String get more => 'Daha fazla';

  @override
  String get settingsSubtitle => 'Puffree\'yi kendine göre ayarla';

  @override
  String get sectionApp => 'Uygulama';

  @override
  String get sectionData => 'Veriler';

  @override
  String get sectionAbout => 'Hakkında';

  @override
  String get resetProgressSubtitle => 'Yolculuğu yeniden başlat';

  @override
  String get premiumActiveBadge => 'AKTİF';

  @override
  String get splashCaption => 'Sigaradan özgürlük';

  @override
  String get todayStartJourney => 'Bugün yeni yolculuğunun başlangıcı.';

  @override
  String realResultKeepGoing(int count, String daysWord) {
    return '$count $daysWord zaten gerçek bir sonuç. Devam et.';
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
  String get onbTitle1 => 'Ne kullanıyorsun?';

  @override
  String get onbSubtitle1 => 'Her şeyi alışkanlığına göre kişiselleştireceğiz.';

  @override
  String get onbTitle2 => 'Ne kadar kullanıyorsun?';

  @override
  String get onbSubtitle2 =>
      'Dürüst rakamlar gerçek ilerlemeni hesaplamamıza yardımcı olur.';

  @override
  String get onbTitle3 => 'Bu sana ne kadara mal oluyor?';

  @override
  String get onbSubtitle3 => 'Her ay ne kadar para tasarruf edebileceğini gör.';

  @override
  String get onbTitle4 => 'Bedenin nasıl hissediyor?';

  @override
  String get onbSubtitle4 => 'En sık fark ettiğin belirtileri seç.';

  @override
  String get onbTitle5 => 'Neden bırakmak istiyorsun?';

  @override
  String get onbSubtitle5 =>
      'Sebeplerin senin için oluşturduğumuz plana güç verecek.';

  @override
  String get onbTitle6 => 'Planın oluşturuluyor';

  @override
  String get onbSubtitle6 =>
      'Sadece senin için kişiselleştirilmiş bir yol oluşturuyoruz.';

  @override
  String get onbTitle7 => 'Planın hazır';

  @override
  String get onbSubtitle7 => 'Senin için yapılmış planla yolculuğuna başla.';

  @override
  String get onbEyebrowBeforeStart => 'BAŞLAMADAN ÖNCE';

  @override
  String get onbEyebrowStartingPoint => 'BAŞLANGIÇ NOKTASI';

  @override
  String get onbEyebrowRealCost => 'GERÇEK MALİYET';

  @override
  String get onbEyebrowSelfAwareness => 'ÖZ FARKINDALIK';

  @override
  String get onbEyebrowYourReason => 'SEBEBİN';

  @override
  String get onbEyebrowPersonalization => 'KİŞİSELLEŞTİRME';

  @override
  String get onbEyebrowDone => 'HAZIRSIN';

  @override
  String get onbHabitCigarettesTitle => 'Sigara';

  @override
  String get onbHabitCigarettesSubtitle => 'Normal veya sarılan sigaralar';

  @override
  String get onbHabitVapeTitle => 'Vape / Pod';

  @override
  String get onbHabitVapeSubtitle => 'Elektronik sigara ve pod sistemleri';

  @override
  String get onbPodsPerWeekLabel => 'Haftada pod sayısı';

  @override
  String get onbCigarettesPerDayLabel => 'Günde sigara sayısı';

  @override
  String get onbYearsSmokedLabel => 'Sigara içilen yıllar';

  @override
  String get onbUnitPieces => 'adet';

  @override
  String get onbUnitYears => 'yıl';

  @override
  String get onbAmountVapeHint =>
      'Bu, haftalık maliyetini ve ilerlemeni tahmin etmemize yardımcı olur.';

  @override
  String get onbPotentialSavingsLabel => 'Potansiyel aylık tasarruf';

  @override
  String get onbPerMonthQuitting => 'bıraktığında aylık';

  @override
  String get onbPricePerPodLabel => 'Pod başına fiyat';

  @override
  String get onbPricePerPackLabel => 'Paket başına fiyat';

  @override
  String get onbCigarettesPerPackLabel => 'Paket başına sigara sayısı';

  @override
  String get onbCurrencyLabel => 'Para birimi';

  @override
  String get onbSymptomBreath => 'Nefes darlığı';

  @override
  String get onbSymptomAnxiety => 'Kaygı / huzursuzluk';

  @override
  String get onbSymptomPulse => 'Hızlı veya düzensiz kalp atışı';

  @override
  String get onbSymptomMorning => 'Sabah öksürüğü / balgam';

  @override
  String get onbSymptomCough => 'Sık öksürük';

  @override
  String get onbBodyHint =>
      'Birden fazla seçebilirsin. Bu, senin için önemli olana odaklanmamıza yardımcı olur.';

  @override
  String get onbMotivationHealth => 'Daha iyi sağlık ve enerji';

  @override
  String get onbMotivationFreedom => 'Bağımlılıktan özgürlük';

  @override
  String get onbMotivationMoney => 'Para biriktirmek';

  @override
  String get onbMotivationFamily => 'Ailem / çocuklarım için';

  @override
  String get onbMotivationControl => 'Hayatımın kontrolünü yeniden kazanmak';

  @override
  String get onbMotivationFuture => 'Daha sağlıklı bir gelecek';

  @override
  String get onbSelectMultipleHint => 'Birden fazla neden seçebilirsin';

  @override
  String get onbStartingMapLabel => 'Haritan oluşturuluyor';

  @override
  String get onbBuildingStepSave => 'Tasarrufların hesaplanıyor';

  @override
  String get onbBuildingStepGoal => 'Ana hedefin belirleniyor';

  @override
  String get onbBuildingStepScenarios => 'Kişisel senaryolar oluşturuluyor';

  @override
  String get onbBuildingStepSteps => 'İlk adımlar hazırlanıyor';

  @override
  String get onbBuildingHint => 'Bu genellikle sadece birkaç saniye sürer.';

  @override
  String get onbPleaseWait => 'Lütfen bir süre bekle…';

  @override
  String get onbCreatingPlan => 'Planın oluşturuluyor…';

  @override
  String get onbFirst30DaysLabel => 'İlk 30 gün';

  @override
  String get onbLessExpensesLabel => 'Daha az harcama';

  @override
  String get onbSavingsPerMonth => 'Aylık tasarruf';

  @override
  String get onbSavingsPerYear => 'Yıllık tasarruf';

  @override
  String get onbPlanPersonalizedTitle => 'Kişiselleştirilmiş planın';

  @override
  String onbPlanPersonalizedSubtitle(int motivations, int symptoms) {
    return '$motivations neden ve $symptoms belirtiye dayalı';
  }

  @override
  String get onbResultHint =>
      'Bu rakamları daha sonra ayarlardan her zaman değiştirebilirsin.';

  @override
  String get onbBreathingHint => 'NEFES AL';

  @override
  String get onbContinue => 'Devam et';

  @override
  String get onbStartJourney => 'Yolculuğuma başla';

  @override
  String get onboardingHabitTitle => 'Kontrolü geri almaya hazır mısın?';

  @override
  String get onboardingHabitSubtitle =>
      'Önce alışkanlığını anlayalım. Uzun formlar yok — birkaç net cevap, Puffree yolunu oluşturur.';

  @override
  String get onboardingAmountTitle => 'Tipik bir gününü anlat';

  @override
  String get onboardingAmountSubtitle =>
      'Seni yargılamak için değil. İlerlemeyi ölçeceğimiz başlangıç noktası.';

  @override
  String get onboardingMoneyTitle => 'Alışkanlık senden ne kadar alıyor?';

  @override
  String get onboardingMoneySubtitle =>
      'Fiyat ekranda hemen değişir — soyut bir rakam değil, alışkanlığın gerçek maliyetini görürsün.';

  @override
  String get onboardingBodyTitle => 'Kendinde ne fark ediyorsun?';

  @override
  String get onboardingBodySubtitle =>
      'Sana uyanları işaretle. Birden fazla seçebilir veya hiç seçmeyebilirsin.';

  @override
  String get onboardingMotivationTitle => 'Bunu ne için yapıyorsun?';

  @override
  String get onboardingMotivationSubtitle =>
      'Bu senin kişisel dayanağın olacak. Puffree seni gerektiğinde bu nedene geri getirecek.';

  @override
  String get onboardingBuildingTitle => 'Yolunu oluşturuyoruz';

  @override
  String get onboardingBuildingSubtitle =>
      'Tıbbi teşhis değil ve mükemmel bir gün vaadi değil. Sadece başlangıç noktan ve net sonraki adımlar.';

  @override
  String get onboardingResultTitle => 'İlk ilerleme ekranın zaten burada';

  @override
  String get onboardingResultSubtitle =>
      'Başlangıç verilerini cihazda kaydediyoruz ve ölçülebilir ilerlemeye dönüştürüyoruz.';

  @override
  String get onboardingEyebrowBeforeStart => 'BAŞLAMADAN ÖNCE';

  @override
  String get onboardingEyebrowStartPoint => 'BAŞLANGIÇ NOKTAN';

  @override
  String get onboardingEyebrowRealCost => 'GERÇEK MALİYET';

  @override
  String get onboardingEyebrowSelfFeeling => 'NASIL HİSSEDİYORSUN';

  @override
  String get onboardingEyebrowYourReason => 'NEDENİN';

  @override
  String get onboardingEyebrowPersonalization => 'KİŞİSELLEŞTİRME';

  @override
  String get onboardingEyebrowDone => 'TAMAM';

  @override
  String get onboardingCigarettesChoice => 'Sigara içiyorum';

  @override
  String get onboardingCigarettesChoiceSubtitle => 'Puffree’nin ana senaryosu';

  @override
  String get onboardingVapeChoice => 'Elektronik sigara kullanıyorum';

  @override
  String get onboardingVapeChoiceSubtitle => 'Bu seçimi profiline kaydedeceğiz';

  @override
  String get onboardingPodsPerWeek => 'Haftada pod / tek kullanımlık';

  @override
  String get onboardingUnitPcs => 'adet';

  @override
  String get onboardingVapeHint =>
      'Sonra Puffree profili sigara ve vape senaryolarını geçmişi kaybetmeden ayırabilir.';

  @override
  String get onboardingCigarettesPerDay => 'Günde sigara';

  @override
  String get onboardingYearsSmoked => 'Kaç yıldır devam ediyor';

  @override
  String get onboardingUnitYears => 'yıl';

  @override
  String get onboardingPricePerPod => 'Bir podun fiyatı';

  @override
  String get onboardingPricePerPack => 'Paket fiyatı';

  @override
  String get onboardingCigarettesPerPack => 'Paketteki sigara';

  @override
  String get onboardingPotentialSavings => 'Potansiyel tasarruf';

  @override
  String get onboardingPerMonthIfQuit => 'alışkanlığı bırakırsan aylık';

  @override
  String get onboardingCurrency => 'Para birimi';

  @override
  String get onboardingSymptomBreath => 'Nefesimin ağırlaştığını hissediyorum';

  @override
  String get onboardingSymptomAnxiety => 'Bazen güçlü kaygı hissediyorum';

  @override
  String get onboardingSymptomPulse => 'Nabzımın hızlandığını fark ediyorum';

  @override
  String get onboardingSymptomMorning =>
      'Sabah ilk sigaraya özellikle çekiliyorum';

  @override
  String get onboardingSymptomCough => 'Sabah öksürüğüm var';

  @override
  String get onboardingBodyHint =>
      'Bu bir öz-tanımlama, teşhis değil. Belirtiler endişelendiriyorsa doktorla konuşmak daha iyi.';

  @override
  String get onboardingMotivationHealth =>
      'Sağlığıma daha iyi bakmak istiyorum';

  @override
  String get onboardingMotivationFreedom => 'Daha özgür hissetmek istiyorum';

  @override
  String get onboardingMotivationMoney =>
      'Buna para harcamayı bırakmak istiyorum';

  @override
  String get onboardingMotivationFamily =>
      'Sevdiklerimin yanında alışkanlığa daha az bağımlı olmak istiyorum';

  @override
  String get onboardingMotivationControl =>
      'Kontrol hissini geri kazanmak istiyorum';

  @override
  String get onboardingMotivationFuture =>
      'Geleceğim için bunu yapmak istiyorum';

  @override
  String get onboardingCanSelectSeveral => 'Birden fazla seçebilirsin';

  @override
  String get onboardingYourStartCard => 'başlangıç kartın';

  @override
  String get onboardingStepSaveAnswers => 'Cevapların kaydediliyor';

  @override
  String get onboardingStepFinancialGoal => 'Finansal hedef hesaplanıyor';

  @override
  String get onboardingStepCravingScenarios =>
      'İstek senaryoları oluşturuluyor';

  @override
  String get onboardingStepFirstSteps => 'İlk adımlar hazırlanıyor';

  @override
  String get onboardingBuildingHint =>
      'Kasten «X saatte akciğer yenilenmesi» vaat etmiyoruz — Puffree ölçülebilir şeyleri gösterir ve gerçeği motivasyondan ayırır.';

  @override
  String get onboardingSavingsPerMonth => 'tasarruf / ay';

  @override
  String get onboardingSavingsPerYear => 'tasarruf / yıl';

  @override
  String get onboardingResultHint =>
      'Bu rakamlar cevaplarına dayalı bir hesaplamadır, sonuç vaadi değil. Gerçek ilerleme davranışına bağlıdır.';

  @override
  String get onboardingFirst30Days => 'İlk 30 gün';

  @override
  String get onboardingLessSpendMoreControl =>
      'daha az harcama → daha fazla kontrol';

  @override
  String get onboardingPlanPersonalized => 'Plan kişiselleştirildi';

  @override
  String onboardingMotivationsCount(int count) {
    return '$count kişisel motivasyon';
  }

  @override
  String onboardingSymptomsCount(int count) {
    return '$count işaretli durum';
  }

  @override
  String get onboardingTakeFirstStep => 'ilk adımı at';

  @override
  String get onboardingPleaseWait => 'Lütfen birkaç saniye bekle…';

  @override
  String get onboardingCreatingPlan => 'Plan oluşturuluyor…';

  @override
  String get onboardingStartMyJourney => 'Yolculuğumu başlat';

  @override
  String get onboardingContinue => 'Devam';

  @override
  String get premiumTitle => 'Puffree Premium';

  @override
  String get premiumSubtitle =>
      'Yolculuğunuz için daha fazla araç.\nSize uygun planı seçin.';

  @override
  String get oneMembership => 'Her şey için tek Premium erişim';

  @override
  String get everythingIncluded => 'Her şey dahil';

  @override
  String get everythingIncludedSubtitle =>
      'Premium, Puffree\'nin tam deneyimini açar.';

  @override
  String get choosePlan => 'Planınızı seçin';

  @override
  String get choosePlanSubtitle =>
      'Satın almadan önce seçiminizi değiştirebilirsiniz.';

  @override
  String get featureTasks => 'Genişletilmiş görevler';

  @override
  String get featureTasksSubtitle => 'Daha fazla pratik ve meydan okuma';

  @override
  String get featureStats => 'Tam istatistikler';

  @override
  String get featureStatsSubtitle => 'Detaylı ilerleme bilgileri';

  @override
  String get profileEditTitle => 'Profil';

  @override
  String get profileEditTapToChangePhoto =>
      'Değiştirmek için fotoğrafa dokunun';

  @override
  String get profileEditNameLabel => 'Ad';

  @override
  String get profileEditNameHint => 'Adınızı girin';

  @override
  String get profileEditSaveButton => 'Değişiklikleri kaydet';

  @override
  String get profileEditErrorEmptyName => 'Lütfen bir ad girin';

  @override
  String get profileEditSuccessUpdated => 'Profil başarıyla güncellendi';

  @override
  String profileEditErrorUpdate(String error) {
    return 'Profil güncellenemedi: $error';
  }

  @override
  String get authWelcomeBack => 'Tekrar hoş geldiniz!';

  @override
  String get authCreateAccount => 'Hesap oluştur';

  @override
  String get authResetPassword => 'Şifreyi sıfırla';

  @override
  String get authLoginSubtitle => 'Yolculuğunuza devam etmek için giriş yapın';

  @override
  String get authRegisterSubtitle => 'Bugün dumansız bir hayata başlayın';

  @override
  String get authForgotSubtitle =>
      'E-postanızı girin, talimatları göndereceğiz';

  @override
  String get authTabLogin => 'Giriş';

  @override
  String get authTabRegister => 'Kayıt ol';

  @override
  String get authNameHint => 'Adınız';

  @override
  String get authNameRequired => 'Adınızı girin';

  @override
  String get authEmailHint => 'E-posta adresi';

  @override
  String get authEmailRequired => 'E-posta girin';

  @override
  String get authEmailInvalid => 'Geçersiz e-posta';

  @override
  String get authPasswordHint => 'Şifre';

  @override
  String get authPasswordRequired => 'Şifre girin';

  @override
  String get authPasswordMinLength => 'Şifre en az 6 karakter olmalıdır';

  @override
  String get authConfirmPasswordHint => 'Şifreyi tekrar girin';

  @override
  String get authPasswordsDoNotMatch => 'Şifreler eşleşmiyor';

  @override
  String get authForgotPassword => 'Şifrenizi mi unuttunuz?';

  @override
  String get authLoginButton => 'Giriş yap';

  @override
  String get authRegisterButton => 'Kayıt ol';

  @override
  String get authSendLinkButton => 'Bağlantı gönder';

  @override
  String get authBackToLogin => 'Girişe dön';

  @override
  String get authOrContinueWith => 'veya şununla devam et';

  @override
  String get authGoogle => 'Google';

  @override
  String get authApple => 'Apple';

  @override
  String get authResetLinkSent =>
      'Şifre sıfırlama bağlantısı e-postanıza gönderildi!';

  @override
  String get authErrorGeneric =>
      'Bir hata oluştu. Lütfen bilgileri kontrol edin.';

  @override
  String get authErrorSocial => 'Sosyal giriş başarısız.';

  @override
  String get profileEditErrorPhotoNotFound => 'Seçilen fotoğraf alınamadı';

  @override
  String get profileEditErrorOpenGallery => 'Galeri açılamadı';

  @override
  String get profileEditErrorPickPhoto => 'Fotoğraf seçilirken bir hata oluştu';

  @override
  String get featureMotivation => 'Kişisel motivasyon';

  @override
  String get featureMotivationSubtitle => 'Yolculuğunuz için rehberlik';

  @override
  String get featureSupport => 'Ekstra destek araçları';

  @override
  String get featureSupportSubtitle => 'İhtiyaç duyduğunuzda daha fazla yardım';

  @override
  String get featureNotifications => 'Akıllı hatırlatmalar';

  @override
  String get featureNotificationsSubtitle => 'Doğru zamanda motivasyon';

  @override
  String get featureAds => 'Reklamsız';

  @override
  String get featureAdsSubtitle => 'Sakin ve temiz bir deneyim';

  @override
  String get planMonthly => 'Aylık';

  @override
  String get planMonthlySubtitle => 'Uzun taahhüt olmadan esnek';

  @override
  String get planYearly => 'Yıllık';

  @override
  String get planYearlySubtitle => 'Fiyat ve özelliklerin en iyi dengesi';

  @override
  String get planLifetime => 'Ömür boyu';

  @override
  String get planLifetimeSubtitle => 'Tek ödeme — Premium sonsuza kadar';

  @override
  String get perMonth => '/ ay';

  @override
  String get perYear => '/ yıl';

  @override
  String get bestValue => 'EN İYİ DEĞER';

  @override
  String get oneTime => 'TEK SEFERLİK';

  @override
  String get buyMonthly => 'Aylık Premium al';

  @override
  String get buyYearly => 'Yıllık Premium al';

  @override
  String get buyLifetime => 'Ömür boyu Premium al';

  @override
  String get restorePurchases => 'Satın almaları geri yükle';

  @override
  String get securePurchase => 'Güvenli satın alma';

  @override
  String get cancelAnytime => 'İstediğiniz zaman iptal edin';

  @override
  String get restoreAnytime => 'Satın almalar geri yüklenebilir';

  @override
  String get legalMonthly =>
      'Abonelik her ay otomatik olarak yenilenir. App Store veya Google Play ayarlarından iptal edebilirsiniz. Fiyat, satın alma onayı öncesinde gösterilir.';

  @override
  String get legalYearly =>
      'Abonelik her yıl otomatik olarak yenilenir. App Store veya Google Play ayarlarından iptal edebilirsiniz. Fiyat, satın alma onayı öncesinde gösterilir.';

  @override
  String get legalLifetime =>
      'Bu tek seferlik bir satın almadır ve otomatik olarak yenilenmez. Fiyat, satın alma onayı öncesinde gösterilir.';
}
