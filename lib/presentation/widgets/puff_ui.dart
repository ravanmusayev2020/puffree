
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../core/theme/app_theme.dart';

/// ─────────────────────────────────────────────────────────────
/// PuffCard
/// Premium reusable surface for the Puffree design system.
/// ─────────────────────────────────────────────────────────────

class PuffCard extends StatelessWidget {
const PuffCard({
super.key,
required this.child,
this.padding = const EdgeInsets.all(18),
this.gradient,
this.borderColor,
this.onTap,
this.radius,
this.elevation = true,
});

final Widget child;
final EdgeInsets padding;
final Gradient? gradient;
final Color? borderColor;
final VoidCallback? onTap;
final double? radius;
final bool elevation;

@override
Widget build(BuildContext context) {
final isDark = Theme.of(context).brightness == Brightness.dark;
final cardRadius = radius ?? AppRadii.card;

final card = AnimatedContainer(
duration: const Duration(milliseconds: 220),
curve: Curves.easeOutCubic,
padding: padding,
decoration: BoxDecoration(
color: gradient == null
? (isDark ? AppColors.cardDark : AppColors.cardLight)
    : null,
gradient: gradient,
borderRadius: BorderRadius.circular(cardRadius),
border: Border.all(
width: 1,
color: borderColor ??
(isDark
? Colors.white.withValues(alpha: 0.065)
    : Colors.black.withValues(alpha: 0.045)),
),
boxShadow: elevation
? [
BoxShadow(
color: Colors.black.withValues(
alpha: isDark ? 0.16 : 0.055,
),
blurRadius: isDark ? 24 : 20,
spreadRadius: -6,
offset: const Offset(0, 9),
),
]
    : null,
),
child: child,
);

if (onTap == null) {
return card;
}

return Material(
color: Colors.transparent,
child: InkWell(
onTap: onTap,
borderRadius: BorderRadius.circular(cardRadius),
splashColor: AppColors.primary.withValues(alpha: 0.055),
highlightColor: AppColors.primary.withValues(alpha: 0.025),
child: card,
),
);
}
}

/// ─────────────────────────────────────────────────────────────
/// PuffHeader
/// ─────────────────────────────────────────────────────────────

class PuffHeader extends StatelessWidget {
const PuffHeader({
super.key,
required this.title,
this.subtitle,
this.trailing,
});

final String title;
final String? subtitle;
final Widget? trailing;

@override
Widget build(BuildContext context) {
final isDark = Theme.of(context).brightness == Brightness.dark;

return Row(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
if (subtitle != null) ...[
Text(
subtitle!,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 12,
height: 1.2,
fontWeight: FontWeight.w600,
letterSpacing: 0.1,
color: isDark
? AppColors.textSecondaryDark
    : AppColors.textSecondaryLight,
),
),
const SizedBox(height: 5),
],
Text(
title,
maxLines: 2,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 25,
height: 1.1,
fontWeight: FontWeight.w800,
letterSpacing: -0.7,
color: isDark
? Colors.white
    : AppColors.textPrimaryLight,
),
),
],
),
),
if (trailing != null) ...[
const SizedBox(width: 14),
trailing!,
],
],
);
}
}

/// ─────────────────────────────────────────────────────────────
/// StatPill
/// ─────────────────────────────────────────────────────────────

class StatPill extends StatelessWidget {
const StatPill({
super.key,
required this.icon,
required this.label,
required this.value,
this.unit = '',
required this.color,
});

final IconData icon;
final String label;
final String value;
final String unit;
final Color color;

@override
Widget build(BuildContext context) {
final isDark = Theme.of(context).brightness == Brightness.dark;

final primaryText =
isDark ? Colors.white : AppColors.textPrimaryLight;

final secondaryText =
isDark
? AppColors.textSecondaryDark
    : AppColors.textSecondaryLight;

return PuffCard(
padding: const EdgeInsets.fromLTRB(15, 15, 15, 16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Container(
width: 38,
height: 38,
decoration: BoxDecoration(
color: color.withValues(alpha: isDark ? 0.13 : 0.10),
borderRadius: BorderRadius.circular(12),
border: Border.all(
color: color.withValues(alpha: 0.10),
),
),
child: Icon(
icon,
size: 19,
color: color,
),
),

const SizedBox(height: 14),

Text(
label,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 11.5,
fontWeight: FontWeight.w600,
color: secondaryText,
),
),

const SizedBox(height: 5),

Row(
crossAxisAlignment: CrossAxisAlignment.baseline,
textBaseline: TextBaseline.alphabetic,
children: [
Flexible(
child: Text(
value,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.outfit(
fontSize: 23,
height: 1,
fontWeight: FontWeight.w800,
letterSpacing: -0.5,
color: primaryText,
),
),
),
if (unit.isNotEmpty) ...[
const SizedBox(width: 4),
Text(
unit,
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w600,
color: secondaryText,
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

/// ─────────────────────────────────────────────────────────────
/// SoftProgressBar
/// ─────────────────────────────────────────────────────────────

class SoftProgressBar extends StatelessWidget {
const SoftProgressBar({
super.key,
required this.value,
this.color = AppColors.primary,
this.height = 9,
});

final double value;
final Color color;
final double height;

@override
Widget build(BuildContext context) {
final isDark = Theme.of(context).brightness == Brightness.dark;

final safeValue = value.clamp(0.0, 1.0);

return ClipRRect(
borderRadius: BorderRadius.circular(999),
child: Stack(
children: [
Container(
height: height,
width: double.infinity,
color: isDark
? Colors.white.withValues(alpha: 0.075)
    : Colors.black.withValues(alpha: 0.055),
),
FractionallySizedBox(
widthFactor: safeValue,
child: Container(
height: height,
decoration: BoxDecoration(
gradient: LinearGradient(
colors: [
color,
color.withValues(alpha: 0.72),
],
),
borderRadius: BorderRadius.circular(999),
boxShadow: [
BoxShadow(
color: color.withValues(alpha: 0.25),
blurRadius: 7,
spreadRadius: -2,
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

/// ─────────────────────────────────────────────────────────────
/// PrimaryCta
/// ─────────────────────────────────────────────────────────────

class PrimaryCta extends StatelessWidget {
const PrimaryCta({
super.key,
required this.label,
required this.onPressed,
this.icon,
this.color,
});

final String label;
final VoidCallback? onPressed;
final IconData? icon;
final Color? color;

@override
Widget build(BuildContext context) {
final buttonColor = color ?? AppColors.primary;

final enabled = onPressed != null;

return SizedBox(
width: double.infinity,
height: 56,
child: Material(
color: Colors.transparent,
child: InkWell(
onTap: onPressed,
borderRadius: BorderRadius.circular(18),
child: Ink(
decoration: BoxDecoration(
gradient: enabled
? LinearGradient(
begin: Alignment.topLeft,
end: Alignment.bottomRight,
colors: [
buttonColor,
buttonColor.withValues(alpha: 0.84),
],
)
    : null,
color: enabled
? null
    : buttonColor.withValues(alpha: 0.35),
borderRadius: BorderRadius.circular(18),
boxShadow: enabled
? [
BoxShadow(
color: buttonColor.withValues(alpha: 0.23),
blurRadius: 18,
spreadRadius: -5,
offset: const Offset(0, 8),
),
]
    : null,
),
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
if (icon != null) ...[
Icon(
icon,
size: 19,
color: Colors.white,
),
const SizedBox(width: 8),
],
Text(
label,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 15.5,
fontWeight: FontWeight.w700,
color: Colors.white,
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

/// ─────────────────────────────────────────────────────────────
/// SosFab
/// ─────────────────────────────────────────────────────────────

class SosFab extends StatelessWidget {
const SosFab({
super.key,
required this.onPressed,
});

final VoidCallback onPressed;

@override
Widget build(BuildContext context) {
return FloatingActionButton.extended(
onPressed: onPressed,
elevation: 8,
backgroundColor: AppColors.coral,
foregroundColor: Colors.white,
icon: const Icon(
Iconsax.heart,
size: 19,
),
label: Text(
'SOS',
style: GoogleFonts.inter(
fontSize: 13,
fontWeight: FontWeight.w800,
letterSpacing: 0.2,
),
),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(18),
),
);
}
}

/// ─────────────────────────────────────────────────────────────
/// AvatarChip
/// ─────────────────────────────────────────────────────────────

class AvatarChip extends StatelessWidget {
const AvatarChip({
super.key,
required this.emoji,
this.size = 48,
});

final String emoji;
final double size;

@override
Widget build(BuildContext context) {
return Container(
width: size,
height: size,
decoration: BoxDecoration(
shape: BoxShape.circle,
gradient: const LinearGradient(
begin: Alignment.topLeft,
end: Alignment.bottomRight,
colors: AppColors.levelGradient,
),
boxShadow: [
BoxShadow(
color: AppColors.levelGradient.first.withValues(
alpha: 0.18,
),
blurRadius: 14,
spreadRadius: -3,
offset: const Offset(0, 5),
),
],
border: Border.all(
color: Colors.white.withValues(alpha: 0.16),
),
),
alignment: Alignment.center,
child: Text(
emoji,
style: TextStyle(
fontSize: size * 0.42,
),
),
);
}
}

/// ─────────────────────────────────────────────────────────────
/// App avatars
/// ─────────────────────────────────────────────────────────────

class AppAvatars {
static const presets = [
'🌿',
'🌊',
'🔥',
'🌙',
'☀️',
'🦊',
'🦁',
'🌸',
];
}

