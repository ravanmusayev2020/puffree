
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../core/theme/app_theme.dart';

class CheckInSuccessDialog extends StatelessWidget {
final int streak;
final int days;

const CheckInSuccessDialog({
super.key,
required this.streak,
required this.days,
});

static Future<void> show(
BuildContext context, {
required int streak,
required int days,
}) {
return showDialog(
context: context,
barrierDismissible: true,
barrierColor: Colors.black.withValues(alpha: 0.58),
builder: (_) => CheckInSuccessDialog(
streak: streak,
days: days,
),
);
}

@override
Widget build(BuildContext context) {
final isDark = Theme.of(context).brightness == Brightness.dark;

final backgroundColor =
isDark ? AppColors.cardDark : Colors.white;

final primaryText =
isDark ? Colors.white : AppColors.textPrimaryLight;

final secondaryText =
isDark
? AppColors.textSecondaryDark
    : AppColors.textSecondaryLight;

return Dialog(
backgroundColor: Colors.transparent,
insetPadding: const EdgeInsets.symmetric(horizontal: 22),
child: Container(
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(32),
color: backgroundColor,
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.07)
    : Colors.black.withValues(alpha: 0.045),
),
boxShadow: [
BoxShadow(
color: Colors.black.withValues(
alpha: isDark ? 0.45 : 0.16,
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
// Subtle background glow.
Positioned(
top: -80,
left: -40,
right: -40,
child: IgnorePointer(
child: Container(
height: 180,
decoration: BoxDecoration(
gradient: RadialGradient(
colors: [
AppColors.success.withValues(
alpha: isDark ? 0.13 : 0.08,
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
26,
24,
24,
),
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
_SuccessIcon(
isDark: isDark,
)
    .animate()
    .scale(
duration: 500.ms,
curve: Curves.easeOutBack,
)
    .fadeIn(duration: 250.ms)
    .then(delay: 100.ms)
    .shimmer(
duration: 900.ms,
color: Colors.white.withValues(alpha: 0.28),
),

const SizedBox(height: 22),

Text(
'Отлично!',
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
delay: 140.ms,
duration: 300.ms,
)
    .slideY(
begin: 0.18,
end: 0,
curve: Curves.easeOutCubic,
),

const SizedBox(height: 8),

Text(
'Ещё один день без сигарет',
textAlign: TextAlign.center,
style: GoogleFonts.inter(
fontSize: 14.5,
height: 1.45,
fontWeight: FontWeight.w500,
color: secondaryText,
),
)
    .animate()
    .fadeIn(
delay: 220.ms,
duration: 300.ms,
),

const SizedBox(height: 25),

Row(
children: [
Expanded(
child: _MiniStat(
icon: Iconsax.flash_15,
label: 'Стрик',
value: '$streak',
isDark: isDark,
),
),
const SizedBox(width: 10),
Expanded(
child: _MiniStat(
icon: Iconsax.calendar_1,
label: 'Всего дней',
value: '$days',
isDark: isDark,
),
),
],
)
    .animate()
    .fadeIn(
delay: 320.ms,
duration: 350.ms,
)
    .slideY(
begin: 0.12,
end: 0,
curve: Curves.easeOutCubic,
),

const SizedBox(height: 22),

Container(
width: double.infinity,
height: 1,
color: isDark
? Colors.white.withValues(alpha: 0.055)
    : Colors.black.withValues(alpha: 0.045),
),

const SizedBox(height: 22),

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
AppColors.success,
AppColors.success.withValues(
alpha: 0.82,
),
],
),
borderRadius: BorderRadius.circular(18),
boxShadow: [
BoxShadow(
color: AppColors.success.withValues(
alpha: 0.25,
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
Iconsax.arrow_right_3,
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
delay: 430.ms,
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
duration: 420.ms,
curve: Curves.easeOutBack,
),
);
}
}

class _SuccessIcon extends StatelessWidget {
final bool isDark;

const _SuccessIcon({
required this.isDark,
});

@override
Widget build(BuildContext context) {
return SizedBox(
width: 94,
height: 94,
child: Stack(
alignment: Alignment.center,
children: [
Container(
width: 94,
height: 94,
decoration: BoxDecoration(
shape: BoxShape.circle,
color: AppColors.success.withValues(
alpha: isDark ? 0.08 : 0.07,
),
),
),

Container(
width: 72,
height: 72,
decoration: BoxDecoration(
shape: BoxShape.circle,
gradient: RadialGradient(
colors: [
AppColors.success.withValues(alpha: 0.20),
AppColors.success.withValues(alpha: 0.09),
],
),
border: Border.all(
color: AppColors.success.withValues(alpha: 0.18),
),
),
child: const Icon(
Iconsax.tick_circle5,
size: 42,
color: AppColors.success,
),
),
],
),
);
}
}

class _MiniStat extends StatelessWidget {
final IconData icon;
final String label;
final String value;
final bool isDark;

const _MiniStat({
required this.icon,
required this.label,
required this.value,
required this.isDark,
});

@override
Widget build(BuildContext context) {
final textColor =
isDark ? Colors.white : AppColors.textPrimaryLight;

final secondaryColor =
isDark
? AppColors.textSecondaryDark
    : AppColors.textSecondaryLight;

return Container(
padding: const EdgeInsets.fromLTRB(
12,
13,
12,
12,
),
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.045)
    : Colors.black.withValues(alpha: 0.035),
borderRadius: BorderRadius.circular(18),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.055)
    : Colors.black.withValues(alpha: 0.04),
),
),
child: Column(
children: [
Container(
width: 30,
height: 30,
decoration: BoxDecoration(
color: AppColors.success.withValues(
alpha: isDark ? 0.11 : 0.09,
),
borderRadius: BorderRadius.circular(10),
),
child: Icon(
icon,
size: 16,
color: AppColors.success,
),
),

const SizedBox(height: 8),

Text(
value,
style: GoogleFonts.inter(
fontSize: 21,
height: 1,
fontWeight: FontWeight.w800,
letterSpacing: -0.4,
color: textColor,
),
),

const SizedBox(height: 5),

Text(
label,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 11,
fontWeight: FontWeight.w500,
color: secondaryColor,
),
),
],
),
);
}
}

