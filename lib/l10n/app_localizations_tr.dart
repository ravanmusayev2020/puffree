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
  String get profileYourProfile => 'Profiliniz';

  @override
  String get profileEdit => 'Profili düzenle';

  @override
  String get switchAccountTitle => 'Başka bir hesaba giriş yapılsın mı?';

  @override
  String get switchAccountBody =>
      'Giriş sayfası açılacak, başka bir hesaba giriş yapabilirsiniz.';

  @override
  String get switchAccountButton => 'Başka hesaba giriş yap';

  @override
  String get switchAccountSubtitle => 'Giriş sayfasını aç';

  @override
  String get continueAction => 'Devam et';

  @override
  String get logoutTitle => 'Çıkış yapılsın mı?';

  @override
  String get logoutBody =>
      'Hesabınızdan çıkış yapmak istediğinize emin misiniz?';

  @override
  String get logoutButton => 'Çıkış yap';

  @override
  String get premiumBrand => 'Puffree Premium';

  @override
  String get motStartJourney =>
      'Bugün yeni yolculuğun başlıyor. Bir adım bile önemlidir.';

  @override
  String get motMilestone1 => 'İlk gün. İlk büyük adımı attın. Devam et.';

  @override
  String get motMilestone3 => 'Üç gün. Kutlamaya değer. Yolunda ilerliyorsun.';

  @override
  String get motMilestone7 =>
      'Tam bir hafta. Kendin için verdiğin kararlarla dolu yedi gün.';

  @override
  String get motMilestone10 =>
      '10 gün. Şimdiden ciddi bir özgüven biriktirdin.';

  @override
  String get motMilestone14 =>
      'İki hafta. Yolun önemli bir kısmını geçtin. Daha da güçleneceksin.';

  @override
  String get motMilestone21 =>
      '21 gün. Alışkanlıklarını değiştirebildiğini görüyorsun.';

  @override
  String get motMilestone30 =>
      '30 gün. Yeni kararlarla dolu koca bir ay. Bu harika bir sonuç.';

  @override
  String get motMilestone45 =>
      '45 gün. Bir buçuk ay — ve ilerlemeye devam ediyorsun.';

  @override
  String get motMilestone60 => '60 gün. İki aylık istikrar. Güçlü bir başarı.';

  @override
  String get motMilestone90 => '90 gün. Üç ay. Bak ne kadar yol katettin.';

  @override
  String get motMilestone120 =>
      '120 gün. Her gün kendi yolunu seçmeye devam ediyorsun.';

  @override
  String get motMilestone180 =>
      'Altı ay. 180 günlük istikrar. Bu gerçekten muazzam.';

  @override
  String get motMilestone270 =>
      '270 gün. Eski alışkanlığınla arana dev bir mesafe koydun.';

  @override
  String get motMilestone365 =>
      'Bir yıl. Yolculuğunun 365 günü. Bu bir tesadüf değil — bu istikrar.';

  @override
  String get motFirstWeek1 => 'Bugün sadece bir sonraki adımı atman yeterli.';

  @override
  String get motFirstWeek2 =>
      'Bütün yolu bugün tamamlamak zorunda değilsin. Sadece devam et.';

  @override
  String get motFirstWeek3 => 'Her gün ayrı bir zaferdir. Bugün seninki.';

  @override
  String get motFirstWeek4 => 'Zor bir an, ilerlemeni yok etmez.';

  @override
  String get motFirstWeek5 =>
      'Zaten başladın. Şimdi kendine devam etme şansı ver.';

  @override
  String get motFirstWeek6 =>
      'Günden güne. Büyük değişimler işte böyle inşa edilir.';

  @override
  String get motFirstWeek7 => 'Defalarca kendini seçiyorsun. Bu çok değerli.';

  @override
  String get motSecondWeek1 =>
      'Artık başladığın yerde değilsin. İlerlemeye devam et.';

  @override
  String get motSecondWeek2 =>
      'İki hafta sandığından daha yakın. Ritmini koru.';

  @override
  String get motSecondWeek3 =>
      'İlerlemen, aldığın küçük kararlarla şekillenir.';

  @override
  String get motSecondWeek4 =>
      'Mükemmel günü arama. Bir sonraki güzel günü kendin yarat.';

  @override
  String get motSecondWeek5 =>
      'Kriz anını atlatıp planına geri dönecek güce sahipsin.';

  @override
  String get motSecondWeek6 => 'Her yeni gün özgüvenini artıran bir tuğladır.';

  @override
  String get motSecondWeek7 => 'Zor anlara dayanabileceğini zaten kanıtladın.';

  @override
  String get motFirstMonth1 => 'Adım adım yeni bir alışkanlık inşa ediyorsun.';

  @override
  String get motFirstMonth2 => 'Geçmişin, bugünkü seçimini belirlemez.';

  @override
  String get motFirstMonth3 => 'Otuz gün tek bir kararla başlar: devam etmek.';

  @override
  String get motFirstMonth4 =>
      'Özgüven bir günde değil, tutarlı günler sayesinde büyür.';

  @override
  String get motFirstMonth5 => 'Her yeni gün hikayene bir sayfa daha ekler.';

  @override
  String get motFirstMonth6 => 'İlerlemen sana ait. Kimse onu senden alamaz.';

  @override
  String get motFirstMonth7 =>
      'Kendinle gurur duymak için şimdiden yeterince yol aldın.';

  @override
  String get motFirstMonth8 =>
      'Sakin kal ve devam et. Büyük değişimler aceleye gelmez.';

  @override
  String get motSecondMonth1 => 'İki ay artık bir tesadüf değildir.';

  @override
  String get motSecondMonth2 => 'Niyeti istikrara dönüştürüyorsun.';

  @override
  String get motSecondMonth3 => 'Gücün, her gün aldığın kararlarda saklı.';

  @override
  String get motSecondMonth4 =>
      'Zor anların üstesinden gelebileceğini artık biliyorsun.';

  @override
  String get motSecondMonth5 =>
      'Yaşamak istediğin hayatı inşa etmeye devam et.';

  @override
  String get motSecondMonth6 =>
      'Eski alışkanlığa dönmeden geçen her gün ileriye doğru bir adımdır.';

  @override
  String get motSecondMonth7 =>
      'Kimseyle yarışmıyorsun. Bu yol sadece sana ait.';

  @override
  String get motSecondMonth8 =>
      'Geriye bak ve kendini ilk günle karşılaştır. İlerleme ortada.';

  @override
  String get motThirdMonth1 =>
      'Üç ay ciddi bir mesafedir. Ve sen hala ilerliyorsun.';

  @override
  String get motThirdMonth2 =>
      'Kendin için yeni bir başlangıç noktası yarattın.';

  @override
  String get motThirdMonth3 =>
      'İstikrar motivasyondan daha güçlüdür. Bunu kanıtlıyorsun.';

  @override
  String get motThirdMonth4 =>
      'Senin için gerçekten önemli olanı seçmeye devam ediyorsun.';

  @override
  String get motThirdMonth5 =>
      'Her geçen gün eski alışkanlığın etkisi azalıyor.';

  @override
  String get motThirdMonth6 =>
      'Artık doğru anı beklemiyorsun. Onu sen yaratıyorsun.';

  @override
  String get motThirdMonth7 => '90 gün, birçok küçük zaferin hikayesidir.';

  @override
  String get motThirdMonth8 => 'Çok yol katettin. Ulaştığın noktada durma.';

  @override
  String get motLongTerm1 => 'Başlangıç noktasından çok uzaktasın. Devam et.';

  @override
  String get motLongTerm2 =>
      'Özgürlük bir seçimle başlar ve günlük kararlarla büyür.';

  @override
  String get motLongTerm3 => 'Sonucun, pes etmediğin tüm günlerin toplamıdır.';

  @override
  String get motLongTerm4 =>
      'Bir zamanlar imkansız gördüğün bir mesafe yarattın.';

  @override
  String get motLongTerm5 => 'Neden başladığını unutma.';

  @override
  String get motLongTerm6 => 'Her yeni gün hikayeni daha da güçlendirir.';

  @override
  String get motLongTerm7 => 'Geriye dönmüyorsun. İleriye doğru gidiyorsun.';

  @override
  String get motLongTerm8 =>
      'Bir zamanlar zor görünen şey, bugün yolculuğunun bir parçası oldu.';

  @override
  String get motLongTerm9 =>
      'Kendine en önemli şeyi kanıtladın: değişim mümkün.';

  @override
  String get motLongTerm10 => 'Yeni ritminle yaşamaya devam et.';

  @override
  String get motLevelDefault => 'Yeni seviye. İlerlemeye devam ediyorsun.';

  @override
  String get motLevel1 => 'Yolculuk başladı. En önemlisi ilk adımı atmaktır.';

  @override
  String get motLevel2 => 'Tohum filizlendi. İlerlemeni her gün koru.';

  @override
  String get motLevel3 =>
      'Büyüyorsun. Küçük kararlar büyük değişimler yaratır.';

  @override
  String get motLevel4 =>
      'Köklerin güçleniyor. Temelini sağlamlaştırmaya devam et.';

  @override
  String get motLevel5 => 'Daha özgüvenli oluyorsun. Temponu düşürme.';

  @override
  String get motLevel6 => 'Güç, zorluklara rağmen devam ettiğin yerde doğar.';

  @override
  String get motLevel7 => 'Kararlılığın hikayenin bir parçası haline geliyor.';

  @override
  String get motLevel8 => 'Kıvılcım kararlı bir harekete dönüştü.';

  @override
  String get motLevel9 => 'Ciddi bir yol katettin. Başarını takdir et.';

  @override
  String get motLevel10 => 'Onuncu seviye. İstikrarın gücünü artık biliyorsun.';

  @override
  String get motLevel11 => 'Yol zorlaşsa bile büyümeye devam ediyorsun.';

  @override
  String get motLevel12 => 'Kendine örnek oldun. Devam et.';

  @override
  String get motLevel13 => 'Büyük bir ivme yakaladın. Şimdi yönünü koru.';

  @override
  String get motLevel14 => 'Efsanevi seviye. Bak ne kadar çok şey başardın.';

  @override
  String get motShort1 => 'Bugün bir adım daha.';

  @override
  String get motShort2 => 'Yoluna devam et.';

  @override
  String get motShort3 => 'Harika gidiyorsun.';

  @override
  String get motShort4 => 'İlerlemen değerli.';

  @override
  String get motShort5 => 'Zor bir an yüzünden pes etme.';

  @override
  String get motShort6 => 'Eski alışkanlığından daha güçlüsün.';

  @override
  String get motShort7 => 'Sonraki adımı seç.';

  @override
  String get motShort8 => 'Zaten başladın. Devam et.';

  @override
  String get motShort9 => 'Bugünkü seçimin önemli.';

  @override
  String get motShort10 => 'Günden güne.';

  @override
  String get motShort11 => 'Düşündüğünden daha fazlasını yapabilirsin.';

  @override
  String get motShort12 => 'Senin yolculuğun sana ait.';

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

  @override
  String get legalContactEmail => 'support@puffreeapp.com';

  @override
  String get privacyPolicyTitle => 'Gizlilik Politikası';

  @override
  String get privacyPolicyLastUpdated => 'Son güncelleme: Ocak 2026';

  @override
  String get privacyPolicyIntro =>
      'Puffree (\"biz\", \"bizim\", \"uygulama\"), sigarayı bırakma yolculuğunuzu takip etmenize ve motivasyonunuzu korumanıza yardımcı olur. Bu politika, hangi bilgileri topladığımızı, bunları nasıl kullandığımızı ve sahip olduğunuz seçenekleri açıklar.';

  @override
  String get privacySection1Title => 'Topladığımız Bilgiler';

  @override
  String get privacySection1Body =>
      'Giriş yaptığınızda sağladığınız hesap bilgileri (e-posta adresi, görünen ad ve profil fotoğrafı) veya uygulamayı hesap olmadan kullanıyorsanız anonim bir kimlik belirleyici toplarız. Ayrıca bırakma tarihiniz, günlük sigara sayınız, paket başına maliyet ve kaydettiğiniz sigara içme isteği gibi kendi girdiğiniz sigarasızlık verilerini de saklarız.';

  @override
  String get privacySection2Title => 'Bilgilerinizi Nasıl Kullanıyoruz';

  @override
  String get privacySection2Body =>
      'Sigara içmeden geçirdiğiniz süreyi, sağlık dönüm noktalarınızı ve tasarruf ettiğiniz parayı hesaplamak; ilerlemenizi cihazlar arasında senkronize etmek; isteğe bağlı motivasyon hatırlatıcıları ve bildirimleri göndermek; Premium abonelik satın alımlarını işlemek; çökmeleri tespit etmek ve uygulamayı geliştirmek için bilgilerinizi kullanırız.';

  @override
  String get privacySection3Title => 'Veri Saklama ve Güvenlik';

  @override
  String get privacySection3Body =>
      'Verileriniz Firebase (Google Cloud) kullanılarak saklanır ve aktarım sırasında şifrelenir. Makul teknik ve organizasyonel güvenlik önlemleri uygularız, ancak internet üzerinden hiçbir veri saklama veya aktarım yöntemi tamamen güvenli değildir.';

  @override
  String get privacySection4Title => 'Üçüncü Taraf Hizmetleri';

  @override
  String get privacySection4Body =>
      'Hesapları yönetmek ve verileri senkronize etmek için Firebase Authentication ve Cloud Firestore\'u, Premium abonelik ödemelerini işlemek için ise Apple App Store veya Google Play ödeme sistemlerini kullanırız. Kişisel bilgilerinizi üçüncü taraflara satmayız.';

  @override
  String get privacySection5Title => 'Seçimleriniz ve Haklarınız';

  @override
  String get privacySection5Body =>
      'Profilinizi istediğiniz zaman görüntüleyebilir veya düzenleyebilir, Ayarlar üzerinden yerel ilerlemenizi sıfırlayabilir, cihaz ayarlarınızdan anlık bildirimleri devre dışı bırakabilir ve bizimle iletişime geçerek verilerinize erişim, verilerinizin düzeltilmesi veya silinmesi talebinde bulunabilirsiniz.';

  @override
  String get privacySection6Title => 'Çocukların Gizliliği';

  @override
  String get privacySection6Body =>
      'Puffree, 13 yaşın altındaki çocuklara (AB\'de 16 yaşın altındaki çocuklara) yönelik değildir ve bu kişilerden bilerek kişisel bilgi toplamayız. Bir çocuğun bize veri sağladığını düşünüyorsanız, verileri silebilmemiz için lütfen bizimle iletişime geçin.';

  @override
  String get privacySection7Title => 'Sağlık Sorumluluk Reddi';

  @override
  String get privacySection7Body =>
      'Puffree, sigarasız yaşam yolculuğunuzu desteklemek için tasarlanmış bir alışkanlık takip aracıdır. Tıbbi bir cihaz değildir ve tıbbi tavsiye, teşhis veya tedavi sağlamaz. Sigarayı bırakma konusunda her zaman nitelikli bir sağlık uzmanına danışın.';

  @override
  String get privacySection8Title => 'Değişiklikler ve İletişim';

  @override
  String get privacySection8Body =>
      'Bu politikayı zaman zaman güncelleyebiliriz; önemli değişiklikler uygulama içinde duyurulacaktır. Bu politika veya verileriniz hakkında sorularınız varsa aşağıdaki iletişim bilgilerini kullanarak bizimle iletişime geçebilirsiniz.';

  @override
  String get termsOfUseTitle => 'Kullanım Koşulları';

  @override
  String get termsOfUseLastUpdated => 'Son güncelleme: Ocak 2026';

  @override
  String get termsOfUseIntro =>
      'Bu Kullanım Koşulları, Puffree\'ye erişiminizi ve uygulamayı kullanımınızı düzenler. Bir hesap oluşturarak veya uygulamayı kullanarak bu koşulları kabul etmiş olursunuz. Kabul etmiyorsanız lütfen uygulamayı kullanmayın.';

  @override
  String get termsSection1Title => 'Koşulların Kabulü';

  @override
  String get termsSection1Body =>
      'Puffree\'yi indirerek, yükleyerek veya kullanarak bu Kullanım Koşullarını ve Gizlilik Politikamızı kabul ettiğinizi ve bu sözleşmeyi yapmaya yasal olarak ehil olduğunuzu onaylamış olursunuz.';

  @override
  String get termsSection2Title => 'Hizmet Açıklaması';

  @override
  String get termsSection2Body =>
      'Puffree, sigarayı bıraktıktan sonraki ilerlemenizi takip etmenize yardımcı olan bir alışkanlık takip ve motivasyon uygulamasıdır. Sigara içmeden geçen süre, sağlık dönüm noktaları, tasarruf edilen para ve sigara içme isteği kayıtları gibi bilgileri takip edebilirsiniz. Uygulama kişisel bir sağlık ve iyi yaşam aracıdır; tıbbi veya klinik bir hizmet değildir.';

  @override
  String get termsSection3Title => 'Uygunluk ve Hesaplar';

  @override
  String get termsSection3Body =>
      'Puffree\'yi kullanabilmek için en az 13 yaşında (veya ülkenizde dijital onay için belirlenen minimum yaşta) olmanız gerekir. Hesabınızın gizliliğini korumaktan ve hesabınız üzerinden gerçekleştirilen tüm faaliyetlerden siz sorumlusunuz.';

  @override
  String get termsSection4Title => 'Premium Abonelikler ve Faturalandırma';

  @override
  String get termsSection4Body =>
      'Premium özellikler, Apple App Store veya Google Play üzerinden ücretlendirilen otomatik yenilenen abonelik olarak sunulur. Abonelikler, mevcut dönemin bitiminden en az 24 saat önce iptal edilmediği sürece otomatik olarak yenilenir. Geri ödemeler ilgili mağazanın politikasına göre gerçekleştirilir.';

  @override
  String get termsSection5Title => 'Sağlık ve Tıbbi Sorumluluk Reddi';

  @override
  String get termsSection5Body =>
      'Puffree tıbbi tavsiye sağlamaz ve profesyonel sağlık hizmetinin yerine geçmez. Sigarayı bırakmak yoksunluk belirtilerine neden olabilir; sağlığınızla ilgili kararlar vermeden önce bir doktora veya lisanslı bir sağlık uzmanına danışın.';

  @override
  String get termsSection6Title => 'Kabul Edilebilir Kullanım';

  @override
  String get termsSection6Body =>
      'Uygulamayı kötüye kullanmamayı, uygulamayı tersine mühendislik yoluyla incelemeye veya hizmetlerini kesintiye uğratmaya çalışmamayı, yasa dışı veya zararlı içerik yüklememeyi ve uygulamayı yürürlükteki yasalara veya başkalarının haklarına aykırı herhangi bir şekilde kullanmamayı kabul edersiniz.';

  @override
  String get termsSection7Title =>
      'Sorumluluk Reddi ve Sorumluluğun Sınırlandırılması';

  @override
  String get termsSection7Body =>
      'Puffree, herhangi bir garanti verilmeksizin \"olduğu gibi\" sunulmaktadır. Yasaların izin verdiği azami ölçüde, uygulamanın kullanımından kaynaklanan dolaylı, arızi veya sonuç olarak ortaya çıkan zararlardan sorumlu değiliz.';

  @override
  String get termsSection8Title => 'Koşullardaki Değişiklikler ve İletişim';

  @override
  String get termsSection8Body =>
      'Bu Koşulları zaman zaman güncelleyebiliriz; değişiklikler yürürlüğe girdikten sonra uygulamayı kullanmaya devam etmeniz, güncellenmiş Koşulları kabul ettiğiniz anlamına gelir. Sorularınızı aşağıdaki iletişim adresine gönderebilirsiniz.';

  @override
  String get systemThemeLabel => 'Sistem';

  @override
  String get notificationsEnabledLabel => 'Bildirimler etkin';

  @override
  String get notificationsDisabledLabel => 'Bildirimler devre dışı';

  @override
  String get signInToAnotherAccount => 'Başka bir hesaba giriş yap';

  @override
  String get openSignInPage => 'Giriş sayfasını aç';

  @override
  String get securePayment => 'Güvenli ödeme';
}
