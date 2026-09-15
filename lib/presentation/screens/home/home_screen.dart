
import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/utils/level_copy.dart';
import '../../../data/bloc/progress/progress_bloc.dart';
import '../../../data/bloc/progress/progress_event.dart';
import '../../../data/bloc/progress/progress_state.dart';
import '../../../data/models/currency_option.dart';
import '../../../l10n/app_localizations.dart';
import '../../widgets/check_in_success.dart';
import '../../widgets/puff_ui.dart';
import '../premium/premium_screen.dart';

class HomeScreen extends StatefulWidget {
const HomeScreen({super.key});

@override
State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
Timer? _clock;

@override
void initState() {
super.initState();

_clock = Timer.periodic(const Duration(seconds: 1), (_) {
if (mounted) {
setState(() {});
}
});
}

@override
void dispose() {
_clock?.cancel();
super.dispose();
}

@override
Widget build(BuildContext context) {
final isDark = Theme.of(context).brightness == Brightness.dark;

return Scaffold(
backgroundColor: isDark
? const Color(0xFF071412)
    : const Color(0xFFF5F8F7),
body: BlocBuilder<ProgressBloc, ProgressState>(
builder: (context, state) {
if (state is ProgressLoading || state is ProgressInitial) {
return const Center(
child: CircularProgressIndicator(
color: AppColors.primary,
),
);
}

if (state is ProgressError) {
return Center(
child: Text(
state.message,
textAlign: TextAlign.center,
),
);
}

if (state is ProgressLoaded) {
return _HomeBody(state: state);
}

return const SizedBox.shrink();
},
),
);
}
}

class _HomeBody extends StatelessWidget {
const _HomeBody({
required this.state,
});

final ProgressLoaded state;

@override
Widget build(BuildContext context) {
final l10n = AppLocalizations.of(context);
final isDark = Theme.of(context).brightness == Brightness.dark;
final ru = Localizations.localeOf(context).languageCode == 'ru';

final progress = state.progress;
final level = state.currentLevel;

final name = progress.displayName.isEmpty
? l10n.friend
    : progress.displayName;

final duration = progress.smokeFreeDuration;

final money = CurrencyOption.formatPrice(
progress.moneySaved,
code: progress.currencyCode,
locale: ru ? 'ru' : 'en',
);

return Stack(
children: [
_BackgroundGlow(isDark: isDark),

SafeArea(
child: ListView(
physics: const BouncingScrollPhysics(),
padding: const EdgeInsets.fromLTRB(
18,
12,
18,
120,
),
children: [
_buildHeader(
context,
name,
l10n,
progress.avatarEmoji,
isDark,
),

const SizedBox(height: 22),

_buildHeroCard(
context,
state,
duration,
l10n,
isDark,
ru,
level,
),

const SizedBox(height: 16),

_buildStatsGrid(
context,
state,
money,
l10n,
ru,
isDark,
),

const SizedBox(height: 18),

_buildMotivationCard(
context,
state,
l10n,
isDark,
),

const SizedBox(height: 18),

_buildPremiumCard(
context,
l10n,
isDark,
),

if (progress.quitDate != null) ...[
const SizedBox(height: 18),

_buildDailyCheckIn(
context,
progress,
l10n,
isDark,
),

const SizedBox(height: 10),

_buildRelapseButton(
context,
l10n,
isDark,
),
],
],
),
),
],
);
}

Widget _buildHeader(
BuildContext context,
String name,
AppLocalizations l10n,
String avatar,
bool isDark,
) {
return Row(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
l10n.helloName(name),
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 14,
fontWeight: FontWeight.w600,
color: isDark
? Colors.white.withValues(alpha: 0.56)
    : const Color(0xFF64748B),
),
),
const SizedBox(height: 4),
Text(
l10n.pathToFreedom,
style: GoogleFonts.inter(
fontSize: 28,
height: 1.05,
fontWeight: FontWeight.w800,
letterSpacing: -1.1,
color: isDark
? Colors.white
    : const Color(0xFF10201D),
),
),
],
),
),

const SizedBox(width: 14),

_GlassAvatar(
emoji: avatar,
isDark: isDark,
),
],
).animate().fadeIn(duration: 450.ms).slideY(
begin: -0.08,
curve: Curves.easeOutCubic,
);
}

Widget _buildHeroCard(
BuildContext context,
ProgressLoaded state,
Duration duration,
AppLocalizations l10n,
bool isDark,
bool ru,
dynamic level,
) {
final progress = state.progress;

return Container(
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(32),
gradient: LinearGradient(
begin: Alignment.topLeft,
end: Alignment.bottomRight,
colors: isDark
? const [
Color(0xFF123F36),
Color(0xFF0C2925),
Color(0xFF0A1D1B),
]
    : const [
Color(0xFFE0F7F0),
Color(0xFFD8F1EA),
Color(0xFFF1F7F4),
],
),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.08)
    : Colors.white.withValues(alpha: 0.9),
),
boxShadow: [
BoxShadow(
color: AppColors.primary.withValues(
alpha: isDark ? 0.16 : 0.10,
),
blurRadius: 35,
offset: const Offset(0, 18),
),
],
),
child: Stack(
children: [
Positioned(
top: -90,
right: -70,
child: _GlowCircle(
size: 230,
color: AppColors.primary.withValues(
alpha: isDark ? 0.14 : 0.16,
),
),
),
Positioned(
bottom: -100,
left: -90,
child: _GlowCircle(
size: 220,
color: const Color(0xFF7DD3FC).withValues(
alpha: isDark ? 0.07 : 0.10,
),
),
),

Padding(
padding: const EdgeInsets.fromLTRB(
22,
20,
22,
22,
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Row(
children: [
Container(
padding: const EdgeInsets.symmetric(
horizontal: 10,
vertical: 7,
),
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.08)
    : Colors.white.withValues(alpha: 0.68),
borderRadius: BorderRadius.circular(999),
),
child: Row(
mainAxisSize: MainAxisSize.min,
children: [
Icon(
Iconsax.flash_15,
size: 14,
color: AppColors.primary,
),
const SizedBox(width: 6),
Text(
l10n.level(level.level),
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w800,
color: isDark
? Colors.white
    : const Color(0xFF173A34),
),
),
],
),
),

const Spacer(),

Text(
LevelCopy.title(
level.level,
ru: ru,
),
style: GoogleFonts.inter(
fontSize: 12,
fontWeight: FontWeight.w700,
color: isDark
? Colors.white.withValues(alpha: 0.62)
    : const Color(0xFF55736C),
),
),
],
),

const SizedBox(height: 24),

Text(
'${progress.daysSinceQuit}',
style: GoogleFonts.outfit(
fontSize: 64,
height: 0.9,
fontWeight: FontWeight.w800,
letterSpacing: -3,
color: isDark
? Colors.white
    : const Color(0xFF102A25),
),
),

const SizedBox(height: 6),

Text(
'${LevelCopy.daysWord(progress.daysSinceQuit, ru: ru)} ${l10n.withoutCigs}',
style: GoogleFonts.inter(
fontSize: 15,
fontWeight: FontWeight.w600,
color: isDark
? Colors.white.withValues(alpha: 0.62)
    : const Color(0xFF54716A),
),
),

const SizedBox(height: 22),

Container(
padding: const EdgeInsets.symmetric(
horizontal: 16,
vertical: 14,
),
decoration: BoxDecoration(
color: isDark
? Colors.black.withValues(alpha: 0.14)
    : Colors.white.withValues(alpha: 0.56),
borderRadius: BorderRadius.circular(20),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.05)
    : Colors.white.withValues(alpha: 0.75),
),
),
child: Row(
children: [
Container(
width: 38,
height: 38,
decoration: BoxDecoration(
color: AppColors.primary.withValues(
alpha: isDark ? 0.18 : 0.12,
),
shape: BoxShape.circle,
),
child: const Icon(
Iconsax.timer_1,
size: 19,
color: AppColors.primary,
),
),
const SizedBox(width: 12),
Expanded(
child: Column(
crossAxisAlignment:
CrossAxisAlignment.start,
children: [
Text(
ru
? 'Ты свободен уже'
    : 'You have been free for',
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w600,
color: isDark
? Colors.white.withValues(
alpha: 0.45,
)
    : const Color(0xFF6B817C),
),
),
const SizedBox(height: 3),
Text(
_liveClock(duration),
style: GoogleFonts.outfit(
fontSize: 22,
fontWeight: FontWeight.w800,
letterSpacing: -0.5,
color: isDark
? Colors.white
    : const Color(0xFF173A34),
),
),
],
),
),
_PulseDot(isDark: isDark),
],
),
),

const SizedBox(height: 20),

Row(
mainAxisAlignment:
MainAxisAlignment.spaceBetween,
children: [
Text(
ru ? 'Следующий уровень' : 'Next level',
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w600,
color: isDark
? Colors.white.withValues(alpha: 0.48)
    : const Color(0xFF6A817B),
),
),
Text(
'${(state.levelProgress * 100).toInt()}%',
style: GoogleFonts.inter(
fontSize: 12,
fontWeight: FontWeight.w800,
color: AppColors.primary,
),
),
],
),

const SizedBox(height: 8),

ClipRRect(
borderRadius: BorderRadius.circular(999),
child: SizedBox(
height: 9,
child: Stack(
children: [
Container(
color: isDark
? Colors.white.withValues(alpha: 0.08)
    : Colors.black.withValues(alpha: 0.06),
),
FractionallySizedBox(
widthFactor: state.levelProgress
    .clamp(0.0, 1.0),
child: Container(
decoration: const BoxDecoration(
gradient: LinearGradient(
colors: [
AppColors.primary,
AppColors.primaryLight,
],
),
),
),
),
],
),
),
),
],
),
),
],
),
)
    .animate()
    .fadeIn(duration: 550.ms)
    .slideY(
begin: 0.08,
curve: Curves.easeOutCubic,
);
}

Widget _buildStatsGrid(
BuildContext context,
ProgressLoaded state,
String money,
AppLocalizations l10n,
bool ru,
bool isDark,
) {
final progress = state.progress;

return Column(
children: [
Row(
children: [
Expanded(
child: _ModernStatCard(
icon: Iconsax.flash_1,
iconColor: AppColors.amber,
value: '${progress.currentStreak}',
label: l10n.streak,
suffix: ru ? 'дн' : 'd',
isDark: isDark,
),
),
const SizedBox(width: 12),
Expanded(
child: _ModernStatCard(
icon: Iconsax.money_recive,
iconColor: AppColors.success,
value: money,
label: l10n.saved,
isDark: isDark,
),
),
],
),
const SizedBox(height: 12),
Row(
children: [
Expanded(
child: _ModernStatCard(
icon: Iconsax.health,
iconColor: AppColors.primary,
value: '${progress.cigarettesAvoided}',
label: l10n.avoided,
suffix: ru ? 'шт' : '',
isDark: isDark,
),
),
const SizedBox(width: 12),
Expanded(
child: _ModernStatCard(
icon: Iconsax.calendar,
iconColor: AppColors.accent,
value: '${progress.totalSmokeFreeDays}',
label: l10n.totalDays,
isDark: isDark,
),
),
],
),
],
)
    .animate()
    .fadeIn(delay: 150.ms)
    .slideY(begin: 0.06);
}

Widget _buildMotivationCard(
BuildContext context,
ProgressLoaded state,
AppLocalizations l10n,
bool isDark,
) {
return ClipRRect(
borderRadius: BorderRadius.circular(28),
child: BackdropFilter(
filter: ImageFilter.blur(
sigmaX: 16,
sigmaY: 16,
),
child: Container(
padding: const EdgeInsets.all(20),
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.045)
    : Colors.white.withValues(alpha: 0.82),
borderRadius: BorderRadius.circular(28),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.07)
    : Colors.white,
),
),
child: Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
width: 46,
height: 46,
decoration: BoxDecoration(
gradient: const LinearGradient(
colors: [
AppColors.primary,
AppColors.primaryLight,
],
),
borderRadius: BorderRadius.circular(15),
),
child: const Icon(
Iconsax.message_text_1,
color: Colors.white,
size: 21,
),
),
const SizedBox(width: 14),
Expanded(
child: Column(
crossAxisAlignment:
CrossAxisAlignment.start,
children: [
Text(
l10n.dailyMotivation,
style: GoogleFonts.inter(
fontSize: 12,
fontWeight: FontWeight.w800,
color: AppColors.primary,
letterSpacing: 0.2,
),
),
const SizedBox(height: 8),
Text(
state.dailyMotivation,
style: GoogleFonts.inter(
fontSize: 15,
height: 1.5,
fontWeight: FontWeight.w600,
color: isDark
? Colors.white.withValues(alpha: 0.88)
    : const Color(0xFF243A36),
),
),
],
),
),
],
),
),
),
).animate().fadeIn(delay: 220.ms);
}

Widget _buildPremiumCard(
BuildContext context,
AppLocalizations l10n,
bool isDark,
) {
return GestureDetector(
onTap: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (_) => const PremiumScreen(),
),
);
},
child: Container(
padding: const EdgeInsets.all(18),
decoration: BoxDecoration(
gradient: LinearGradient(
begin: Alignment.topLeft,
end: Alignment.bottomRight,
colors: isDark
? const [
Color(0xFF302511),
Color(0xFF201A10),
]
    : const [
Color(0xFFFFF5D8),
Color(0xFFFFFAEC),
],
),
borderRadius: BorderRadius.circular(26),
border: Border.all(
color: AppColors.amber.withValues(
alpha: isDark ? 0.15 : 0.20,
),
),
),
child: Row(
children: [
Container(
width: 48,
height: 48,
decoration: BoxDecoration(
gradient: const LinearGradient(
colors: [
Color(0xFFF7C948),
Color(0xFFF59E0B),
],
),
borderRadius: BorderRadius.circular(15),
boxShadow: [
BoxShadow(
color: AppColors.amber.withValues(
alpha: 0.22,
),
blurRadius: 16,
offset: const Offset(0, 8),
),
],
),
child: const Icon(
Iconsax.crown_1,
color: Colors.white,
size: 22,
),
),
const SizedBox(width: 14),
Expanded(
child: Column(
crossAxisAlignment:
CrossAxisAlignment.start,
children: [
Text(
l10n.tryFree,
style: GoogleFonts.inter(
fontSize: 15,
fontWeight: FontWeight.w800,
color: isDark
? Colors.white
    : const Color(0xFF3A2E13),
),
),
const SizedBox(height: 4),
Text(
l10n.premiumHint,
maxLines: 2,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 12,
height: 1.35,
color: isDark
? Colors.white.withValues(
alpha: 0.52,
)
    : const Color(0xFF806C3E),
),
),
],
),
),
const SizedBox(width: 10),
Container(
width: 38,
height: 38,
decoration: BoxDecoration(
color: AppColors.amber.withValues(
alpha: isDark ? 0.12 : 0.14,
),
shape: BoxShape.circle,
),
child: const Icon(
Icons.arrow_forward_rounded,
color: AppColors.amber,
size: 19,
),
),
],
),
),
).animate().fadeIn(delay: 280.ms).slideX(begin: 0.04);
}

Widget _buildDailyCheckIn(
BuildContext context,
dynamic progress,
AppLocalizations l10n,
bool isDark,
) {
return Container(
decoration: BoxDecoration(
gradient: const LinearGradient(
colors: [
AppColors.primary,
AppColors.primaryLight,
],
),
borderRadius: BorderRadius.circular(24),
boxShadow: [
BoxShadow(
color: AppColors.primary.withValues(
alpha: 0.22,
),
blurRadius: 24,
offset: const Offset(0, 12),
),
],
),
child: Material(
color: Colors.transparent,
child: InkWell(
borderRadius: BorderRadius.circular(24),
onTap: progress.hasCheckedInToday
? null
    : () {
context.read<ProgressBloc>().add(
const CheckInToday(
stayedSmokeFree: true,
),
);

Future.delayed(
const Duration(milliseconds: 250),
() {
if (!context.mounted) return;

final current = context
    .read<ProgressBloc>()
    .state;

if (current is ProgressLoaded) {
CheckInSuccessDialog.show(
context,
streak:
current.progress.currentStreak,
days: current
    .progress.totalSmokeFreeDays,
);
}
},
);
},
child: SizedBox(
height: 60,
child: Padding(
padding: const EdgeInsets.symmetric(
horizontal: 18,
),
child: Row(
children: [
Container(
width: 38,
height: 38,
decoration: BoxDecoration(
color: Colors.white.withValues(
alpha: 0.16,
),
shape: BoxShape.circle,
),
child: Icon(
progress.hasCheckedInToday
? Iconsax.tick_circle
    : Iconsax.tick_square,
color: Colors.white,
size: 20,
),
),
const SizedBox(width: 12),
Expanded(
child: Text(
progress.hasCheckedInToday
? l10n.checkedInToday
    : l10n.checkIn,
style: GoogleFonts.inter(
fontSize: 15,
fontWeight: FontWeight.w800,
color: Colors.white,
),
),
),
if (!progress.hasCheckedInToday)
const Icon(
Icons.arrow_forward_rounded,
color: Colors.white,
),
],
),
),
),
),
),
).animate().fadeIn(delay: 330.ms);
}

Widget _buildRelapseButton(
BuildContext context,
AppLocalizations l10n,
bool isDark,
) {
return SizedBox(
width: double.infinity,
height: 52,
child: OutlinedButton.icon(
onPressed: () => _confirmRelapse(
context,
l10n,
),
icon: const Icon(
Iconsax.close_circle,
size: 18,
),
label: Text(
l10n.iSmoked,
style: GoogleFonts.inter(
fontWeight: FontWeight.w700,
),
),
style: OutlinedButton.styleFrom(
foregroundColor: AppColors.coral,
side: BorderSide(
color: AppColors.coral.withValues(
alpha: 0.38,
),
),
backgroundColor: AppColors.coral.withValues(
alpha: isDark ? 0.035 : 0.025,
),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(18),
),
),
),
);
}

String _liveClock(Duration d) {
final h = d.inHours.remainder(24).toString().padLeft(2, '0');
final m = d.inMinutes.remainder(60).toString().padLeft(2, '0');
final s = d.inSeconds.remainder(60).toString().padLeft(2, '0');

return '${d.inDays}d  $h:$m:$s';
}

void _confirmRelapse(
BuildContext context,
AppLocalizations l10n,
) {
final isDark =
Theme.of(context).brightness == Brightness.dark;

showDialog(
context: context,
builder: (ctx) {
return AlertDialog(
backgroundColor: isDark
? const Color(0xFF16211F)
    : Colors.white,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(28),
),
title: Text(
l10n.relapseTitle,
style: GoogleFonts.inter(
fontWeight: FontWeight.w800,
),
),
content: Text(
l10n.relapseBody,
style: GoogleFonts.inter(
height: 1.5,
),
),
actions: [
TextButton(
onPressed: () => Navigator.pop(ctx),
child: Text(l10n.cancel),
),
TextButton(
onPressed: () {
context.read<ProgressBloc>().add(
const CheckInToday(
stayedSmokeFree: false,
),
);

Navigator.pop(ctx);

ScaffoldMessenger.of(context).showSnackBar(
SnackBar(
behavior: SnackBarBehavior.floating,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(16),
),
content: Text(l10n.relapseDone),
),
);
},
child: Text(
l10n.iSmoked,
style: const TextStyle(
color: AppColors.coral,
fontWeight: FontWeight.w700,
),
),
),
],
);
},
);
}
}

class _ModernStatCard extends StatelessWidget {
const _ModernStatCard({
required this.icon,
required this.iconColor,
required this.value,
required this.label,
required this.isDark,
this.suffix,
});

final IconData icon;
final Color iconColor;
final String value;
final String label;
final bool isDark;
final String? suffix;

@override
Widget build(BuildContext context) {
return Container(
padding: const EdgeInsets.all(16),
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.045)
    : Colors.white.withValues(alpha: 0.90),
borderRadius: BorderRadius.circular(24),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.06)
    : Colors.white,
),
boxShadow: [
if (!isDark)
BoxShadow(
color: Colors.black.withValues(alpha: 0.025),
blurRadius: 20,
offset: const Offset(0, 8),
),
],
),
child: Row(
children: [
Container(
width: 42,
height: 42,
decoration: BoxDecoration(
color: iconColor.withValues(alpha: 0.12),
borderRadius: BorderRadius.circular(14),
),
child: Icon(
icon,
size: 20,
color: iconColor,
),
),
const SizedBox(width: 11),
Expanded(
child: Column(
crossAxisAlignment:
CrossAxisAlignment.start,
children: [
Row(
crossAxisAlignment:
CrossAxisAlignment.end,
children: [
Flexible(
child: Text(
value,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.outfit(
fontSize: 20,
fontWeight: FontWeight.w800,
letterSpacing: -0.5,
color: isDark
? Colors.white
    : const Color(0xFF172724),
),
),
),
if (suffix != null &&
suffix!.isNotEmpty) ...[
const SizedBox(width: 3),
Text(
suffix!,
style: GoogleFonts.inter(
fontSize: 10,
fontWeight: FontWeight.w700,
color: isDark
? Colors.white.withValues(
alpha: 0.42,
)
    : const Color(0xFF71827F),
),
),
],
],
),
const SizedBox(height: 3),
Text(
label,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w600,
color: isDark
? Colors.white.withValues(alpha: 0.45)
    : const Color(0xFF71827F),
),
),
],
),
),
],
),
);
}
}

class _GlassAvatar extends StatelessWidget {
const _GlassAvatar({
required this.emoji,
required this.isDark,
});

final String emoji;
final bool isDark;

@override
Widget build(BuildContext context) {
return Container(
width: 48,
height: 48,
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.06)
    : Colors.white.withValues(alpha: 0.90),
shape: BoxShape.circle,
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.08)
    : Colors.white,
),
boxShadow: [
BoxShadow(
color: Colors.black.withValues(
alpha: isDark ? 0.12 : 0.05,
),
blurRadius: 16,
offset: const Offset(0, 7),
),
],
),
child: Center(
child: Text(
emoji,
style: const TextStyle(fontSize: 23),
),
),
);
}
}

class _PulseDot extends StatefulWidget {
const _PulseDot({
required this.isDark,
});

final bool isDark;

@override
State<_PulseDot> createState() => _PulseDotState();
}

class _PulseDotState extends State<_PulseDot>
with SingleTickerProviderStateMixin {
late final AnimationController _controller;

@override
void initState() {
super.initState();

_controller = AnimationController(
vsync: this,
duration: const Duration(milliseconds: 1400),
)..repeat(reverse: true);
}

@override
void dispose() {
_controller.dispose();
super.dispose();
}

@override
Widget build(BuildContext context) {
return AnimatedBuilder(
animation: _controller,
builder: (_, __) {
final opacity =
0.45 + (_controller.value * 0.55);

return Container(
width: 10,
height: 10,
decoration: BoxDecoration(
color: AppColors.primary.withValues(
alpha: opacity,
),
shape: BoxShape.circle,
boxShadow: [
BoxShadow(
color: AppColors.primary.withValues(
alpha: 0.35 * opacity,
),
blurRadius: 10,
),
],
),
);
},
);
}
}

class _GlowCircle extends StatelessWidget {
const _GlowCircle({
required this.size,
required this.color,
});

final double size;
final Color color;

@override
Widget build(BuildContext context) {
return Container(
width: size,
height: size,
decoration: BoxDecoration(
color: color,
shape: BoxShape.circle,
),
);
}
}

class _BackgroundGlow extends StatelessWidget {
const _BackgroundGlow({
required this.isDark,
});

final bool isDark;

@override
Widget build(BuildContext context) {
return IgnorePointer(
child: Stack(
children: [
Positioned(
top: -120,
right: -90,
child: ImageFiltered(
imageFilter: ImageFilter.blur(
sigmaX: 70,
sigmaY: 70,
),
child: _GlowCircle(
size: 260,
color: AppColors.primary.withValues(
alpha: isDark ? 0.10 : 0.08,
),
),
),
),
Positioned(
top: 420,
left: -150,
child: ImageFiltered(
imageFilter: ImageFilter.blur(
sigmaX: 80,
sigmaY: 80,
),
child: _GlowCircle(
size: 300,
color: const Color(0xFF7DD3FC).withValues(
alpha: isDark ? 0.04 : 0.06,
),
),
),
),
],
),
);
}
}

