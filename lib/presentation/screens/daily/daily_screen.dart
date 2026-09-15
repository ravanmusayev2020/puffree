
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/theme/app_theme.dart';
import '../../../data/bloc/daily/daily_bloc.dart';
import '../../../data/bloc/daily/daily_event.dart';
import '../../../data/bloc/daily/daily_state.dart';
import '../../../data/bloc/premium/premium_bloc.dart';
import '../../../data/bloc/progress/progress_bloc.dart';
import '../../../data/bloc/progress/progress_event.dart';
import '../../../data/bloc/progress/progress_state.dart';
import '../../../data/models/daily_mission.dart';
import '../../../l10n/app_localizations.dart';
import '../../widgets/journal_sheet.dart';
import '../craving/craving_screen.dart';
import '../premium/premium_screen.dart';

class DailyScreen extends StatefulWidget {
const DailyScreen({super.key});

@override
State<DailyScreen> createState() => _DailyScreenState();
}

class _DailyScreenState extends State<DailyScreen> {
@override
void initState() {
super.initState();

final progressState = context.read<ProgressBloc>().state;

final day = progressState is ProgressLoaded
? progressState.progress.daysSinceQuit
    : 0;

context.read<DailyBloc>().add(
LoadDailyMissions(day),
);
}

Future<void> _openMission(DailyMission mission) async {
final dailyBloc = context.read<DailyBloc>();
final progressBloc = context.read<ProgressBloc>();

// ─────────────────────────────────────────────
// PREMIUM CHECK
// ─────────────────────────────────────────────

if (mission.isPremium) {
final premium = context.read<PremiumBloc>().state;

if (!premium.hasAccess) {
if (!mounted) return;

await Navigator.push(
context,
MaterialPageRoute(
builder: (_) => const PremiumScreen(),
),
);

return;
}
}

// Already completed
if (mission.isCompleted) {
return;
}

var completed = false;

// ─────────────────────────────────────────────
// BREATHING / MEDITATION
// ─────────────────────────────────────────────

if (mission.id == 'breathe' || mission.id == 'meditation') {
if (!mounted) return;

await Navigator.push(
context,
MaterialPageRoute(
builder: (_) => const CravingScreen(
initialTab: 1,
),
),
);

completed = true;
}

// ─────────────────────────────────────────────
// JOURNAL / REFLECTION
// ─────────────────────────────────────────────

else if (mission.id == 'journal' || mission.id == 'reflect') {
if (!mounted) return;

completed = await JournalSheet.show(context);
}

// ─────────────────────────────────────────────
// COMPLETE
// ─────────────────────────────────────────────

else {
completed = true;
}

if (!mounted) return;

if (completed) {
dailyBloc.add(
CompleteDailyMission(mission.id),
);

progressBloc.add(
CompleteMission(mission.id),
);
}
}

@override
Widget build(BuildContext context) {
final isDark =
Theme.of(context).brightness == Brightness.dark;

final l10n = AppLocalizations.of(context);

return Scaffold(
backgroundColor: isDark
? const Color(0xFF071019)
    : const Color(0xFFF5F8F7),
body: SafeArea(
child: BlocBuilder<DailyBloc, DailyState>(
builder: (context, state) {
if (state is DailyLoading) {
return const Center(
child: CircularProgressIndicator(
color: AppColors.primary,
),
);
}

if (state is DailyLoaded) {
return _buildContent(
context,
state,
l10n,
isDark,
);
}

return const SizedBox.shrink();
},
),
),
);
}

Widget _buildContent(
BuildContext context,
DailyLoaded state,
AppLocalizations l10n,
bool isDark,
) {
final completed = state.completedCount;
final total = state.missions.length;

final progress = total == 0
? 0.0
    : (completed / total).clamp(0.0, 1.0);

return CustomScrollView(
physics: const BouncingScrollPhysics(),
slivers: [
SliverPadding(
padding: const EdgeInsets.fromLTRB(
18,
14,
18,
36,
),
sliver: SliverList(
delegate: SliverChildListDelegate(
[
// ───────────────────────────────
// HEADER
// ───────────────────────────────

_DailyHeader(
l10n: l10n,
isDark: isDark,
),

const SizedBox(height: 20),

// ───────────────────────────────
// TODAY HERO
// ───────────────────────────────

_TodayHero(
completed: completed,
total: total,
progress: progress,
l10n: l10n,
isDark: isDark,
).animate().fadeIn().slideY(
begin: 0.05,
),

const SizedBox(height: 18),

// ───────────────────────────────
// JOURNAL
// ───────────────────────────────

_JournalCard(
l10n: l10n,
isDark: isDark,
onTap: () => JournalSheet.show(context),
).animate().fadeIn(
delay: 80.ms,
),

const SizedBox(height: 28),

// ───────────────────────────────
// SECTION
// ───────────────────────────────

_SectionTitle(
title: l10n.missions,
subtitle: l10n.completedOf(
completed,
total,
),
isDark: isDark,
),

const SizedBox(height: 14),

// ───────────────────────────────
// MISSIONS
// ───────────────────────────────

...List.generate(
state.missions.length,
(index) {
final mission = state.missions[index];

return _MissionCard(
mission: mission,
title: _title(
l10n,
mission.titleKey,
),
desc: _desc(
l10n,
mission.descriptionKey,
),
isDark: isDark,
onTap: () => _openMission(
mission,
),
)
    .animate()
    .fadeIn(
delay: (70 * index).ms,
)
    .slideY(
begin: 0.06,
);
},
),

const SizedBox(height: 8),

_BottomProgressCard(
completed: completed,
total: total,
progress: progress,
isDark: isDark,
),
],
),
),
),
],
);
}

// ─────────────────────────────────────────────
// LOCALIZATION
// ─────────────────────────────────────────────

String _title(
AppLocalizations l10n,
String key,
) {
return switch (key) {
'mission_breathe' => l10n.missionBreathe,
'mission_water' => l10n.missionWater,
'mission_walk' => l10n.missionWalk,
'mission_journal' => l10n.missionJournal,
'mission_meditation' => l10n.missionMeditation,
'mission_deep_focus' => l10n.missionFocus,
'mission_reflect' => l10n.missionReflect,
'mission_help' => l10n.missionHelp,
_ => key,
};
}

String _desc(
AppLocalizations l10n,
String key,
) {
return switch (key) {
'mission_breathe_desc' => l10n.missionBreatheDesc,
'mission_water_desc' => l10n.missionWaterDesc,
'mission_walk_desc' => l10n.missionWalkDesc,
'mission_journal_desc' => l10n.missionJournalDesc,
'mission_meditation_desc' =>
l10n.missionMeditationDesc,
'mission_deep_focus_desc' =>
l10n.missionFocusDesc,
'mission_reflect_desc' =>
l10n.missionReflectDesc,
'mission_help_desc' => l10n.missionHelpDesc,
_ => '',
};
}
}

// ═════════════════════════════════════════════════════════════════════════════
// HEADER
// ═════════════════════════════════════════════════════════════════════════════

class _DailyHeader extends StatelessWidget {
const _DailyHeader({
required this.l10n,
required this.isDark,
});

final AppLocalizations l10n;
final bool isDark;

@override
Widget build(BuildContext context) {
return Row(
children: [
Expanded(
child: Column(
crossAxisAlignment:
CrossAxisAlignment.start,
children: [
Text(
l10n.missions,
style: GoogleFonts.inter(
fontSize: 29,
fontWeight: FontWeight.w800,
letterSpacing: -1.1,
color: isDark
? Colors.white
    : const Color(0xFF10201F),
),
),
const SizedBox(height: 4),
Text(
'Маленькие шаги. Большие изменения.',
style: GoogleFonts.inter(
fontSize: 12.5,
fontWeight: FontWeight.w500,
color: isDark
? Colors.white38
    : Colors.black45,
),
),
],
),
),
Container(
width: 46,
height: 46,
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.055)
    : Colors.white,
borderRadius: BorderRadius.circular(16),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.06)
    : Colors.black.withValues(alpha: 0.045),
),
),
child: Icon(
Iconsax.calendar_1,
size: 20,
color: isDark
? Colors.white70
    : const Color(0xFF18312F),
),
),
],
);
}
}

// ═════════════════════════════════════════════════════════════════════════════
// TODAY HERO
// ═════════════════════════════════════════════════════════════════════════════

class _TodayHero extends StatelessWidget {
const _TodayHero({
required this.completed,
required this.total,
required this.progress,
required this.l10n,
required this.isDark,
});

final int completed;
final int total;
final double progress;
final AppLocalizations l10n;
final bool isDark;

@override
Widget build(BuildContext context) {
final percentage =
(progress * 100).toInt();

return Container(
padding: const EdgeInsets.all(21),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(30),
gradient: LinearGradient(
colors: isDark
? const [
Color(0xFF10312F),
Color(0xFF10252D),
Color(0xFF0C1722),
]
    : const [
Color(0xFFDDF6EE),
Color(0xFFEFF8F5),
Color(0xFFE5F2EF),
],
begin: Alignment.topLeft,
end: Alignment.bottomRight,
),
border: Border.all(
color: AppColors.primary.withValues(
alpha: 0.15,
),
),
boxShadow: [
BoxShadow(
color: AppColors.primary.withValues(
alpha: isDark ? 0.10 : 0.05,
),
blurRadius: 32,
offset: const Offset(0, 15),
),
],
),
child: Row(
children: [
SizedBox(
width: 86,
height: 86,
child: Stack(
alignment: Alignment.center,
children: [
SizedBox(
width: 86,
height: 86,
child: CircularProgressIndicator(
value: progress,
strokeWidth: 7,
backgroundColor: isDark
? Colors.white.withValues(
alpha: 0.08,
)
    : Colors.black.withValues(
alpha: 0.055,
),
valueColor:
const AlwaysStoppedAnimation(
AppColors.primary,
),
),
),
Column(
mainAxisSize: MainAxisSize.min,
children: [
Text(
'$percentage%',
style: GoogleFonts.outfit(
fontSize: 22,
fontWeight: FontWeight.w800,
color: isDark
? Colors.white
    : const Color(
0xFF10201F,
),
),
),
Text(
'today',
style: GoogleFonts.inter(
fontSize: 9,
fontWeight: FontWeight.w600,
color: isDark
? Colors.white38
    : Colors.black45,
),
),
],
),
],
),
),

const SizedBox(width: 18),

Expanded(
child: Column(
crossAxisAlignment:
CrossAxisAlignment.start,
children: [
Container(
padding:
const EdgeInsets.symmetric(
horizontal: 9,
vertical: 5,
),
decoration: BoxDecoration(
color: AppColors.primary
    .withValues(alpha: 0.10),
borderRadius:
BorderRadius.circular(999),
),
child: Text(
'TODAY',
style: GoogleFonts.inter(
fontSize: 9,
fontWeight: FontWeight.w800,
letterSpacing: 1,
color: AppColors.primary,
),
),
),
const SizedBox(height: 10),
Text(
completed == total && total > 0
? 'Всё выполнено'
    : 'Твой план на сегодня',
style: GoogleFonts.inter(
fontSize: 19,
fontWeight: FontWeight.w800,
letterSpacing: -0.4,
color: isDark
? Colors.white
    : const Color(
0xFF10201F,
),
),
),
const SizedBox(height: 5),
Text(
l10n.completedOf(
completed,
total,
),
style: GoogleFonts.inter(
fontSize: 12,
fontWeight: FontWeight.w500,
color: isDark
? Colors.white54
    : Colors.black45,
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

// ═════════════════════════════════════════════════════════════════════════════
// JOURNAL
// ═════════════════════════════════════════════════════════════════════════════

class _JournalCard extends StatelessWidget {
const _JournalCard({
required this.l10n,
required this.isDark,
required this.onTap,
});

final AppLocalizations l10n;
final bool isDark;
final VoidCallback onTap;

@override
Widget build(BuildContext context) {
return Material(
color: Colors.transparent,
child: InkWell(
onTap: onTap,
borderRadius: BorderRadius.circular(23),
child: Ink(
padding: const EdgeInsets.all(16),
decoration: BoxDecoration(
color: isDark
? const Color(0xFF0D1823)
    : Colors.white,
borderRadius: BorderRadius.circular(23),
border: Border.all(
color: isDark
? Colors.white.withValues(
alpha: 0.05,
)
    : Colors.black.withValues(
alpha: 0.045,
),
),
boxShadow: [
BoxShadow(
color: Colors.black.withValues(
alpha: isDark ? 0.10 : 0.025,
),
blurRadius: 22,
offset: const Offset(0, 8),
),
],
),
child: Row(
children: [
Container(
width: 46,
height: 46,
decoration: BoxDecoration(
gradient: LinearGradient(
colors: [
AppColors.accent.withValues(
alpha: 0.18,
),
AppColors.accent.withValues(
alpha: 0.08,
),
],
),
borderRadius:
BorderRadius.circular(14),
),
child: const Icon(
Iconsax.book_1,
color: AppColors.accent,
size: 20,
),
),
const SizedBox(width: 13),
Expanded(
child: Column(
crossAxisAlignment:
CrossAxisAlignment.start,
children: [
Text(
l10n.moodCheck,
style: GoogleFonts.inter(
fontSize: 14,
fontWeight: FontWeight.w700,
color: isDark
? Colors.white
    : const Color(
0xFF10201F,
),
),
),
const SizedBox(height: 3),
Text(
l10n.moodCheckHint,
maxLines: 2,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 11.5,
height: 1.3,
color: isDark
? Colors.white38
    : Colors.black45,
),
),
],
),
),
const SizedBox(width: 8),
Container(
width: 32,
height: 32,
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(
alpha: 0.055,
)
    : Colors.black.withValues(
alpha: 0.04,
),
shape: BoxShape.circle,
),
child: Icon(
Iconsax.arrow_right_3,
size: 15,
color: isDark
? Colors.white60
    : Colors.black45,
),
),
],
),
),
),
);
}
}

// ═════════════════════════════════════════════════════════════════════════════
// SECTION TITLE
// ═════════════════════════════════════════════════════════════════════════════

class _SectionTitle extends StatelessWidget {
const _SectionTitle({
required this.title,
required this.subtitle,
required this.isDark,
});

final String title;
final String subtitle;
final bool isDark;

@override
Widget build(BuildContext context) {
return Row(
crossAxisAlignment:
CrossAxisAlignment.end,
children: [
Expanded(
child: Column(
crossAxisAlignment:
CrossAxisAlignment.start,
children: [
Text(
title,
style: GoogleFonts.inter(
fontSize: 20,
fontWeight: FontWeight.w800,
letterSpacing: -0.5,
color: isDark
? Colors.white
    : const Color(
0xFF10201F,
),
),
),
const SizedBox(height: 4),
Text(
subtitle,
style: GoogleFonts.inter(
fontSize: 11.5,
fontWeight: FontWeight.w500,
color: isDark
? Colors.white38
    : Colors.black45,
),
),
],
),
),
],
);
}
}

// ═════════════════════════════════════════════════════════════════════════════
// MISSION CARD
// ═════════════════════════════════════════════════════════════════════════════

class _MissionCard extends StatelessWidget {
const _MissionCard({
required this.mission,
required this.title,
required this.desc,
required this.isDark,
required this.onTap,
});

final DailyMission mission;
final String title;
final String desc;
final bool isDark;
final VoidCallback onTap;

@override
Widget build(BuildContext context) {
final completed = mission.isCompleted;

return Padding(
padding: const EdgeInsets.only(
bottom: 11,
),
child: Material(
color: Colors.transparent,
child: InkWell(
onTap: completed ? null : onTap,
borderRadius: BorderRadius.circular(23),
child: Ink(
padding: const EdgeInsets.all(15),
decoration: BoxDecoration(
color: completed
? isDark
? const Color(0xFF0C201F)
    : const Color(0xFFEAF8F3)
    : isDark
? const Color(0xFF0D1823)
    : Colors.white,
borderRadius: BorderRadius.circular(23),
border: Border.all(
color: completed
? AppColors.primary.withValues(
alpha: 0.20,
)
    : isDark
? Colors.white.withValues(
alpha: 0.05,
)
    : Colors.black.withValues(
alpha: 0.045,
),
),
boxShadow: [
BoxShadow(
color: Colors.black.withValues(
alpha: isDark ? 0.09 : 0.025,
),
blurRadius: 18,
offset: const Offset(0, 7),
),
],
),
child: Row(
children: [
// ─────────────────────────────
// ICON
// ─────────────────────────────

AnimatedContainer(
duration:
const Duration(milliseconds: 250),
width: 52,
height: 52,
decoration: BoxDecoration(
gradient: completed
? const LinearGradient(
colors: [
AppColors.primary,
AppColors.primaryLight,
],
)
    : LinearGradient(
colors: [
AppColors.primary
    .withValues(
alpha: 0.11,
),
AppColors.primary
    .withValues(
alpha: 0.055,
),
],
),
borderRadius:
BorderRadius.circular(16),
),
child: Center(
child: completed
? const Icon(
Iconsax.tick_circle5,
color: Colors.white,
size: 22,
)
    : Text(
mission.icon,
style:
const TextStyle(
fontSize: 23,
),
),
),
),

const SizedBox(width: 13),

// ─────────────────────────────
// CONTENT
// ─────────────────────────────

Expanded(
child: Column(
crossAxisAlignment:
CrossAxisAlignment.start,
children: [
Row(
children: [
Expanded(
child: Text(
title,
maxLines: 1,
overflow:
TextOverflow.ellipsis,
style:
GoogleFonts.inter(
fontSize: 14.5,
fontWeight:
FontWeight.w700,
letterSpacing: -0.15,
decoration: completed
? TextDecoration
    .lineThrough
    : null,
color: completed
? isDark
? Colors.white54
    : Colors.black45
    : isDark
? Colors.white
    : const Color(
0xFF10201F,
),
),
),
),

if (mission.isPremium)
_ProBadge(
isDark: isDark,
),
],
),

const SizedBox(height: 5),

Text(
desc,
maxLines: 2,
overflow:
TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 11.5,
height: 1.35,
fontWeight:
FontWeight.w500,
color: completed
? isDark
? Colors.white30
    : Colors.black38
    : isDark
? Colors.white54
    : Colors.black45,
),
),
],
),
),

const SizedBox(width: 8),

// ─────────────────────────────
// STATUS
// ─────────────────────────────

Container(
width: 31,
height: 31,
decoration: BoxDecoration(
color: completed
? AppColors.primary
    .withValues(
alpha: 0.10,
)
    : isDark
? Colors.white.withValues(
alpha: 0.045,
)
    : Colors.black.withValues(
alpha: 0.035,
),
shape: BoxShape.circle,
),
child: Icon(
completed
? Iconsax.tick_circle5
    : Iconsax.arrow_right_3,
size: 15,
color: completed
? AppColors.primary
    : isDark
? Colors.white38
    : Colors.black38,
),
),
],
),
),
),
),
);
}
}

// ═════════════════════════════════════════════════════════════════════════════
// PRO BADGE
// ═════════════════════════════════════════════════════════════════════════════

class _ProBadge extends StatelessWidget {
const _ProBadge({
required this.isDark,
});

final bool isDark;

@override
Widget build(BuildContext context) {
return Container(
margin: const EdgeInsets.only(
left: 6,
),
padding: const EdgeInsets.symmetric(
horizontal: 7,
vertical: 4,
),
decoration: BoxDecoration(
gradient: LinearGradient(
colors: [
AppColors.amber.withValues(
alpha: 0.18,
),
AppColors.amber.withValues(
alpha: 0.08,
),
],
),
borderRadius:
BorderRadius.circular(8),
border: Border.all(
color: AppColors.amber.withValues(
alpha: 0.15,
),
),
),
child: Row(
mainAxisSize: MainAxisSize.min,
children: [
const Icon(
Iconsax.crown_1,
size: 10,
color: AppColors.amber,
),
const SizedBox(width: 3),
Text(
'PRO',
style: GoogleFonts.inter(
fontSize: 9,
fontWeight: FontWeight.w800,
letterSpacing: 0.5,
color: AppColors.amber,
),
),
],
),
);
}
}

// ═════════════════════════════════════════════════════════════════════════════
// BOTTOM PROGRESS
// ═════════════════════════════════════════════════════════════════════════════

class _BottomProgressCard extends StatelessWidget {
const _BottomProgressCard({
required this.completed,
required this.total,
required this.progress,
required this.isDark,
});

final int completed;
final int total;
final double progress;
final bool isDark;

@override
Widget build(BuildContext context) {
if (total == 0) {
return const SizedBox.shrink();
}

final finished = completed == total;

return Container(
margin: const EdgeInsets.only(
top: 8,
),
padding: const EdgeInsets.all(18),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(23),
gradient: LinearGradient(
colors: isDark
? const [
Color(0xFF102A2A),
Color(0xFF0D1D27),
]
    : const [
Color(0xFFE1F6EF),
Color(0xFFEEF8F5),
],
begin: Alignment.topLeft,
end: Alignment.bottomRight,
),
border: Border.all(
color: AppColors.primary.withValues(
alpha: 0.12,
),
),
),
child: Row(
children: [
Container(
width: 42,
height: 42,
decoration: BoxDecoration(
color: AppColors.primary.withValues(
alpha: 0.12,
),
shape: BoxShape.circle,
),
child: Icon(
finished
? Iconsax.cup5
    : Iconsax.flash_15,
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
finished
? 'День завершён'
    : 'Продолжай в том же духе',
style: GoogleFonts.inter(
fontSize: 13,
fontWeight: FontWeight.w700,
color: isDark
? Colors.white
    : const Color(
0xFF10201F,
),
),
),
const SizedBox(height: 3),
Text(
'$completed из $total выполнено',
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w500,
color: isDark
? Colors.white38
    : Colors.black45,
),
),
],
),
),
Text(
'${(progress * 100).toInt()}%',
style: GoogleFonts.outfit(
fontSize: 20,
fontWeight: FontWeight.w800,
color: AppColors.primary,
),
),
],
),
);
}
}

