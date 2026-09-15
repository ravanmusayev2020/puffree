
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/theme/app_theme.dart';
import '../../data/services/motivation_service.dart';

class LevelUpDialog extends StatelessWidget {
final int level;
final String levelTitle;
final String emoji;

const LevelUpDialog({
super.key,
required this.level,
required this.levelTitle,
required this.emoji,
});

static Future<void> show(
BuildContext context, {
required int level,
required String levelTitle,
required String emoji,
}) {
return showDialog(
context: context,
barrierDismissible: false,
barrierColor: Colors.black.withValues(alpha: 0.60),
builder: (_) => LevelUpDialog(
level: level,
levelTitle: levelTitle,
emoji: emoji,
),
);
}

@override
Widget build(BuildContext context) {
final isDark = Theme.of(context).brightness == Brightness.dark;

final primaryText =
isDark ? Colors.white : AppColors.textPrimaryLight;

final secondaryText =
isDark
? AppColors.textSecondaryDark
    : AppColors.textSecondaryLight;

final surface =
isDark ? AppColors.cardDark : Colors.white;

return Dialog(
backgroundColor: Colors.transparent,
insetPadding: const EdgeInsets.symmetric(horizontal: 22),
child: Container(
decoration: BoxDecoration(
color: surface,
borderRadius: BorderRadius.circular(32),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.07)
    : Colors.black.withValues(alpha: 0.045),
),
boxShadow: [
BoxShadow(
color: Colors.black.withValues(
alpha: isDark ? 0.48 : 0.16,
),
blurRadius: 45,
spreadRadius: -8,
offset: const Offset(0, 20),
),
],
),
child: ClipRRect(
borderRadius: BorderRadius.circular(32),
child: Stack(
children: [
// ─────────────────────────────
// Ambient glow
// ─────────────────────────────
Positioned(
top: -90,
left: -50,
right: -50,
child: IgnorePointer(
child: Container(
height: 210,
decoration: BoxDecoration(
gradient: RadialGradient(
colors: [
AppColors.primary.withValues(
alpha: isDark ? 0.16 : 0.09,
),
Colors.transparent,
],
),
),
),
),
),

Padding(
padding: const EdgeInsets.fromLTRB(
24,
28,
24,
24,
),
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
// ─────────────────────────
// Achievement badge
// ─────────────────────────
_LevelBadge(
emoji: emoji,
isDark: isDark,
)
    .animate()
    .scale(
duration: 550.ms,
curve: Curves.easeOutBack,
)
    .fadeIn(duration: 250.ms)
    .then(delay: 150.ms)
    .shake(
hz: 1.5,
duration: 500.ms,
curve: Curves.easeInOut,
),

const SizedBox(height: 22),

// ─────────────────────────
// Small eyebrow
// ─────────────────────────
Text(
'НОВОЕ ДОСТИЖЕНИЕ',
style: GoogleFonts.inter(
fontSize: 10,
fontWeight: FontWeight.w800,
letterSpacing: 1.5,
color: AppColors.primary,
),
)
    .animate()
    .fadeIn(
delay: 180.ms,
duration: 300.ms,
),

const SizedBox(height: 8),

// ─────────────────────────
// Title
// ─────────────────────────
Text(
'Новый уровень!',
textAlign: TextAlign.center,
style: GoogleFonts.inter(
fontSize: 27,
height: 1.1,
fontWeight: FontWeight.w800,
letterSpacing: -0.7,
color: primaryText,
),
)
    .animate()
    .fadeIn(
delay: 220.ms,
duration: 320.ms,
)
    .slideY(
begin: 0.16,
end: 0,
curve: Curves.easeOutCubic,
),

const SizedBox(height: 8),

// ─────────────────────────
// Level title
// ─────────────────────────
Text(
levelTitle,
textAlign: TextAlign.center,
maxLines: 2,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 18,
height: 1.25,
fontWeight: FontWeight.w700,
color: AppColors.primary,
),
)
    .animate()
    .fadeIn(
delay: 280.ms,
duration: 320.ms,
),

const SizedBox(height: 14),

// ─────────────────────────
// Level badge
// ─────────────────────────
Container(
padding: const EdgeInsets.symmetric(
horizontal: 13,
vertical: 7,
),
decoration: BoxDecoration(
color: AppColors.primary.withValues(
alpha: isDark ? 0.12 : 0.08,
),
borderRadius: BorderRadius.circular(999),
border: Border.all(
color: AppColors.primary.withValues(
alpha: 0.18,
),
),
),
child: Row(
mainAxisSize: MainAxisSize.min,
children: [
Icon(
Icons.auto_awesome_rounded,
size: 14,
color: AppColors.primary,
),
const SizedBox(width: 6),
Text(
'Уровень $level',
style: GoogleFonts.inter(
fontSize: 12,
fontWeight: FontWeight.w700,
color: AppColors.primary,
),
),
],
),
)
    .animate()
    .fadeIn(
delay: 330.ms,
duration: 300.ms,
)
    .scale(
begin: const Offset(0.9, 0.9),
curve: Curves.easeOutBack,
),

const SizedBox(height: 22),

// ─────────────────────────
// Motivation card
// ─────────────────────────
Container(
width: double.infinity,
padding: const EdgeInsets.fromLTRB(
17,
16,
17,
16,
),
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.045)
    : Colors.black.withValues(alpha: 0.025),
borderRadius: BorderRadius.circular(19),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.055)
    : Colors.black.withValues(alpha: 0.04),
),
),
child: Text(
MotivationService.getLevelUpMessage(level),
textAlign: TextAlign.center,
style: GoogleFonts.inter(
fontSize: 14,
height: 1.5,
fontWeight: FontWeight.w500,
color: isDark
? Colors.white.withValues(alpha: 0.78)
    : AppColors.textPrimaryLight,
),
),
)
    .animate()
    .fadeIn(
delay: 400.ms,
duration: 350.ms,
)
    .slideY(
begin: 0.1,
end: 0,
curve: Curves.easeOutCubic,
),

const SizedBox(height: 22),

// ─────────────────────────
// Divider
// ─────────────────────────
Container(
height: 1,
width: double.infinity,
color: isDark
? Colors.white.withValues(alpha: 0.055)
    : Colors.black.withValues(alpha: 0.045),
),

const SizedBox(height: 22),

// ─────────────────────────
// CTA
// ─────────────────────────
SizedBox(
width: double.infinity,
height: 54,
child: Material(
color: Colors.transparent,
child: InkWell(
onTap: () => Navigator.pop(context),
borderRadius: BorderRadius.circular(18),
child: Ink(
decoration: BoxDecoration(
gradient: LinearGradient(
begin: Alignment.topLeft,
end: Alignment.bottomRight,
colors: [
AppColors.primary,
AppColors.primary.withValues(
alpha: 0.82,
),
],
),
borderRadius: BorderRadius.circular(18),
boxShadow: [
BoxShadow(
color: AppColors.primary.withValues(
alpha: 0.24,
),
blurRadius: 18,
spreadRadius: -4,
offset: const Offset(0, 8),
),
],
),
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text(
'Продолжить',
style: GoogleFonts.inter(
fontSize: 15.5,
fontWeight: FontWeight.w700,
color: Colors.white,
),
),
const SizedBox(width: 8),
const Icon(
Icons.arrow_forward_rounded,
size: 18,
color: Colors.white,
),
],
),
),
),
),
)
    .animate()
    .fadeIn(
delay: 480.ms,
duration: 300.ms,
)
    .slideY(
begin: 0.1,
end: 0,
curve: Curves.easeOutCubic,
),
],
),
),
],
),
),
)
    .animate()
    .fadeIn(duration: 220.ms)
    .scale(
begin: const Offset(0.92, 0.92),
end: const Offset(1, 1),
duration: 450.ms,
curve: Curves.easeOutBack,
),
);
}
}

class _LevelBadge extends StatelessWidget {
final String emoji;
final bool isDark;

const _LevelBadge({
required this.emoji,
required this.isDark,
});

@override
Widget build(BuildContext context) {
return SizedBox(
width: 112,
height: 112,
child: Stack(
alignment: Alignment.center,
children: [
// Outer glow
Container(
width: 112,
height: 112,
decoration: BoxDecoration(
shape: BoxShape.circle,
color: AppColors.primary.withValues(
alpha: isDark ? 0.075 : 0.055,
),
),
),

// Middle ring
Container(
width: 92,
height: 92,
decoration: BoxDecoration(
shape: BoxShape.circle,
gradient: RadialGradient(
colors: [
AppColors.primary.withValues(alpha: 0.18),
AppColors.primary.withValues(alpha: 0.07),
],
),
border: Border.all(
color: AppColors.primary.withValues(
alpha: 0.18,
),
width: 1,
),
),
),

// Emoji container
Container(
width: 72,
height: 72,
decoration: BoxDecoration(
shape: BoxShape.circle,
color: isDark
? Colors.white.withValues(alpha: 0.055)
    : Colors.white.withValues(alpha: 0.85),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.08)
    : Colors.black.withValues(alpha: 0.045),
),
boxShadow: [
BoxShadow(
color: AppColors.primary.withValues(
alpha: 0.16,
),
blurRadius: 18,
spreadRadius: -4,
),
],
),
alignment: Alignment.center,
child: Text(
emoji,
style: const TextStyle(
fontSize: 43,
),
),
),

// Sparkle
Positioned(
top: 7,
right: 12,
child: Icon(
Icons.auto_awesome_rounded,
size: 19,
color: AppColors.primary.withValues(alpha: 0.9),
),
),

Positioned(
bottom: 12,
left: 9,
child: Icon(
Icons.auto_awesome_rounded,
size: 11,
color: AppColors.primary.withValues(alpha: 0.55),
),
),
],
),
);
}
}

