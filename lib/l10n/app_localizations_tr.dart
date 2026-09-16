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
}
