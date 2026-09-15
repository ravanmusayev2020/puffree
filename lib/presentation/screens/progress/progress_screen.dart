
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/theme/app_theme.dart';
import '../../../data/bloc/progress/progress_bloc.dart';
import '../../../data/bloc/progress/progress_state.dart';

class ProgressScreen extends StatelessWidget {
const ProgressScreen({super.key});

@override
Widget build(BuildContext context) {
final theme = Theme.of(context);
final isDark = theme.brightness == Brightness.dark;

return Scaffold(
backgroundColor:
isDark ? const Color(0xFF071019) : const Color(0xFFF5F8F7),
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
child: Padding(
padding: const EdgeInsets.all(24),
child: Text(
state.message,
textAlign: TextAlign.center,
style: GoogleFonts.inter(
fontSize: 15,
color: isDark ? Colors.white70 : Colors.black54,
),
),
),
);
}

if (state is! ProgressLoaded) {
return const SizedBox.shrink();
}

final p = state.progress;
final level = state.currentLevel;

return SafeArea(
child: CustomScrollView(
physics: const BouncingScrollPhysics(),
slivers: [
SliverPadding(
padding: const EdgeInsets.fromLTRB(18, 12, 18, 36),
sliver: SliverList(
delegate: SliverChildListDelegate(
[
_TopBar(
isDark: isDark,
level: level.level,
),

const SizedBox(height: 20),

_ProgressHero(
days: p.daysSinceQuit,
level: level.level,
levelTitle: _getLevelTitle(level.level),
progress: state.levelProgress,
isDark: isDark,
),

const SizedBox(height: 26),

_SectionHeader(
title: 'Твои результаты',
subtitle: 'То, что уже изменилось благодаря тебе',
isDark: isDark,
),

const SizedBox(height: 14),

_StatsGrid(
isDark: isDark,
streak: p.currentStreak,
longestStreak: p.longestStreak,
moneySaved: p.moneySaved,
cigarettesAvoided: p.cigarettesAvoided,
),

const SizedBox(height: 28),

_SectionHeader(
title: 'Путь восстановления',
subtitle: 'Каждый этап — ещё один шаг вперёд',
isDark: isDark,
),

const SizedBox(height: 16),

_HealthTimeline(
days: p.daysSinceQuit,
isDark: isDark,
),

const SizedBox(height: 12),

_BottomMessage(
isDark: isDark,
days: p.daysSinceQuit,
),
],
),
),
),
],
),
);
},
),
);
}

String _getLevelTitle(int level) {
const titles = {
1: 'Первый вдох',
2: 'Росток',
3: 'Рост',
4: 'Корни',
5: 'Ствол',
6: 'Сила',
7: 'Огонь',
8: 'Искра',
9: 'Чемпион',
10: 'Мастер',
11: 'Алмаз',
12: 'Звезда',
13: 'Ракета',
14: 'Легенда',
};

return titles[level] ?? 'Путь';
}
}

// ─────────────────────────────────────────────────────────────────────────────
// TOP BAR
// ─────────────────────────────────────────────────────────────────────────────

class _TopBar extends StatelessWidget {
const _TopBar({
required this.isDark,
required this.level,
});

final bool isDark;
final int level;

@override
Widget build(BuildContext context) {
return Row(
children: [
_RoundButton(
icon: Icons.arrow_back_ios_new_rounded,
isDark: isDark,
onTap: () => Navigator.pop(context),
),
const SizedBox(width: 14),
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'Твой прогресс',
style: GoogleFonts.inter(
fontSize: 27,
fontWeight: FontWeight.w800,
letterSpacing: -1.0,
color: isDark ? Colors.white : const Color(0xFF10201F),
),
),
const SizedBox(height: 3),
Text(
'Ты уже дальше, чем вчера',
style: GoogleFonts.inter(
fontSize: 12.5,
fontWeight: FontWeight.w500,
color: isDark ? Colors.white54 : Colors.black45,
),
),
],
),
),
Container(
padding: const EdgeInsets.symmetric(
horizontal: 11,
vertical: 8,
),
decoration: BoxDecoration(
color: AppColors.primary.withValues(alpha: 0.10),
borderRadius: BorderRadius.circular(14),
border: Border.all(
color: AppColors.primary.withValues(alpha: 0.16),
),
),
child: Row(
mainAxisSize: MainAxisSize.min,
children: [
const Icon(
Iconsax.cup5,
size: 15,
color: AppColors.primary,
),
const SizedBox(width: 5),
Text(
'LVL $level',
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w800,
color: AppColors.primary,
letterSpacing: 0.3,
),
),
],
),
),
],
);
}
}

// ─────────────────────────────────────────────────────────────────────────────
// HERO
// ─────────────────────────────────────────────────────────────────────────────

class _ProgressHero extends StatelessWidget {
const _ProgressHero({
required this.days,
required this.level,
required this.levelTitle,
required this.progress,
required this.isDark,
});

final int days;
final int level;
final String levelTitle;
final double progress;
final bool isDark;

@override
Widget build(BuildContext context) {
final safeProgress = progress.clamp(0.0, 1.0);

return Container(
padding: const EdgeInsets.all(22),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(32),
gradient: LinearGradient(
colors: isDark
? const [
Color(0xFF102F32),
Color(0xFF10232D),
Color(0xFF0C1722),
]
    : const [
Color(0xFFE0F7F0),
Color(0xFFF2F7F4),
Color(0xFFE9F2EF),
],
begin: Alignment.topLeft,
end: Alignment.bottomRight,
),
border: Border.all(
color: AppColors.primary.withValues(
alpha: isDark ? 0.20 : 0.14,
),
),
boxShadow: [
BoxShadow(
color: AppColors.primary.withValues(
alpha: isDark ? 0.10 : 0.06,
),
blurRadius: 35,
offset: const Offset(0, 16),
),
],
),
child: Column(
children: [
Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
padding: const EdgeInsets.symmetric(
horizontal: 10,
vertical: 6,
),
decoration: BoxDecoration(
color: AppColors.primary.withValues(alpha: 0.11),
borderRadius: BorderRadius.circular(999),
),
child: Row(
mainAxisSize: MainAxisSize.min,
children: [
const Icon(
Iconsax.flash_15,
size: 13,
color: AppColors.primary,
),
const SizedBox(width: 5),
Text(
'УРОВЕНЬ $level',
style: GoogleFonts.inter(
fontSize: 10,
fontWeight: FontWeight.w700,
letterSpacing: 0.8,
color: AppColors.primary,
),
),
],
),
),
const SizedBox(height: 13),
Text(
levelTitle,
style: GoogleFonts.inter(
fontSize: 29,
height: 1.05,
fontWeight: FontWeight.w700,
letterSpacing: -1.0,
color: isDark
? Colors.white
    : const Color(0xFF10201F),
),
),
const SizedBox(height: 7),
Text(
'Твой путь продолжается',
style: GoogleFonts.inter(
fontSize: 13,
fontWeight: FontWeight.w500,
color: isDark ? Colors.white60 : Colors.black45,
),
),
],
),
),
_LevelOrb(
level: level,
progress: safeProgress,
isDark: isDark,
),
],
),

const SizedBox(height: 24),

Row(
crossAxisAlignment: CrossAxisAlignment.end,
children: [
Text(
'$days',
style: GoogleFonts.outfit(
fontSize: 48,
height: 0.95,
fontWeight: FontWeight.w800,
letterSpacing: -2,
color: isDark
? Colors.white
    : const Color(0xFF10201F),
),
),
const SizedBox(width: 9),
Padding(
padding: const EdgeInsets.only(bottom: 4),
child: Text(
_daysWord(days),
style: GoogleFonts.inter(
fontSize: 14,
fontWeight: FontWeight.w600,
color: isDark ? Colors.white60 : Colors.black54,
),
),
),
const Spacer(),
Text(
'${(safeProgress * 100).toInt()}%',
style: GoogleFonts.outfit(
fontSize: 17,
fontWeight: FontWeight.w800,
color: AppColors.primary,
),
),
],
),

const SizedBox(height: 10),

ClipRRect(
borderRadius: BorderRadius.circular(999),
child: Stack(
children: [
Container(
height: 10,
color: isDark
? Colors.white.withValues(alpha: 0.08)
    : Colors.black.withValues(alpha: 0.06),
),
FractionallySizedBox(
widthFactor: safeProgress,
child: Container(
height: 10,
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

const SizedBox(height: 9),

Row(
children: [
Text(
'Прогресс до следующего уровня',
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w500,
color: isDark ? Colors.white54 : Colors.black45,
),
),
const Spacer(),
Icon(
Iconsax.arrow_right_3,
size: 13,
color: isDark ? Colors.white38 : Colors.black38,
),
],
),
],
),
);
}

static String _daysWord(int days) {
if (days % 10 == 1 && days % 100 != 11) return 'день';
if ([2, 3, 4].contains(days % 10) &&
![12, 13, 14].contains(days % 100)) {
return 'дня';
}
return 'дней';
}
}

// ─────────────────────────────────────────────────────────────────────────────
// LEVEL ORB
// ─────────────────────────────────────────────────────────────────────────────

class _LevelOrb extends StatelessWidget {
const _LevelOrb({
required this.level,
required this.progress,
required this.isDark,
});

final int level;
final double progress;
final bool isDark;

@override
Widget build(BuildContext context) {
return SizedBox(
width: 78,
height: 78,
child: Stack(
alignment: Alignment.center,
children: [
SizedBox(
width: 78,
height: 78,
child: CircularProgressIndicator(
value: progress,
strokeWidth: 5,
backgroundColor:
isDark ? Colors.white10 : Colors.black.withValues(alpha: 0.06),
valueColor: const AlwaysStoppedAnimation(
AppColors.primary,
),
),
),
Container(
width: 62,
height: 62,
decoration: BoxDecoration(
shape: BoxShape.circle,
gradient: LinearGradient(
colors: isDark
? const [
Color(0xFF1A4744),
Color(0xFF12312F),
]
    : const [
Color(0xFFD4F2E9),
Color(0xFFBEE8DB),
],
),
boxShadow: [
BoxShadow(
color: AppColors.primary.withValues(alpha: 0.15),
blurRadius: 18,
),
],
),
child: Center(
child: Text(
'$level',
style: GoogleFonts.outfit(
fontSize: 26,
fontWeight: FontWeight.w800,
color: AppColors.primary,
),
),
),
),
],
),
);
}
}

// ─────────────────────────────────────────────────────────────────────────────
// SECTION HEADER
// ─────────────────────────────────────────────────────────────────────────────

class _SectionHeader extends StatelessWidget {
const _SectionHeader({
required this.title,
required this.subtitle,
required this.isDark,
});

final String title;
final String subtitle;
final bool isDark;

@override
Widget build(BuildContext context) {
return Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
title,
style: GoogleFonts.inter(
fontSize: 20,
fontWeight: FontWeight.w800,
letterSpacing: -0.4,
color: isDark ? Colors.white : const Color(0xFF10201F),
),
),
const SizedBox(height: 4),
Text(
subtitle,
style: GoogleFonts.inter(
fontSize: 12,
fontWeight: FontWeight.w500,
color: isDark ? Colors.white38 : Colors.black45,
),
),
],
);
}
}

// ─────────────────────────────────────────────────────────────────────────────
// STATS GRID
// ─────────────────────────────────────────────────────────────────────────────

class _StatsGrid extends StatelessWidget {
const _StatsGrid({
required this.isDark,
required this.streak,
required this.longestStreak,
required this.moneySaved,
required this.cigarettesAvoided,
});

final bool isDark;
final int streak;
final int longestStreak;
final double moneySaved;
final int cigarettesAvoided;

@override
Widget build(BuildContext context) {
return Column(
children: [
Row(
children: [
Expanded(
child: _ModernStatCard(
icon: Iconsax.flash_15,
title: 'Стрик',
value: '$streak',
unit: 'дн',
color: AppColors.primary,
isDark: isDark,
),
),
const SizedBox(width: 12),
Expanded(
child: _ModernStatCard(
icon: Iconsax.cup5,
title: 'Рекорд',
value: '$longestStreak',
unit: 'дн',
color: AppColors.warning,
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
icon: Iconsax.money_recive,
title: 'Сэкономлено',
value: moneySaved.toStringAsFixed(0),
unit: '₽',
color: AppColors.success,
isDark: isDark,
),
),
const SizedBox(width: 12),
Expanded(
child: _ModernStatCard(
icon: Iconsax.health,
title: 'Не выкурено',
value: '$cigarettesAvoided',
unit: 'шт',
color: AppColors.accent,
isDark: isDark,
),
),
],
),
],
);
}
}

class _ModernStatCard extends StatelessWidget {
const _ModernStatCard({
required this.icon,
required this.title,
required this.value,
required this.unit,
required this.color,
required this.isDark,
});

final IconData icon;
final String title;
final String value;
final String unit;
final Color color;
final bool isDark;

@override
Widget build(BuildContext context) {
return Container(
height: 142,
padding: const EdgeInsets.all(17),
decoration: BoxDecoration(
color: isDark
? const Color(0xFF0D1823)
    : Colors.white,
borderRadius: BorderRadius.circular(24),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.055)
    : Colors.black.withValues(alpha: 0.045),
),
boxShadow: [
BoxShadow(
color: Colors.black.withValues(
alpha: isDark ? 0.12 : 0.035,
),
blurRadius: 22,
offset: const Offset(0, 8),
),
],
),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Row(
children: [
Container(
width: 37,
height: 37,
decoration: BoxDecoration(
color: color.withValues(alpha: 0.11),
borderRadius: BorderRadius.circular(12),
),
child: Icon(
icon,
size: 18,
color: color,
),
),
const Spacer(),
Icon(
Iconsax.arrow_up_3,
size: 14,
color: color.withValues(alpha: 0.65),
),
],
),
const Spacer(),
Text(
title,
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w600,
color: isDark ? Colors.white38 : Colors.black45,
),
),
const SizedBox(height: 3),
Row(
crossAxisAlignment: CrossAxisAlignment.end,
children: [
Flexible(
child: Text(
value,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.outfit(
fontSize: 25,
fontWeight: FontWeight.w800,
letterSpacing: -0.7,
color: isDark
? Colors.white
    : const Color(0xFF10201F),
),
),
),
if (unit.isNotEmpty) ...[
const SizedBox(width: 4),
Padding(
padding: const EdgeInsets.only(bottom: 3),
child: Text(
unit,
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w600,
color: isDark ? Colors.white38 : Colors.black45,
),
),
),
],
],
),
],
),
);
}
}

// ─────────────────────────────────────────────────────────────────────────────
// HEALTH TIMELINE
// ─────────────────────────────────────────────────────────────────────────────

class _HealthTimeline extends StatelessWidget {
const _HealthTimeline({
required this.days,
required this.isDark,
});

final int days;
final bool isDark;

@override
Widget build(BuildContext context) {
final milestones = [
_Milestone(
title: 'Кислород в норме',
desc: 'Организм начинает возвращаться к своему обычному состоянию.',
unlocked: days >= 0,
icon: Iconsax.wind_2,
),
_Milestone(
title: 'Угарный газ уходит',
desc: 'Уровень угарного газа в организме снижается.',
unlocked: days >= 1,
icon: Iconsax.cloud,
),
_Milestone(
title: 'Дышать становится легче',
desc: 'Дыхательные пути постепенно расслабляются.',
unlocked: days >= 3,
icon: Iconsax.health,
),
_Milestone(
title: 'Кровообращение улучшается',
desc: 'Организм постепенно восстанавливает нормальную циркуляцию.',
unlocked: days >= 14,
icon: Iconsax.activity,
),
_Milestone(
title: 'Лёгкие восстанавливаются',
desc: 'Естественные защитные механизмы дыхательных путей постепенно восстанавливаются.',
unlocked: days >= 30,
icon: Iconsax.health,
),
_Milestone(
title: 'Большой рубеж',
desc: 'Продолжение отказа связано с дальнейшим снижением рисков для здоровья.',
unlocked: days >= 90,
icon: Iconsax.medal_star,
),
_Milestone(
title: 'Год свободы',
desc: 'Год без сигарет — огромная веха на пути восстановления.',
unlocked: days >= 365,
icon: Iconsax.cup5,
),
];

return Column(
children: List.generate(
milestones.length,
(index) {
final milestone = milestones[index];
final isLast = index == milestones.length - 1;

return _TimelineItem(
milestone: milestone,
isLast: isLast,
isDark: isDark,
);
},
),
);
}
}

class _TimelineItem extends StatelessWidget {
const _TimelineItem({
required this.milestone,
required this.isLast,
required this.isDark,
});

final _Milestone milestone;
final bool isLast;
final bool isDark;

@override
Widget build(BuildContext context) {
final active = milestone.unlocked;

return IntrinsicHeight(
child: Row(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
SizedBox(
width: 48,
child: Column(
children: [
Container(
width: 40,
height: 40,
decoration: BoxDecoration(
shape: BoxShape.circle,
color: active
? AppColors.primary.withValues(alpha: 0.12)
    : isDark
? Colors.white.withValues(alpha: 0.045)
    : Colors.black.withValues(alpha: 0.045),
border: Border.all(
color: active
? AppColors.primary.withValues(alpha: 0.22)
    : isDark
? Colors.white.withValues(alpha: 0.05)
    : Colors.black.withValues(alpha: 0.05),
),
),
child: Icon(
active ? Iconsax.tick_circle5 : Iconsax.lock_1,
size: 18,
color: active
? AppColors.primary
    : isDark
? Colors.white24
    : Colors.black26,
),
),
if (!isLast)
Expanded(
child: Container(
width: 1.5,
margin: const EdgeInsets.symmetric(vertical: 5),
color: active
? AppColors.primary.withValues(alpha: 0.18)
    : isDark
? Colors.white.withValues(alpha: 0.05)
    : Colors.black.withValues(alpha: 0.05),
),
),
],
),
),

const SizedBox(width: 10),

Expanded(
child: Container(
margin: const EdgeInsets.only(bottom: 12),
padding: const EdgeInsets.all(16),
decoration: BoxDecoration(
color: active
? isDark
? const Color(0xFF0D2024)
    : const Color(0xFFEAF7F2)
    : isDark
? const Color(0xFF0B151F)
    : Colors.white,
borderRadius: BorderRadius.circular(21),
border: Border.all(
color: active
? AppColors.primary.withValues(alpha: 0.13)
    : isDark
? Colors.white.withValues(alpha: 0.045)
    : Colors.black.withValues(alpha: 0.045),
),
),
child: Row(
children: [
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Row(
children: [
Flexible(
child: Text(
milestone.title,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 14,
fontWeight: FontWeight.w700,
color: isDark
? Colors.white
    : const Color(0xFF10201F),
),
),
),
if (active) ...[
const SizedBox(width: 6),
Container(
width: 5,
height: 5,
decoration: const BoxDecoration(
color: AppColors.primary,
shape: BoxShape.circle,
),
),
],
],
),
const SizedBox(height: 5),
Text(
milestone.desc,
style: GoogleFonts.inter(
fontSize: 11.5,
height: 1.35,
fontWeight: FontWeight.w500,
color: active
? isDark
? Colors.white54
    : Colors.black54
    : isDark
? Colors.white30
    : Colors.black45,
),
),
],
),
),
const SizedBox(width: 8),
Icon(
Iconsax.arrow_right_3,
size: 15,
color: active
? AppColors.primary.withValues(alpha: 0.65)
    : isDark
? Colors.white24
    : Colors.black26,
),
],
),
),
),
],
),
);
}
}

// ─────────────────────────────────────────────────────────────────────────────
// BOTTOM MESSAGE
// ─────────────────────────────────────────────────────────────────────────────

class _BottomMessage extends StatelessWidget {
const _BottomMessage({
required this.isDark,
required this.days,
});

final bool isDark;
final int days;

@override
Widget build(BuildContext context) {
return Container(
padding: const EdgeInsets.all(18),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(23),
gradient: LinearGradient(
colors: isDark
? const [
Color(0xFF12312F),
Color(0xFF0D2028),
]
    : const [
Color(0xFFDDF5ED),
Color(0xFFEAF6F3),
],
begin: Alignment.topLeft,
end: Alignment.bottomRight,
),
border: Border.all(
color: AppColors.primary.withValues(alpha: 0.12),
),
),
child: Row(
children: [
Container(
width: 42,
height: 42,
decoration: BoxDecoration(
color: AppColors.primary.withValues(alpha: 0.12),
shape: BoxShape.circle,
),
child: const Icon(
Iconsax.heart5,
color: AppColors.primary,
size: 19,
),
),
const SizedBox(width: 12),
Expanded(
child: Text(
days == 0
? 'Сегодня — начало твоего нового пути.'
    : '$days ${_daysWord(days)} — это уже реальный результат. Продолжай.',
style: GoogleFonts.inter(
fontSize: 13,
height: 1.4,
fontWeight: FontWeight.w600,
color: isDark
? Colors.white
    : const Color(0xFF10201F),
),
),
),
],
),
);
}

String _daysWord(int days) {
if (days % 10 == 1 && days % 100 != 11) return 'день';
if ([2, 3, 4].contains(days % 10) &&
![12, 13, 14].contains(days % 100)) {
return 'дня';
}
return 'дней';
}
}

// ─────────────────────────────────────────────────────────────────────────────
// BACK BUTTON
// ─────────────────────────────────────────────────────────────────────────────

class _RoundButton extends StatelessWidget {
const _RoundButton({
required this.icon,
required this.isDark,
required this.onTap,
});

final IconData icon;
final bool isDark;
final VoidCallback onTap;

@override
Widget build(BuildContext context) {
return Material(
color: Colors.transparent,
child: InkWell(
onTap: onTap,
borderRadius: BorderRadius.circular(15),
child: Ink(
width: 44,
height: 44,
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.055)
    : Colors.white,
borderRadius: BorderRadius.circular(15),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.06)
    : Colors.black.withValues(alpha: 0.045),
),
),
child: Icon(
icon,
size: 17,
color: isDark
? Colors.white
    : const Color(0xFF10201F),
),
),
),
);
}
}

// ─────────────────────────────────────────────────────────────────────────────
// MODEL
// ─────────────────────────────────────────────────────────────────────────────

class _Milestone {
final String title;
final String desc;
final bool unlocked;
final IconData icon;

const _Milestone({
required this.title,
required this.desc,
required this.unlocked,
required this.icon,
});
}

