import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/theme/app_theme.dart';
import '../../../data/bloc/premium/premium_bloc.dart';
import '../../../data/bloc/premium/premium_event.dart';
import '../../../data/bloc/premium/premium_state.dart';
import '../../../l10n/app_localizations.dart';
import '../screens/premium/premium_screen.dart';

class SoftPaywallSheet extends StatefulWidget {
const SoftPaywallSheet({super.key});

@override
State<SoftPaywallSheet> createState() => _SoftPaywallSheetState();
}

class _SoftPaywallSheetState extends State<SoftPaywallSheet> {
PremiumPlan _selectedPlan = PremiumPlan.yearly;

@override
Widget build(BuildContext context) {
final isDark = Theme.of(context).brightness == Brightness.dark;
final l10n = AppLocalizations.of(context)!;

return Material(
color: Colors.transparent,
child: Container(
height: MediaQuery.of(context).size.height * .90,
decoration: BoxDecoration(
color: isDark
? AppColors.backgroundDark
    : AppColors.backgroundLight,
borderRadius: const BorderRadius.vertical(
top: Radius.circular(30),
),
),
clipBehavior: Clip.antiAlias,
child: BlocConsumer<PremiumBloc, PremiumState>(
listener: (context, state) {
final error = state.errorMessage;

if (error != null && error.trim().isNotEmpty) {
ScaffoldMessenger.of(context)
..hideCurrentSnackBar()
..showSnackBar(
SnackBar(
content: Text(
error,
style: GoogleFonts.inter(
fontWeight: FontWeight.w600,
),
),
backgroundColor: AppColors.error,
behavior: SnackBarBehavior.floating,
margin: const EdgeInsets.all(16),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(16),
),
),
);
}
},
builder: (context, state) {
return Stack(
children: [
const _QuietBackground(),

Column(
children: [
_TopBar(
isDark: isDark,
onClose: () => Navigator.of(context).pop(),
),

Expanded(
child: SingleChildScrollView(
physics: const BouncingScrollPhysics(),
padding: const EdgeInsets.fromLTRB(
20,
4,
20,
178,
),
child: Column(
children: [
_Hero(
isDark: isDark,
l10n: l10n,
),

const SizedBox(height: 28),

_Benefits(
isDark: isDark,
l10n: l10n,
),

const SizedBox(height: 28),

_Plans(
selectedPlan: _selectedPlan,
isDark: isDark,
l10n: l10n,
onChanged: (plan) {
setState(() {
_selectedPlan = plan;
});
},
),
],
),
),
),
],
),

Positioned(
left: 0,
right: 0,
bottom: 0,
child: _PurchaseBar(
plan: _selectedPlan,
isDark: isDark,
isLoading: state.isLoading,
l10n: l10n,
onPurchase: state.isLoading
? null
    : () {
context.read<PremiumBloc>().add(
PurchasePremium(
_selectedPlan.purchaseId,
),
);
},
onRestore: state.isLoading
? null
    : () {
context.read<PremiumBloc>().add(
RestorePurchases(),
);
},
),
),
],
);
},
),
),
)
    .animate()
    .slideY(
begin: .08,
end: 0,
duration: 380.ms,
curve: Curves.easeOutCubic,
)
    .fadeIn(duration: 260.ms);
}
}

// ═══════════════════════════════════════════════
// TOP BAR
// ═══════════════════════════════════════════════

class _TopBar extends StatelessWidget {
final bool isDark;
final VoidCallback onClose;

const _TopBar({
required this.isDark,
required this.onClose,
});

@override
Widget build(BuildContext context) {
final textColor = isDark
? AppColors.textPrimaryDark
    : AppColors.textPrimaryLight;

return SizedBox(
height: 54,
child: Stack(
alignment: Alignment.center,
children: [
Container(
width: 34,
height: 4,
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: .12)
    : Colors.black.withValues(alpha: .09),
borderRadius: BorderRadius.circular(20),
),
),

Positioned(
top: 10,
child: GestureDetector(
onTap: onClose,
child: Container(
width: 34,
height: 34,
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: .06)
    : Colors.black.withValues(alpha: .035),
shape: BoxShape.circle,
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: .08)
    : Colors.black.withValues(alpha: .06),
),
),
child: Icon(
Icons.close_rounded,
size: 18,
color: textColor.withValues(alpha: .65),
),
),
),
),
],
),
);
}
}

// ═══════════════════════════════════════════════
// HERO
// ═══════════════════════════════════════════════

class _Hero extends StatelessWidget {
final bool isDark;
final AppLocalizations l10n;

const _Hero({
required this.isDark,
required this.l10n,
});

@override
Widget build(BuildContext context) {
final primaryText = isDark
? AppColors.textPrimaryDark
    : AppColors.textPrimaryLight;

final secondaryText = isDark
? AppColors.textSecondaryDark
    : AppColors.textSecondaryLight;

return Column(
children: [
// App icon
Container(
width: 78,
height: 78,
padding: const EdgeInsets.all(2),
decoration: BoxDecoration(
shape: BoxShape.circle,
color: isDark
? AppColors.cardDark
    : Colors.white,
border: Border.all(
color: AppColors.primary.withValues(alpha: .22),
width: 1,
),
boxShadow: [
BoxShadow(
color: AppColors.primary.withValues(alpha: .10),
blurRadius: 28,
spreadRadius: 2,
),
],
),
child: ClipOval(
child: Image.asset(
'assets/images/app_icon.png',
fit: BoxFit.cover,
errorBuilder: (_, __, ___) {
return Container(
color: isDark
? AppColors.softDark
    : AppColors.softLight,
child: const Icon(
Iconsax.crown_1,
color: AppColors.primary,
size: 30,
),
);
},
),
),
),

const SizedBox(height: 20),

Text(
l10n.premiumTitle,
textAlign: TextAlign.center,
style: GoogleFonts.outfit(
fontSize: 27,
height: 1.08,
fontWeight: FontWeight.w800,
letterSpacing: -.8,
color: primaryText,
),
),

const SizedBox(height: 9),

ConstrainedBox(
constraints: const BoxConstraints(
maxWidth: 310,
),
child: Text(
l10n.premiumSubtitle,
textAlign: TextAlign.center,
maxLines: 3,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 13,
height: 1.5,
fontWeight: FontWeight.w500,
color: secondaryText,
),
),
),

const SizedBox(height: 17),

// Small premium label
Container(
padding: const EdgeInsets.symmetric(
horizontal: 12,
vertical: 7,
),
decoration: BoxDecoration(
color: AppColors.primary.withValues(
alpha: isDark ? .10 : .07,
),
borderRadius: BorderRadius.circular(999),
border: Border.all(
color: AppColors.primary.withValues(alpha: .12),
),
),
child: Row(
mainAxisSize: MainAxisSize.min,
children: [
const Icon(
Iconsax.star1,
size: 13,
color: AppColors.primary,
),
const SizedBox(width: 6),
Text(
l10n.oneMembership,
style: GoogleFonts.inter(
fontSize: 10,
fontWeight: FontWeight.w700,
color: isDark
? AppColors.primaryLight
    : AppColors.primaryDark,
),
),
],
),
),
],
);
}
}

// ═══════════════════════════════════════════════
// BENEFITS
// ═══════════════════════════════════════════════

class _Benefits extends StatelessWidget {
final bool isDark;
final AppLocalizations l10n;

const _Benefits({
required this.isDark,
required this.l10n,
});

@override
Widget build(BuildContext context) {
return Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
l10n.everythingIncluded,
style: GoogleFonts.outfit(
fontSize: 18,
fontWeight: FontWeight.w800,
letterSpacing: -.3,
color: isDark
? AppColors.textPrimaryDark
    : AppColors.textPrimaryLight,
),
),

const SizedBox(height: 13),

_BenefitTile(
icon: Iconsax.task_square,
title: l10n.featureTasks,
subtitle: l10n.featureTasksSubtitle,
isDark: isDark,
accent: AppColors.primary,
),

const SizedBox(height: 9),

_BenefitTile(
icon: Iconsax.chart_2,
title: l10n.featureStats,
subtitle: l10n.featureStatsSubtitle,
isDark: isDark,
accent: AppColors.orangeDark,
),

const SizedBox(height: 9),

_BenefitTile(
icon: Iconsax.heart_circle,
title: l10n.featureSupport,
subtitle: l10n.featureSupportSubtitle,
isDark: isDark,
accent: AppColors.accent,
),
],
);
}
}

class _BenefitTile extends StatelessWidget {
final IconData icon;
final String title;
final String subtitle;
final bool isDark;
final Color accent;

const _BenefitTile({
required this.icon,
required this.title,
required this.subtitle,
required this.isDark,
required this.accent,
});

@override
Widget build(BuildContext context) {
final titleColor = isDark
? AppColors.textPrimaryDark
    : AppColors.textPrimaryLight;

final subtitleColor = isDark
? AppColors.textSecondaryDark
    : AppColors.textSecondaryLight;

return Container(
width: double.infinity,
padding: const EdgeInsets.all(14),
decoration: BoxDecoration(
color: isDark
? AppColors.cardDark.withValues(alpha: .72)
    : AppColors.cardLight,
borderRadius: BorderRadius.circular(20),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: .055)
    : Colors.black.withValues(alpha: .045),
),
),
child: Row(
children: [
Container(
width: 44,
height: 44,
decoration: BoxDecoration(
color: accent.withValues(
alpha: isDark ? .11 : .075,
),
borderRadius: BorderRadius.circular(14),
),
child: Icon(
icon,
size: 21,
color: accent,
),
),

const SizedBox(width: 13),

Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
title,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 13,
fontWeight: FontWeight.w700,
color: titleColor,
),
),

const SizedBox(height: 3),

Text(
subtitle,
maxLines: 2,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 10.5,
height: 1.35,
fontWeight: FontWeight.w500,
color: subtitleColor,
),
),
],
),
),

const SizedBox(width: 8),

Icon(
Icons.check_circle_rounded,
size: 19,
color: AppColors.success.withValues(alpha: .85),
),
],
),
);
}
}

// ═══════════════════════════════════════════════
// PLANS
// ═══════════════════════════════════════════════

class _Plans extends StatelessWidget {
final PremiumPlan selectedPlan;
final bool isDark;
final AppLocalizations l10n;
final ValueChanged<PremiumPlan> onChanged;

const _Plans({
required this.selectedPlan,
required this.isDark,
required this.l10n,
required this.onChanged,
});

@override
Widget build(BuildContext context) {
return Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
l10n.choosePlan,
style: GoogleFonts.outfit(
fontSize: 18,
fontWeight: FontWeight.w800,
letterSpacing: -.3,
color: isDark
? AppColors.textPrimaryDark
    : AppColors.textPrimaryLight,
),
),

const SizedBox(height: 13),

_PlanOption(
plan: PremiumPlan.yearly,
selected: selectedPlan == PremiumPlan.yearly,
badge: l10n.bestValue,
isDark: isDark,
l10n: l10n,
onTap: () => onChanged(PremiumPlan.yearly),
),

const SizedBox(height: 9),

_PlanOption(
plan: PremiumPlan.monthly,
selected: selectedPlan == PremiumPlan.monthly,
isDark: isDark,
l10n: l10n,
onTap: () => onChanged(PremiumPlan.monthly),
),

const SizedBox(height: 9),

_PlanOption(
plan: PremiumPlan.lifetime,
selected: selectedPlan == PremiumPlan.lifetime,
badge: l10n.oneTime,
isDark: isDark,
l10n: l10n,
onTap: () => onChanged(PremiumPlan.lifetime),
),
],
);
}
}

class _PlanOption extends StatelessWidget {
final PremiumPlan plan;
final bool selected;
final String? badge;
final bool isDark;
final AppLocalizations l10n;
final VoidCallback onTap;

const _PlanOption({
required this.plan,
required this.selected,
required this.isDark,
required this.l10n,
required this.onTap,
this.badge,
});

String get price {
switch (plan) {
case PremiumPlan.monthly:
return '4.99';
case PremiumPlan.yearly:
return '29.99';
case PremiumPlan.lifetime:
return '39.99';
}
}

String get title {
switch (plan) {
case PremiumPlan.monthly:
return l10n.planMonthly;
case PremiumPlan.yearly:
return l10n.planYearly;
case PremiumPlan.lifetime:
return l10n.planLifetime;
}
}

String get subtitle {
switch (plan) {
case PremiumPlan.monthly:
return l10n.planMonthlySubtitle;
case PremiumPlan.yearly:
return l10n.planYearlySubtitle;
case PremiumPlan.lifetime:
return l10n.planLifetimeSubtitle;
}
}

String get period {
switch (plan) {
case PremiumPlan.monthly:
return l10n.perMonth;
case PremiumPlan.yearly:
return l10n.perYear;
case PremiumPlan.lifetime:
return '';
}
}

@override
Widget build(BuildContext context) {
final titleColor = isDark
? AppColors.textPrimaryDark
    : AppColors.textPrimaryLight;

final secondaryColor = isDark
? AppColors.textSecondaryDark
    : AppColors.textSecondaryLight;

return GestureDetector(
onTap: onTap,
child: AnimatedContainer(
duration: const Duration(milliseconds: 180),
width: double.infinity,
padding: const EdgeInsets.all(15),
decoration: BoxDecoration(
color: selected
? AppColors.primary.withValues(
alpha: isDark ? .12 : .055,
)
    : isDark
? AppColors.cardDark.withValues(alpha: .68)
    : AppColors.cardLight,
borderRadius: BorderRadius.circular(20),
border: Border.all(
width: selected ? 1.5 : 1,
color: selected
? AppColors.primary
    : isDark
? Colors.white.withValues(alpha: .055)
    : Colors.black.withValues(alpha: .045),
),
),
child: Row(
children: [
AnimatedContainer(
duration: const Duration(milliseconds: 180),
width: 21,
height: 21,
decoration: BoxDecoration(
shape: BoxShape.circle,
color: selected
? AppColors.primary
    : Colors.transparent,
border: Border.all(
width: selected ? 0 : 1.5,
color: isDark
? Colors.white.withValues(alpha: .18)
    : Colors.black.withValues(alpha: .15),
),
),
child: selected
? const Icon(
Icons.check_rounded,
size: 14,
color: Colors.white,
)
    : null,
),

const SizedBox(width: 13),

Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Row(
children: [
Flexible(
child: Text(
title,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 13,
fontWeight: FontWeight.w800,
color: titleColor,
),
),
),

if (badge != null) ...[
const SizedBox(width: 7),
Container(
padding: const EdgeInsets.symmetric(
horizontal: 7,
vertical: 3,
),
decoration: BoxDecoration(
color: AppColors.primary.withValues(
alpha: .10,
),
borderRadius: BorderRadius.circular(7),
),
child: Text(
badge!,
style: GoogleFonts.inter(
fontSize: 7.5,
fontWeight: FontWeight.w800,
color: isDark
? AppColors.primaryLight
    : AppColors.primaryDark,
),
),
),
],
],
),

const SizedBox(height: 4),

Text(
subtitle,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 9.5,
fontWeight: FontWeight.w500,
color: secondaryColor,
),
),
],
),
),

const SizedBox(width: 10),

Column(
crossAxisAlignment: CrossAxisAlignment.end,
children: [
Text(
'\$$price',
style: GoogleFonts.outfit(
fontSize: 18,
fontWeight: FontWeight.w800,
letterSpacing: -.4,
color: titleColor,
),
),

if (period.isNotEmpty)
Text(
period,
style: GoogleFonts.inter(
fontSize: 8,
fontWeight: FontWeight.w600,
color: secondaryColor,
),
),
],
),
],
),
),
);
}
}

// ═══════════════════════════════════════════════
// FIXED PURCHASE BAR
// ═══════════════════════════════════════════════

class _PurchaseBar extends StatelessWidget {
final PremiumPlan plan;
final bool isDark;
final bool isLoading;
final AppLocalizations l10n;
final VoidCallback? onPurchase;
final VoidCallback? onRestore;

const _PurchaseBar({
required this.plan,
required this.isDark,
required this.isLoading,
required this.l10n,
required this.onPurchase,
required this.onRestore,
});

String get price {
switch (plan) {
case PremiumPlan.monthly:
return '4.99';
case PremiumPlan.yearly:
return '29.99';
case PremiumPlan.lifetime:
return '39.99';
}
}

String get buyText {
switch (plan) {
case PremiumPlan.monthly:
return l10n.buyMonthly;
case PremiumPlan.yearly:
return l10n.buyYearly;
case PremiumPlan.lifetime:
return l10n.buyLifetime;
}
}

@override
Widget build(BuildContext context) {
return ClipRect(
child: BackdropFilter(
filter: ImageFilter.blur(
sigmaX: 18,
sigmaY: 18,
),
child: Container(
padding: const EdgeInsets.fromLTRB(
20,
12,
20,
14,
),
decoration: BoxDecoration(
color: isDark
? AppColors.backgroundDark.withValues(alpha: .96)
    : AppColors.backgroundLight.withValues(alpha: .97),
border: Border(
top: BorderSide(
color: isDark
? Colors.white.withValues(alpha: .07)
    : Colors.black.withValues(alpha: .055),
),
),
),
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
Row(
children: [
Expanded(
child: Column(
crossAxisAlignment:
CrossAxisAlignment.start,
children: [
Text(
buyText,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 10,
fontWeight: FontWeight.w600,
color: isDark
? AppColors.textSecondaryDark
    : AppColors.textSecondaryLight,
),
),
const SizedBox(height: 1),
Text(
'\$$price',
style: GoogleFonts.outfit(
fontSize: 23,
fontWeight: FontWeight.w900,
letterSpacing: -.8,
color: isDark
? AppColors.textPrimaryDark
    : AppColors.textPrimaryLight,
),
),
],
),
),

GestureDetector(
onTap: onRestore,
child: Padding(
padding: const EdgeInsets.all(7),
child: Text(
l10n.restorePurchases,
style: GoogleFonts.inter(
fontSize: 9,
fontWeight: FontWeight.w700,
color: isDark
? AppColors.primaryLight
    : AppColors.primaryDark,
),
),
),
),
],
),

const SizedBox(height: 9),

SizedBox(
width: double.infinity,
height: 52,
child: ElevatedButton(
onPressed: onPurchase,
style: ElevatedButton.styleFrom(
backgroundColor: AppColors.primary,
foregroundColor: Colors.white,
elevation: 0,
shadowColor: Colors.transparent,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(17),
),
),
child: isLoading
? const SizedBox(
width: 21,
height: 21,
child: CircularProgressIndicator(
strokeWidth: 2,
color: Colors.white,
),
)
    : Row(
mainAxisAlignment:
MainAxisAlignment.center,
children: [
Text(
buyText,
style: GoogleFonts.inter(
fontSize: 14,
fontWeight: FontWeight.w800,
),
),
const SizedBox(width: 8),
const Icon(
Icons.arrow_forward_rounded,
size: 18,
),
],
),
),
),

const SizedBox(height: 7),

Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Icon(
Iconsax.security_safe,
size: 11,
color: AppColors.success,
),
const SizedBox(width: 5),
Text(
l10n.securePayment,
style: GoogleFonts.inter(
fontSize: 8.5,
fontWeight: FontWeight.w600,
color: isDark
? AppColors.textSecondaryDark
    .withValues(alpha: .55)
    : AppColors.textSecondaryLight
    .withValues(alpha: .7),
),
),
],
),
],
),
),
),
);
}
}

// ═══════════════════════════════════════════════
// BACKGROUND
// ═══════════════════════════════════════════════

class _QuietBackground extends StatelessWidget {
const _QuietBackground();

@override
Widget build(BuildContext context) {
return IgnorePointer(
child: Stack(
children: [
Positioned(
top: -180,
right: -170,
child: _Glow(
size: 360,
color: AppColors.primary,
opacity: .055,
),
),
Positioned(
top: 230,
left: -190,
child: _Glow(
size: 330,
color: AppColors.primary,
opacity: .025,
),
),
],
),
);
}
}

class _Glow extends StatelessWidget {
final double size;
final Color color;
final double opacity;

const _Glow({
required this.size,
required this.color,
required this.opacity,
});

@override
Widget build(BuildContext context) {
return Container(
width: size,
height: size,
decoration: BoxDecoration(
shape: BoxShape.circle,
gradient: RadialGradient(
colors: [
color.withValues(alpha: opacity),
color.withValues(alpha: 0),
],
),
),
);
}
}


