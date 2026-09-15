
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/theme/app_theme.dart';
import '../../../data/bloc/progress/progress_bloc.dart';
import '../../../data/bloc/progress/progress_event.dart';
import '../../../data/models/currency_option.dart';
import '../../../l10n/app_localizations.dart';
import '../../widgets/bottom_nav.dart';

class OnboardingScreen extends StatefulWidget {
const OnboardingScreen({super.key});

@override
State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
with TickerProviderStateMixin {
final PageController _pageController = PageController();

int _currentPage = 0;

double _cigarettesPerDay = 10;
double _pricePerPack = 180;
double _cigarettesPerPack = 20;
double _yearsSmoked = 6;

String _selectedCurrencyCode = 'RUB';

late final AnimationController _ambientController;

@override
void initState() {
super.initState();

_ambientController = AnimationController(
vsync: this,
duration: const Duration(seconds: 8),
)..repeat(reverse: true);

final locale =
WidgetsBinding.instance.platformDispatcher.locales.firstOrNull ??
const Locale('ru');

_selectedCurrencyCode = _detectCurrencyForLocale(locale);
}

@override
void dispose() {
_pageController.dispose();
_ambientController.dispose();
super.dispose();
}

String _detectCurrencyForLocale(Locale locale) {
final countryCode = locale.countryCode?.toUpperCase();
final languageCode = locale.languageCode.toLowerCase();

const map = {
'US': 'USD',
'GB': 'GBP',
'DE': 'EUR',
'FR': 'EUR',
'ES': 'EUR',
'IT': 'EUR',
'PT': 'EUR',
'NL': 'EUR',
'BE': 'EUR',
'IE': 'EUR',
'AT': 'EUR',
'CH': 'CHF',
'RU': 'RUB',
'UA': 'UAH',
'KZ': 'KZT',
'BY': 'BYN',
'CN': 'CNY',
'JP': 'JPY',
'KR': 'KRW',
'TR': 'TRY',
'IN': 'INR',
'AE': 'AED',
'SA': 'SAR',
'EG': 'EGP',
'BR': 'BRL',
'AR': 'ARS',
'MX': 'MXN',
'AU': 'AUD',
'CA': 'CAD',
'SE': 'SEK',
'NO': 'NOK',
'DK': 'DKK',
'PL': 'PLN',
'CZ': 'CZK',
'ZA': 'ZAR',
'TH': 'THB',
'VN': 'VND',
'ID': 'IDR',
'MY': 'MYR',
'SG': 'SGD',
'HK': 'HKD',
'NZ': 'NZD',
};

if (countryCode != null && map.containsKey(countryCode)) {
return map[countryCode]!;
}

switch (languageCode) {
case 'ru':
return 'RUB';
case 'en':
return 'USD';
case 'de':
case 'fr':
case 'es':
case 'it':
case 'pt':
return 'EUR';
case 'tr':
return 'TRY';
case 'zh':
return 'CNY';
case 'ja':
return 'JPY';
case 'ko':
return 'KRW';
default:
return 'USD';
}
}

List<_OnboardingPage> get _pages {
final l10n = AppLocalizations.of(context);
final language = Localizations.localeOf(context).languageCode;

final highlights1 = language == 'ru'
? const ['Лёгкость', 'Покой', 'Свобода']
    : const ['Ease', 'Calm', 'Freedom'];

final highlights2 = language == 'ru'
? const ['Достижения', 'Сила', 'Результат']
    : const ['Momentum', 'Strength', 'Results'];

final highlights3 = language == 'ru'
? const ['Поддержка', 'Мотивация', 'Преодоление']
    : const ['Support', 'Motivation', 'Resilience'];

return [
_OnboardingPage(
emoji: '🌬️',
title: l10n.onboardingTitle1,
subtitle: l10n.onboardingDesc1,
highlights: highlights1,
),
_OnboardingPage(
emoji: '📈',
title: l10n.onboardingTitle2,
subtitle: l10n.onboardingDesc2,
highlights: highlights2,
),
_OnboardingPage(
emoji: '💪',
title: l10n.onboardingTitle3,
subtitle: l10n.onboardingDesc3,
highlights: highlights3,
),
];
}

String get _selectedCurrencySymbol =>
CurrencyOption.fromCode(_selectedCurrencyCode).symbol;

double get _monthlySavings {
final costPerCigarette = _pricePerPack / _cigarettesPerPack;
return _cigarettesPerDay * 30 * costPerCigarette;
}

double get _lifetimeSpent {
final costPerCigarette = _pricePerPack / _cigarettesPerPack;
return _cigarettesPerDay * 365 * _yearsSmoked * costPerCigarette;
}

bool get _isSetupPage => _currentPage == _pages.length;

void _next() {
if (_currentPage < _pages.length) {
_pageController.nextPage(
duration: const Duration(milliseconds: 550),
curve: Curves.easeOutCubic,
);
} else {
_startJourney();
}
}

void _previous() {
if (_currentPage > 0) {
_pageController.previousPage(
duration: const Duration(milliseconds: 450),
curve: Curves.easeOutCubic,
);
}
}

void _startJourney() {
context.read<ProgressBloc>().add(
StartQuitJourney(
cigarettesPerDay: _cigarettesPerDay,
pricePerPack: _pricePerPack,
cigarettesPerPack: _cigarettesPerPack.round(),
),
);

Navigator.of(context).pushReplacement(
PageRouteBuilder(
pageBuilder: (_, __, ___) => const MainShell(),
transitionsBuilder: (_, animation, __, child) {
return FadeTransition(
opacity: CurvedAnimation(
parent: animation,
curve: Curves.easeOut,
),
child: child,
);
},
transitionDuration: const Duration(milliseconds: 650),
),
);
}

String _formatPrice(BuildContext context, double value) {
final locale = Localizations.localeOf(context).toString();

final formatter = NumberFormat.currency(
locale: locale,
symbol: _selectedCurrencySymbol,
decimalDigits: 0,
);

return formatter.format(value);
}

String _languageText(String ru, String en) {
return Localizations.localeOf(context).languageCode == 'ru' ? ru : en;
}

void _showCurrencyPicker() {
const currencyOptions = CurrencyOption.supported;

showModalBottomSheet(
context: context,
backgroundColor: Colors.transparent,
isScrollControlled: true,
builder: (sheetContext) {
final isDark = Theme.of(sheetContext).brightness == Brightness.dark;

return BackdropFilter(
filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
child: Container(
constraints: const BoxConstraints(maxHeight: 620),
padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
decoration: BoxDecoration(
color: isDark
? const Color(0xFF0C1517).withValues(alpha: 0.97)
    : Colors.white.withValues(alpha: 0.98),
borderRadius: const BorderRadius.vertical(
top: Radius.circular(34),
),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.08)
    : Colors.black.withValues(alpha: 0.05),
),
),
child: SafeArea(
child: Column(
children: [
Container(
width: 42,
height: 5,
decoration: BoxDecoration(
color: isDark ? Colors.white24 : Colors.black12,
borderRadius: BorderRadius.circular(99),
),
),
const SizedBox(height: 22),
Row(
children: [
Expanded(
child: Text(
_currencyLabelForLocale(),
style: GoogleFonts.inter(
fontSize: 24,
fontWeight: FontWeight.w800,
letterSpacing: -0.7,
color: isDark
? Colors.white
    : AppColors.textPrimaryLight,
),
),
),
IconButton(
onPressed: () => Navigator.pop(sheetContext),
icon: Icon(
Icons.close_rounded,
color: isDark ? Colors.white70 : Colors.black54,
),
),
],
),
const SizedBox(height: 16),
Expanded(
child: GridView.builder(
padding: const EdgeInsets.only(top: 4),
itemCount: currencyOptions.length,
gridDelegate:
const SliverGridDelegateWithFixedCrossAxisCount(
crossAxisCount: 2,
mainAxisSpacing: 12,
crossAxisSpacing: 12,
childAspectRatio: 2.15,
),
itemBuilder: (_, index) {
final item = currencyOptions[index];
final selected =
item.code == _selectedCurrencyCode;

return GestureDetector(
onTap: () {
setState(
() => _selectedCurrencyCode = item.code,
);
Navigator.pop(sheetContext);
},
child: AnimatedContainer(
duration: const Duration(milliseconds: 220),
padding: const EdgeInsets.symmetric(
horizontal: 14,
),
decoration: BoxDecoration(
color: selected
? AppColors.primary.withValues(
alpha: isDark ? 0.20 : 0.10,
)
    : isDark
? Colors.white.withValues(alpha: 0.045)
    : Colors.black.withValues(alpha: 0.025),
borderRadius: BorderRadius.circular(20),
border: Border.all(
width: selected ? 1.4 : 1,
color: selected
? AppColors.primary
    : isDark
? Colors.white.withValues(alpha: 0.06)
    : Colors.black.withValues(alpha: 0.04),
),
),
child: Row(
children: [
Text(
item.flagEmoji,
style: const TextStyle(fontSize: 24),
),
const SizedBox(width: 10),
Expanded(
child: Text(
'${item.code}\n${item.name}',
maxLines: 2,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 11.5,
height: 1.25,
fontWeight: FontWeight.w700,
color: isDark
? Colors.white
    : AppColors.textPrimaryLight,
),
),
),
if (selected)
const Icon(
Icons.check_circle_rounded,
size: 20,
color: AppColors.primary,
),
],
),
),
);
},
),
),
],
),
),
),
);
},
);
}

String _currencyLabelForLocale() {
return _languageText('Валюта', 'Currency');
}

@override
Widget build(BuildContext context) {
final isDark = Theme.of(context).brightness == Brightness.dark;
final l10n = AppLocalizations.of(context);
final pages = _pages;

return Scaffold(
backgroundColor: isDark
? const Color(0xFF061113)
    : const Color(0xFFF4FBF8),
body: AnimatedBuilder(
animation: _ambientController,
builder: (context, _) {
final t = _ambientController.value;

return Stack(
children: [
_buildAmbientBackground(isDark, t),

SafeArea(
child: Column(
children: [
_buildTopBar(
isDark: isDark,
l10n: l10n,
),

Expanded(
child: PageView.builder(
controller: _pageController,
itemCount: pages.length + 1,
physics: const BouncingScrollPhysics(),
onPageChanged: (index) {
setState(() => _currentPage = index);
},
itemBuilder: (context, index) {
if (index < pages.length) {
return _buildInfoPage(
pages[index],
index,
isDark,
);
}

return _buildSetupPage(isDark);
},
),
),

_buildBottomControls(
isDark: isDark,
totalPages: pages.length + 1,
l10n: l10n,
),
],
),
),
],
);
},
),
);
}

Widget _buildAmbientBackground(bool isDark, double animation) {
return Positioned.fill(
child: IgnorePointer(
child: Stack(
children: [
DecoratedBox(
decoration: BoxDecoration(
gradient: LinearGradient(
begin: Alignment.topLeft,
end: Alignment.bottomRight,
colors: isDark
? const [
Color(0xFF061113),
Color(0xFF08191A),
Color(0xFF0A111D),
]
    : const [
Color(0xFFF0FFF9),
Color(0xFFF4F9FF),
Color(0xFFF9FBFC),
],
),
),
child: const SizedBox.expand(),
),

Positioned(
top: -110 + (animation * 20),
right: -80,
child: _glowOrb(
size: 330,
color: AppColors.primary.withValues(
alpha: isDark ? 0.22 : 0.12,
),
),
),

Positioned(
bottom: -130 - (animation * 25),
left: -90,
child: _glowOrb(
size: 340,
color: AppColors.accent.withValues(
alpha: isDark ? 0.16 : 0.08,
),
),
),

Positioned(
top: 260,
left: -70,
child: _glowOrb(
size: 170,
color: const Color(0xFF34D399).withValues(
alpha: isDark ? 0.09 : 0.06,
),
),
),
],
),
),
);
}

Widget _glowOrb({
required double size,
required Color color,
}) {
return ImageFiltered(
imageFilter: ImageFilter.blur(
sigmaX: 35,
sigmaY: 35,
),
child: Container(
width: size,
height: size,
decoration: BoxDecoration(
shape: BoxShape.circle,
color: color,
),
),
);
}

Widget _buildTopBar({
required bool isDark,
required AppLocalizations l10n,
}) {
return Padding(
padding: const EdgeInsets.fromLTRB(20, 14, 20, 4),
child: Row(
children: [
_buildBrand(isDark),
const Spacer(),
if (_currentPage > 0)
_buildHeaderIcon(
icon: Icons.arrow_back_rounded,
isDark: isDark,
onTap: _previous,
),
const SizedBox(width: 8),
_buildSkipButton(
isDark: isDark,
label: l10n.skip,
),
],
),
);
}

Widget _buildBrand(bool isDark) {
return Container(
padding: const EdgeInsets.fromLTRB(10, 9, 15, 9),
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.055)
    : Colors.white.withValues(alpha: 0.78),
borderRadius: BorderRadius.circular(18),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.07)
    : Colors.black.withValues(alpha: 0.035),
),
boxShadow: [
BoxShadow(
color: Colors.black.withValues(
alpha: isDark ? 0.16 : 0.04,
),
blurRadius: 22,
offset: const Offset(0, 10),
),
],
),
child: Row(
mainAxisSize: MainAxisSize.min,
children: [
Container(
width: 30,
height: 30,
decoration: BoxDecoration(
gradient: const LinearGradient(
colors: [
AppColors.primary,
AppColors.primaryLight,
],
),
borderRadius: BorderRadius.circular(10),
),
child: const Icon(
Icons.air_rounded,
size: 18,
color: Colors.white,
),
),
const SizedBox(width: 9),
Text(
'Puffree',
style: GoogleFonts.inter(
fontSize: 15,
fontWeight: FontWeight.w700,
letterSpacing: -0.3,
color: isDark
? Colors.white
    : AppColors.textPrimaryLight,
),
),
],
),
).animate().fadeIn(duration: 400.ms).slideX(begin: -0.08);
}

Widget _buildHeaderIcon({
required IconData icon,
required bool isDark,
required VoidCallback onTap,
}) {
return Material(
color: Colors.transparent,
child: InkWell(
onTap: onTap,
borderRadius: BorderRadius.circular(16),
child: Ink(
width: 44,
height: 44,
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.05)
    : Colors.white.withValues(alpha: 0.78),
borderRadius: BorderRadius.circular(16),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.06)
    : Colors.black.withValues(alpha: 0.035),
),
),
child: Icon(
icon,
size: 20,
color: isDark ? Colors.white : AppColors.textPrimaryLight,
),
),
),
);
}

Widget _buildSkipButton({
required bool isDark,
required String label,
}) {
return Material(
color: Colors.transparent,
child: InkWell(
onTap: _startJourney,
borderRadius: BorderRadius.circular(16),
child: Ink(
height: 44,
padding: const EdgeInsets.symmetric(horizontal: 15),
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.05)
    : Colors.white.withValues(alpha: 0.78),
borderRadius: BorderRadius.circular(16),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.06)
    : Colors.black.withValues(alpha: 0.035),
),
),
child: Center(
child: Text(
label,
style: GoogleFonts.inter(
fontSize: 13,
fontWeight: FontWeight.w700,
color: isDark
? Colors.white70
    : AppColors.textPrimaryLight,
),
),
),
),
),
);
}

Widget _buildInfoPage(
_OnboardingPage page,
int index,
bool isDark,
) {
final step = index + 1;

return Padding(
padding: const EdgeInsets.fromLTRB(20, 18, 20, 10),
child: Center(
child: _glassCard(
isDark: isDark,
radius: 36,
padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Row(
children: [
_stepIndicator(
step: step,
total: 3,
isDark: isDark,
),
const Spacer(),
_softIcon(
Icons.auto_awesome_rounded,
isDark,
),
],
),

const Spacer(),

_buildHeroOrb(
emoji: page.emoji,
isDark: isDark,
),

const SizedBox(height: 30),

Text(
page.title,
textAlign: TextAlign.center,
style: GoogleFonts.inter(
fontSize: 34,
height: 1.04,
fontWeight: FontWeight.w700,
letterSpacing: -1.2,
color: isDark
? Colors.white
    : AppColors.textPrimaryLight,
),
)
    .animate(key: ValueKey('title-$index'))
    .fadeIn(duration: 450.ms)
    .slideY(
begin: 0.15,
end: 0,
curve: Curves.easeOutCubic,
),

const SizedBox(height: 16),

ConstrainedBox(
constraints: const BoxConstraints(maxWidth: 340),
child: Text(
page.subtitle,
textAlign: TextAlign.center,
style: GoogleFonts.inter(
fontSize: 15.5,
height: 1.65,
fontWeight: FontWeight.w500,
color: isDark
? Colors.white.withValues(alpha: 0.62)
    : AppColors.textSecondaryLight,
),
),
).animate().fadeIn(
delay: 100.ms,
duration: 450.ms,
),

const SizedBox(height: 28),

Wrap(
alignment: WrapAlignment.center,
spacing: 8,
runSpacing: 8,
children: page.highlights
    .asMap()
    .entries
    .map(
(entry) => _buildHighlightChip(
entry.value,
isDark,
index: entry.key,
),
)
    .toList(),
),

const Spacer(),
],
),
),
),
);
}

Widget _buildHeroOrb({
required String emoji,
required bool isDark,
}) {
return Stack(
alignment: Alignment.center,
children: [
Container(
width: 190,
height: 190,
decoration: BoxDecoration(
shape: BoxShape.circle,
color: AppColors.primary.withValues(
alpha: isDark ? 0.08 : 0.06,
),
),
),
Container(
width: 154,
height: 154,
decoration: BoxDecoration(
shape: BoxShape.circle,
gradient: LinearGradient(
begin: Alignment.topLeft,
end: Alignment.bottomRight,
colors: isDark
? [
const Color(0xFF183C38),
const Color(0xFF0F292A),
]
    : [
const Color(0xFFD8FFF2),
const Color(0xFFE8F7FF),
],
),
border: Border.all(
color: AppColors.primary.withValues(
alpha: isDark ? 0.22 : 0.16,
),
width: 1.2,
),
boxShadow: [
BoxShadow(
color: AppColors.primary.withValues(
alpha: isDark ? 0.20 : 0.12,
),
blurRadius: 45,
spreadRadius: 4,
),
],
),
child: Center(
child: Text(
emoji,
style: const TextStyle(
fontSize: 66,
),
),
),
),
Positioned(
top: 12,
right: 23,
child: _floatingDot(
size: 10,
color: AppColors.primary,
),
),
Positioned(
bottom: 22,
left: 17,
child: _floatingDot(
size: 7,
color: const Color(0xFF60A5FA),
),
),
],
)
    .animate(
key: ValueKey('orb-$emoji'),
)
    .scale(
begin: const Offset(0.86, 0.86),
end: const Offset(1, 1),
duration: 650.ms,
curve: Curves.easeOutBack,
)
    .fadeIn(duration: 350.ms);
}

Widget _floatingDot({
required double size,
required Color color,
}) {
return Container(
width: size,
height: size,
decoration: BoxDecoration(
shape: BoxShape.circle,
color: color,
boxShadow: [
BoxShadow(
color: color.withValues(alpha: 0.55),
blurRadius: 10,
),
],
),
);
}

Widget _buildHighlightChip(
String text,
bool isDark, {
required int index,
}) {
return Container(
padding: const EdgeInsets.symmetric(
horizontal: 13,
vertical: 9,
),
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.045)
    : Colors.white.withValues(alpha: 0.72),
borderRadius: BorderRadius.circular(100),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.065)
    : Colors.black.withValues(alpha: 0.035),
),
),
child: Row(
mainAxisSize: MainAxisSize.min,
children: [
Container(
width: 6,
height: 6,
decoration: const BoxDecoration(
shape: BoxShape.circle,
color: AppColors.primary,
),
),
const SizedBox(width: 7),
Text(
text,
style: GoogleFonts.inter(
fontSize: 11.5,
fontWeight: FontWeight.w700,
color: isDark
? Colors.white.withValues(alpha: 0.76)
    : AppColors.textPrimaryLight,
),
),
],
),
)
    .animate(
delay: Duration(milliseconds: 120 + (index * 70)),
)
    .fadeIn()
    .slideY(begin: 0.15);
}

Widget _stepIndicator({
required int step,
required int total,
required bool isDark,
}) {
return Container(
padding: const EdgeInsets.symmetric(
horizontal: 11,
vertical: 7,
),
decoration: BoxDecoration(
color: AppColors.primary.withValues(
alpha: isDark ? 0.12 : 0.08,
),
borderRadius: BorderRadius.circular(100),
border: Border.all(
color: AppColors.primary.withValues(alpha: 0.12),
),
),
child: Row(
mainAxisSize: MainAxisSize.min,
children: [
Text(
'$step',
style: GoogleFonts.inter(
fontSize: 12,
fontWeight: FontWeight.w800,
color: AppColors.primary,
),
),
Text(
' / $total',
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w600,
color: isDark
? Colors.white.withValues(alpha: 0.4)
    : Colors.black38,
),
),
],
),
);
}

Widget _softIcon(
IconData icon,
bool isDark,
) {
return Container(
width: 38,
height: 38,
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.045)
    : Colors.white.withValues(alpha: 0.72),
shape: BoxShape.circle,
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.06)
    : Colors.black.withValues(alpha: 0.035),
),
),
child: Icon(
icon,
size: 17,
color: isDark ? Colors.white54 : Colors.black45,
),
);
}

Widget _glassCard({
required bool isDark,
required double radius,
required EdgeInsets padding,
required Widget child,
}) {
return ClipRRect(
borderRadius: BorderRadius.circular(radius),
child: BackdropFilter(
filter: ImageFilter.blur(
sigmaX: 18,
sigmaY: 18,
),
child: Container(
width: double.infinity,
padding: padding,
decoration: BoxDecoration(
gradient: LinearGradient(
begin: Alignment.topLeft,
end: Alignment.bottomRight,
colors: isDark
? [
Colors.white.withValues(alpha: 0.075),
Colors.white.withValues(alpha: 0.025),
]
    : [
Colors.white.withValues(alpha: 0.84),
Colors.white.withValues(alpha: 0.58),
],
),
borderRadius: BorderRadius.circular(radius),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.09)
    : Colors.white.withValues(alpha: 0.92),
),
boxShadow: [
BoxShadow(
color: Colors.black.withValues(
alpha: isDark ? 0.22 : 0.055,
),
blurRadius: 45,
offset: const Offset(0, 22),
),
],
),
child: child,
),
),
);
}

Widget _buildSetupPage(bool isDark) {
final l10n = AppLocalizations.of(context);

return Padding(
padding: const EdgeInsets.fromLTRB(20, 18, 20, 10),
child: _glassCard(
isDark: isDark,
radius: 36,
padding: const EdgeInsets.fromLTRB(22, 24, 22, 18),
child: LayoutBuilder(
builder: (context, constraints) {
return SingleChildScrollView(
physics: const BouncingScrollPhysics(),
child: ConstrainedBox(
constraints: BoxConstraints(
minHeight: constraints.maxHeight,
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Row(
children: [
_stepIndicator(
step: 4,
total: 4,
isDark: isDark,
),
const Spacer(),
Text(
_languageText(
'Твой старт',
'Your starting point',
),
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w700,
color: isDark
? Colors.white38
    : Colors.black38,
),
),
],
),

const SizedBox(height: 22),

Text(
l10n.aboutYou,
style: GoogleFonts.inter(
fontSize: 32,
height: 1.05,
fontWeight: FontWeight.w700,
letterSpacing: -1.1,
color: isDark
? Colors.white
    : AppColors.textPrimaryLight,
),
),

const SizedBox(height: 9),

Text(
l10n.aboutYouDesc,
style: GoogleFonts.inter(
fontSize: 14,
height: 1.55,
fontWeight: FontWeight.w500,
color: isDark
? Colors.white.withValues(alpha: 0.56)
    : AppColors.textSecondaryLight,
),
),

const SizedBox(height: 20),

_buildSavingsHero(isDark),

const SizedBox(height: 18),

_buildSliderCard(
title: l10n.cigsPerDay,
value: '${_cigarettesPerDay.round()}',
suffix: _languageText('шт', 'cigs'),
min: 1,
max: 40,
valueDouble: _cigarettesPerDay,
onChanged: (value) {
setState(() => _cigarettesPerDay = value);
},
isDark: isDark,
icon: Icons.show_chart_rounded,
),

const SizedBox(height: 12),

_buildSliderCard(
title: l10n.pricePerPack,
value: '${_pricePerPack.round()}',
suffix: _selectedCurrencySymbol,
min: 50,
max: 500,
valueDouble: _pricePerPack,
onChanged: (value) {
setState(() => _pricePerPack = value);
},
isDark: isDark,
icon: Icons.payments_outlined,
),

const SizedBox(height: 12),

_buildSliderCard(
title: _languageText(
'Сигарет в пачке',
'Cigarettes per pack',
),
value: '${_cigarettesPerPack.round()}',
suffix: _languageText('шт', 'cigs'),
min: 10,
max: 30,
valueDouble: _cigarettesPerPack,
onChanged: (value) {
setState(() => _cigarettesPerPack = value);
},
isDark: isDark,
icon: Icons.inventory_2_outlined,
),

const SizedBox(height: 12),

_buildSliderCard(
title: _languageText(
'Лет курения',
'Years smoked',
),
value: '${_yearsSmoked.round()}',
suffix: _languageText('лет', 'yrs'),
min: 0,
max: 40,
valueDouble: _yearsSmoked,
onChanged: (value) {
setState(() => _yearsSmoked = value);
},
isDark: isDark,
icon: Icons.calendar_today_outlined,
),

const SizedBox(height: 12),

_buildCurrencyCard(isDark),

const SizedBox(height: 12),

_buildLifetimeCard(isDark),

const SizedBox(height: 4),
],
),
),
);
},
),
),
);
}

Widget _buildSavingsHero(bool isDark) {
return Container(
width: double.infinity,
padding: const EdgeInsets.all(19),
decoration: BoxDecoration(
gradient: LinearGradient(
begin: Alignment.topLeft,
end: Alignment.bottomRight,
colors: isDark
? [
const Color(0xFF12443D),
const Color(0xFF0D292B),
]
    : [
const Color(0xFFD8FFF0),
const Color(0xFFE4F5FF),
],
),
borderRadius: BorderRadius.circular(25),
border: Border.all(
color: AppColors.primary.withValues(
alpha: isDark ? 0.20 : 0.12,
),
),
),
child: Row(
children: [
Container(
width: 52,
height: 52,
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.08)
    : Colors.white.withValues(alpha: 0.75),
borderRadius: BorderRadius.circular(17),
),
child: const Icon(
Icons.savings_rounded,
color: AppColors.primary,
size: 25,
),
),
const SizedBox(width: 14),
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
_languageText(
'Потенциальная экономия',
'Potential savings',
),
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w700,
color: isDark
? Colors.white.withValues(alpha: 0.52)
    : AppColors.textSecondaryLight,
),
),
const SizedBox(height: 3),
AnimatedSwitcher(
duration: const Duration(milliseconds: 220),
child: Text(
_formatPrice(context, _monthlySavings),
key: ValueKey(_monthlySavings.round()),
style: GoogleFonts.inter(
fontSize: 25,
fontWeight: FontWeight.w700,
letterSpacing: -0.7,
color: isDark
? Colors.white
    : AppColors.textPrimaryLight,
),
),
),
Text(
_languageText('в месяц', 'per month'),
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w600,
color: isDark
? Colors.white.withValues(alpha: 0.46)
    : AppColors.textSecondaryLight,
),
),
],
),
),
],
),
).animate().fadeIn(duration: 400.ms).slideY(begin: 0.08);
}

Widget _buildSliderCard({
required String title,
required String value,
required String suffix,
required double min,
required double max,
required double valueDouble,
required ValueChanged<double> onChanged,
required bool isDark,
required IconData icon,
}) {
return Container(
padding: const EdgeInsets.fromLTRB(15, 14, 15, 9),
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.035)
    : Colors.white.withValues(alpha: 0.66),
borderRadius: BorderRadius.circular(22),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.055)
    : Colors.black.withValues(alpha: 0.035),
),
),
child: Column(
children: [
Row(
children: [
Container(
width: 34,
height: 34,
decoration: BoxDecoration(
color: AppColors.primary.withValues(
alpha: isDark ? 0.12 : 0.08,
),
borderRadius: BorderRadius.circular(11),
),
child: Icon(
icon,
size: 17,
color: AppColors.primary,
),
),
const SizedBox(width: 10),
Expanded(
child: Text(
title,
style: GoogleFonts.inter(
fontSize: 12.5,
fontWeight: FontWeight.w700,
color: isDark
? Colors.white.withValues(alpha: 0.72)
    : AppColors.textPrimaryLight,
),
),
),
Container(
padding: const EdgeInsets.symmetric(
horizontal: 10,
vertical: 6,
),
decoration: BoxDecoration(
color: AppColors.primary.withValues(
alpha: isDark ? 0.14 : 0.08,
),
borderRadius: BorderRadius.circular(10),
),
child: Text(
'$value $suffix',
style: GoogleFonts.inter(
fontSize: 12,
fontWeight: FontWeight.w800,
color: AppColors.primary,
),
),
),
],
),
const SizedBox(height: 3),
SliderTheme(
data: SliderTheme.of(context).copyWith(
trackHeight: 5,
activeTrackColor: AppColors.primary,
inactiveTrackColor:
isDark ? Colors.white12 : Colors.black12,
thumbColor: Colors.white,
overlayColor: AppColors.primary.withValues(alpha: 0.12),
thumbShape: const RoundSliderThumbShape(
enabledThumbRadius: 8,
elevation: 3,
),
overlayShape: const RoundSliderOverlayShape(
overlayRadius: 17,
),
),
child: Slider(
value: valueDouble,
min: min,
max: max,
divisions: (max - min).round(),
onChanged: onChanged,
),
),
],
),
);
}

Widget _buildCurrencyCard(bool isDark) {
final currency = CurrencyOption.fromCode(_selectedCurrencyCode);

return Material(
color: Colors.transparent,
child: InkWell(
onTap: _showCurrencyPicker,
borderRadius: BorderRadius.circular(22),
child: Ink(
padding: const EdgeInsets.all(15),
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.035)
    : Colors.white.withValues(alpha: 0.66),
borderRadius: BorderRadius.circular(22),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.055)
    : Colors.black.withValues(alpha: 0.035),
),
),
child: Row(
children: [
Container(
width: 38,
height: 38,
decoration: BoxDecoration(
color: AppColors.primary.withValues(
alpha: isDark ? 0.12 : 0.08,
),
borderRadius: BorderRadius.circular(12),
),
child: const Icon(
Icons.language_rounded,
color: AppColors.primary,
size: 19,
),
),
const SizedBox(width: 11),
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
_languageText('Валюта', 'Currency'),
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w600,
color: isDark
? Colors.white38
    : Colors.black45,
),
),
const SizedBox(height: 2),
Text(
'${currency.flagEmoji}  ${currency.code}',
style: GoogleFonts.inter(
fontSize: 15,
fontWeight: FontWeight.w800,
color: isDark
? Colors.white
    : AppColors.textPrimaryLight,
),
),
],
),
),
Container(
width: 36,
height: 36,
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.055)
    : Colors.black.withValues(alpha: 0.035),
borderRadius: BorderRadius.circular(11),
),
child: Icon(
Icons.chevron_right_rounded,
color: isDark ? Colors.white54 : Colors.black45,
),
),
],
),
),
),
);
}

Widget _buildLifetimeCard(bool isDark) {
return Container(
padding: const EdgeInsets.all(15),
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.025)
    : Colors.black.withValues(alpha: 0.018),
borderRadius: BorderRadius.circular(20),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.045)
    : Colors.black.withValues(alpha: 0.025),
),
),
child: Row(
children: [
const Text(
'↗',
style: TextStyle(
fontSize: 24,
color: AppColors.primary,
fontWeight: FontWeight.w800,
),
),
const SizedBox(width: 11),
Expanded(
child: Text(
_languageText(
'Примерно уже потрачено',
'Estimated amount already spent',
),
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w600,
color: isDark
? Colors.white38
    : AppColors.textSecondaryLight,
),
),
),
Text(
_formatPrice(context, _lifetimeSpent),
style: GoogleFonts.inter(
fontSize: 15,
fontWeight: FontWeight.w700,
color: AppColors.primary,
),
),
],
),
);
}

Widget _buildBottomControls({
required bool isDark,
required int totalPages,
required AppLocalizations l10n,
}) {
final isLast = _currentPage == totalPages - 1;

return Padding(
padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
child: Column(
children: [
Row(
children: [
SmoothPageIndicator(
controller: _pageController,
count: totalPages,
effect: ExpandingDotsEffect(
dotHeight: 7,
dotWidth: 7,
expansionFactor: 3.2,
activeDotColor: AppColors.primary,
dotColor: isDark
? Colors.white.withValues(alpha: 0.16)
    : Colors.black.withValues(alpha: 0.12),
spacing: 5,
),
),
const Spacer(),
Text(
'${_currentPage + 1}/$totalPages',
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w700,
color: isDark ? Colors.white38 : Colors.black38,
),
),
],
),
const SizedBox(height: 15),
_buildActionButton(
label: isLast ? l10n.startJourney : l10n.next,
icon: isLast
? Icons.rocket_launch_rounded
    : Icons.arrow_forward_rounded,
onTap: _next,
),
],
),
);
}

Widget _buildActionButton({
required String label,
required IconData icon,
required VoidCallback onTap,
}) {
return DecoratedBox(
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(21),
gradient: const LinearGradient(
begin: Alignment.centerLeft,
end: Alignment.centerRight,
colors: [
AppColors.primary,
AppColors.primaryLight,
],
),
boxShadow: [
BoxShadow(
color: AppColors.primary.withValues(alpha: 0.28),
blurRadius: 28,
offset: const Offset(0, 13),
),
],
),
child: Material(
color: Colors.transparent,
child: InkWell(
onTap: onTap,
borderRadius: BorderRadius.circular(21),
child: SizedBox(
width: double.infinity,
height: 60,
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
label,
style: GoogleFonts.inter(
fontSize: 15,
fontWeight: FontWeight.w800,
letterSpacing: -0.15,
color: Colors.white,
),
),
const SizedBox(width: 10),
Container(
width: 28,
height: 28,
decoration: BoxDecoration(
color: Colors.white.withValues(alpha: 0.17),
shape: BoxShape.circle,
),
child: Icon(
icon,
size: 16,
color: Colors.white,
),
),
],
),
),
),
),
).animate().fadeIn(duration: 350.ms).slideY(begin: 0.08);
}
}

class _OnboardingPage {
final String emoji;
final String title;
final String subtitle;
final List<String> highlights;

const _OnboardingPage({
required this.emoji,
required this.title,
required this.subtitle,
required this.highlights,
});
}
