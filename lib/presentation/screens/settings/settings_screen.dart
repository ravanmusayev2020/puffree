
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/theme/theme_controller.dart';
import '../../../data/bloc/premium/premium_bloc.dart';
import '../../../data/bloc/premium/premium_state.dart';
import '../../../data/bloc/progress/progress_bloc.dart';
import '../../../data/bloc/progress/progress_event.dart';
import '../premium/premium_screen.dart';

class SettingsScreen extends StatelessWidget {
const SettingsScreen({
super.key,
});

@override
Widget build(BuildContext context) {
final theme = Theme.of(context);
final isDark = theme.brightness == Brightness.dark;

final background = isDark
? const Color(0xFF020911)
    : const Color(0xFFF6F8FC);

return Scaffold(
backgroundColor: background,
body: SafeArea(
child: CustomScrollView(
physics: const BouncingScrollPhysics(
parent: AlwaysScrollableScrollPhysics(),
),
slivers: [
SliverToBoxAdapter(
child: _Header(
isDark: isDark,
)
    .animate()
    .fadeIn(
duration: 450.ms,
)
    .slideY(
begin: -0.08,
end: 0,
curve: Curves.easeOutCubic,
),
),

SliverPadding(
padding: const EdgeInsets.fromLTRB(
20,
24,
20,
0,
),
sliver: SliverList(
delegate: SliverChildListDelegate(
[
BlocBuilder<PremiumBloc, PremiumState>(
builder: (context, state) {
return _PremiumCard(
state: state,
isDark: isDark,
)
    .animate()
    .fadeIn(
delay: 80.ms,
duration: 500.ms,
)
    .slideY(
begin: 0.08,
end: 0,
delay: 80.ms,
duration: 500.ms,
curve: Curves.easeOutCubic,
);
},
),

const SizedBox(height: 30),

_SectionHeader(
title: 'Приложение',
icon: Iconsax.setting_2,
isDark: isDark,
),

const SizedBox(height: 12),

_SettingsGroup(
isDark: isDark,
children: [
_ThemeTile(
isDark: isDark,
),
_SettingsTile(
icon: Iconsax.language_circle,
title: 'Язык',
subtitle: 'Русский',
isDark: isDark,
accent: AppColors.accent,
onTap: () {},
),
_SettingsTile(
icon: Iconsax.notification,
title: 'Уведомления',
subtitle: 'Напоминания и мотивация',
isDark: isDark,
accent: AppColors.amber,
onTap: () {},
showDivider: false,
),
],
)
    .animate()
    .fadeIn(
delay: 160.ms,
duration: 500.ms,
)
    .slideY(
begin: 0.06,
end: 0,
delay: 160.ms,
),

const SizedBox(height: 28),

_SectionHeader(
title: 'Данные',
icon: Iconsax.chart_2,
isDark: isDark,
),

const SizedBox(height: 12),

_SettingsGroup(
isDark: isDark,
children: [
_SettingsTile(
icon: Iconsax.refresh,
title: 'Сбросить прогресс',
subtitle: 'Начать путь заново',
accent: AppColors.error,
isDark: isDark,
onTap: () => _showResetDialog(
context,
isDark,
),
showDivider: false,
),
],
)
    .animate()
    .fadeIn(
delay: 220.ms,
duration: 500.ms,
)
    .slideY(
begin: 0.06,
end: 0,
delay: 220.ms,
),

const SizedBox(height: 28),

_SectionHeader(
title: 'О приложении',
icon: Iconsax.info_circle,
isDark: isDark,
),

const SizedBox(height: 12),

_SettingsGroup(
isDark: isDark,
children: [
_SettingsTile(
icon: Iconsax.mobile,
title: 'Версия',
subtitle: '1.0.0',
isDark: isDark,
accent: AppColors.primary,
onTap: () {},
),
_SettingsTile(
icon: Iconsax.document_text,
title: 'Политика конфиденциальности',
isDark: isDark,
accent: AppColors.accent,
onTap: () {},
),
_SettingsTile(
icon: Iconsax.document,
title: 'Условия использования',
isDark: isDark,
accent: AppColors.amber,
onTap: () {},
showDivider: false,
),
],
)
    .animate()
    .fadeIn(
delay: 280.ms,
duration: 500.ms,
)
    .slideY(
begin: 0.06,
end: 0,
delay: 280.ms,
),

const SizedBox(height: 28),

_DisclaimerCard(
isDark: isDark,
)
    .animate()
    .fadeIn(
delay: 340.ms,
duration: 500.ms,
)
    .slideY(
begin: 0.05,
end: 0,
delay: 340.ms,
),

const SizedBox(height: 28),

_Footer(
isDark: isDark,
),

const SizedBox(height: 36),
],
),
),
),
],
),
),
);
}

void _showResetDialog(
BuildContext context,
bool isDark,
) {
showDialog<void>(
context: context,
barrierDismissible: true,
builder: (dialogContext) {
return Dialog(
backgroundColor: Colors.transparent,
insetPadding: const EdgeInsets.symmetric(
horizontal: 24,
),
child: _ResetDialog(
isDark: isDark,
onCancel: () {
Navigator.pop(dialogContext);
},
onConfirm: () {
context.read<ProgressBloc>().add(
ResetProgress(),
);

Navigator.pop(dialogContext);
},
),
);
},
);
}
}

class _Header extends StatelessWidget {
const _Header({
required this.isDark,
});

final bool isDark;

@override
Widget build(BuildContext context) {
final primaryText = isDark
? Colors.white
    : AppColors.textPrimaryLight;

final secondaryText = isDark
? Colors.white54
    : AppColors.textSecondaryLight;

return Padding(
padding: const EdgeInsets.fromLTRB(
22,
22,
22,
0,
),
child: Row(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
'Настройки',
style: GoogleFonts.inter(
fontSize: 31,
height: 1.05,
fontWeight: FontWeight.w800,
letterSpacing: -1.1,
color: primaryText,
),
),
const SizedBox(height: 7),
Text(
'Настрой Puffree под себя',
style: GoogleFonts.inter(
fontSize: 13,
fontWeight: FontWeight.w500,
color: secondaryText,
),
),
],
),
),
_HeaderIcon(
icon: Iconsax.setting_2,
isDark: isDark,
),
],
),
);
}
}

class _HeaderIcon extends StatelessWidget {
const _HeaderIcon({
required this.icon,
required this.isDark,
});

final IconData icon;
final bool isDark;

@override
Widget build(BuildContext context) {
return Container(
width: 48,
height: 48,
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.045)
    : Colors.white,
borderRadius: BorderRadius.circular(16),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.07)
    : Colors.black.withValues(alpha: 0.055),
),
boxShadow: isDark
? null
    : [
BoxShadow(
color: Colors.black.withValues(
alpha: 0.05,
),
blurRadius: 18,
offset: const Offset(0, 7),
),
],
),
child: Icon(
icon,
size: 20,
color: isDark
? Colors.white
    : AppColors.textPrimaryLight,
),
);
}
}

class _PremiumCard extends StatelessWidget {
const _PremiumCard({
required this.state,
required this.isDark,
});

final PremiumState state;
final bool isDark;

@override
Widget build(BuildContext context) {
final active = state.hasAccess;

return Material(
color: Colors.transparent,
child: InkWell(
onTap: () {
Navigator.of(context).push(
MaterialPageRoute(
builder: (_) => const PremiumScreen(),
),
);
},
borderRadius: BorderRadius.circular(28),
splashColor: AppColors.primary.withValues(
alpha: 0.06,
),
highlightColor: AppColors.primary.withValues(
alpha: 0.025,
),
child: Ink(
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(28),
gradient: LinearGradient(
colors: isDark
? const [
Color(0xFF172B49),
Color(0xFF0C182A),
Color(0xFF07111F),
]
    : const [
Color(0xFFEAF1FF),
Color(0xFFF7F9FF),
Colors.white,
],
begin: Alignment.topLeft,
end: Alignment.bottomRight,
),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.07)
    : AppColors.primary.withValues(alpha: 0.08),
),
boxShadow: [
BoxShadow(
color: AppColors.primary.withValues(
alpha: isDark ? 0.12 : 0.08,
),
blurRadius: 32,
offset: const Offset(0, 14),
),
],
),
child: Stack(
children: [
Positioned(
top: -55,
right: -45,
child: Container(
width: 150,
height: 150,
decoration: BoxDecoration(
shape: BoxShape.circle,
color: AppColors.primary.withValues(
alpha: 0.10,
),
),
),
),
Positioned(
bottom: -80,
left: 30,
child: Container(
width: 150,
height: 150,
decoration: BoxDecoration(
shape: BoxShape.circle,
color: AppColors.accent.withValues(
alpha: 0.055,
),
),
),
),
Padding(
padding: const EdgeInsets.all(20),
child: Row(
children: [
_PremiumIcon(
active: active,
isDark: isDark,
),
const SizedBox(width: 15),
Expanded(
child: Column(
crossAxisAlignment:
CrossAxisAlignment.start,
children: [
Row(
children: [
Flexible(
child: Text(
active
? 'Premium активен'
    : 'Puffree Premium',
maxLines: 1,
overflow:
TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 17,
fontWeight: FontWeight.w800,
letterSpacing: -0.3,
color: isDark
? Colors.white
    : AppColors
    .textPrimaryLight,
),
),
),
const SizedBox(width: 8),
if (active)
Container(
padding:
const EdgeInsets
    .symmetric(
horizontal: 7,
vertical: 4,
),
decoration: BoxDecoration(
color: AppColors.success
    .withValues(
alpha: 0.13,
),
borderRadius:
BorderRadius.circular(
8,
),
),
child: Text(
'ACTIVE',
style:
GoogleFonts.inter(
fontSize: 8,
fontWeight:
FontWeight.w800,
letterSpacing: 0.7,
color:
AppColors.success,
),
),
),
],
),
const SizedBox(height: 6),
Text(
active
? (state.isPremium
? 'Полный доступ ко всем функциям'
    : 'Пробный период активен')
    : 'Открыть Premium и варианты подписки',
maxLines: 2,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 12,
height: 1.35,
fontWeight: FontWeight.w500,
color: isDark
? Colors.white60
    : AppColors
    .textSecondaryLight,
),
),
],
),
),
const SizedBox(width: 10),
Container(
width: 34,
height: 34,
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(
alpha: 0.06,
)
    : AppColors.primary.withValues(
alpha: 0.07,
),
shape: BoxShape.circle,
),
child: Icon(
Iconsax.arrow_right_3,
size: 17,
color: isDark
? Colors.white70
    : AppColors.primary,
),
),
],
),
),
],
),
),
),
);
}
}

class _PremiumIcon extends StatelessWidget {
const _PremiumIcon({
required this.active,
required this.isDark,
});

final bool active;
final bool isDark;

@override
Widget build(BuildContext context) {
return Container(
width: 50,
height: 50,
decoration: BoxDecoration(
gradient: LinearGradient(
colors: [
AppColors.primary.withValues(alpha: 0.95),
AppColors.primaryLight.withValues(alpha: 0.8),
],
begin: Alignment.topLeft,
end: Alignment.bottomRight,
),
borderRadius: BorderRadius.circular(16),
boxShadow: [
BoxShadow(
color: AppColors.primary.withValues(
alpha: 0.25,
),
blurRadius: 18,
offset: const Offset(0, 7),
),
],
),
child: Icon(
active ? Iconsax.crown_15 : Iconsax.crown,
color: Colors.white,
size: 22,
),
);
}
}

class _ThemeTile extends StatelessWidget {
const _ThemeTile({
required this.isDark,
});

final bool isDark;

@override
Widget build(BuildContext context) {
final controller = _findThemeController(context);

return AnimatedBuilder(
animation: controller,
builder: (context, _) {
return _SettingsTile(
icon: _themeIcon(controller.mode),
title: 'Тема',
subtitle: controller.themeLabel,
isDark: isDark,
accent: AppColors.primary,
onTap: () {
_showThemeSheet(
context,
controller,
);
},
);
},
);
}

ThemeController _findThemeController(
BuildContext context,
) {
final inherited =
context.dependOnInheritedWidgetOfExactType<
ThemeControllerScope>();

if (inherited == null) {
throw FlutterError(
'ThemeController не найден в дереве Widget. '
'ThemeControllerScope должен находиться выше MaterialApp.',
);
}

return inherited.controller;
}
}

IconData _themeIcon(AppThemeMode mode) {
switch (mode) {
case AppThemeMode.system:
return Iconsax.monitor;
case AppThemeMode.light:
return Iconsax.sun_1;
case AppThemeMode.dark:
return Iconsax.moon;
}
}

void _showThemeSheet(
BuildContext context,
ThemeController controller,
) {
final isDark =
Theme.of(context).brightness == Brightness.dark;

showModalBottomSheet<void>(
context: context,
backgroundColor: Colors.transparent,
isScrollControlled: true,
builder: (sheetContext) {
return SafeArea(
top: false,
child: Container(
padding: const EdgeInsets.fromLTRB(
20,
10,
20,
20,
),
decoration: BoxDecoration(
color: isDark
? const Color(0xFF101B24)
    : Colors.white,
borderRadius: const BorderRadius.vertical(
top: Radius.circular(30),
),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.06)
    : Colors.black.withValues(alpha: 0.05),
),
),
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
Container(
width: 42,
height: 4,
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.14)
    : Colors.black.withValues(alpha: 0.10),
borderRadius:
BorderRadius.circular(99),
),
),
const SizedBox(height: 22),
Align(
alignment: Alignment.centerLeft,
child: Text(
'Тема приложения',
style: GoogleFonts.inter(
fontSize: 21,
fontWeight: FontWeight.w800,
letterSpacing: -0.5,
color: isDark
? Colors.white
    : AppColors.textPrimaryLight,
),
),
),
const SizedBox(height: 6),
Align(
alignment: Alignment.centerLeft,
child: Text(
'Выбери, как Puffree должен выглядеть.',
style: GoogleFonts.inter(
fontSize: 13,
fontWeight: FontWeight.w500,
color: isDark
? AppColors.textSecondaryDark
    : AppColors.textSecondaryLight,
),
),
),
const SizedBox(height: 18),
_ThemeOption(
icon: Iconsax.monitor,
title: 'Системная',
subtitle: 'Следовать настройкам телефона',
mode: AppThemeMode.system,
selected:
controller.mode == AppThemeMode.system,
isDark: isDark,
onTap: () async {
await controller.setMode(
AppThemeMode.system,
);

if (sheetContext.mounted) {
Navigator.pop(sheetContext);
}
},
),
const SizedBox(height: 10),
_ThemeOption(
icon: Iconsax.sun_1,
title: 'Светлая',
subtitle: 'Всегда использовать светлую тему',
mode: AppThemeMode.light,
selected:
controller.mode == AppThemeMode.light,
isDark: isDark,
onTap: () async {
await controller.setMode(
AppThemeMode.light,
);

if (sheetContext.mounted) {
Navigator.pop(sheetContext);
}
},
),
const SizedBox(height: 10),
_ThemeOption(
icon: Iconsax.moon,
title: 'Тёмная',
subtitle: 'Всегда использовать тёмную тему',
mode: AppThemeMode.dark,
selected:
controller.mode == AppThemeMode.dark,
isDark: isDark,
onTap: () async {
await controller.setMode(
AppThemeMode.dark,
);

if (sheetContext.mounted) {
Navigator.pop(sheetContext);
}
},
),
const SizedBox(height: 8),
],
),
),
);
},
);
}

class _ThemeOption extends StatelessWidget {
const _ThemeOption({
required this.icon,
required this.title,
required this.subtitle,
required this.mode,
required this.selected,
required this.isDark,
required this.onTap,
});

final IconData icon;
final String title;
final String subtitle;
final AppThemeMode mode;
final bool selected;
final bool isDark;
final VoidCallback onTap;

@override
Widget build(BuildContext context) {
final accent = AppColors.primary;

return Material(
color: Colors.transparent,
child: InkWell(
onTap: onTap,
borderRadius: BorderRadius.circular(18),
child: Ink(
padding: const EdgeInsets.all(15),
decoration: BoxDecoration(
color: selected
? accent.withValues(
alpha: isDark ? 0.13 : 0.07,
)
    : isDark
? Colors.white.withValues(alpha: 0.035)
    : Colors.black.withValues(alpha: 0.025),
borderRadius: BorderRadius.circular(18),
border: Border.all(
color: selected
? accent.withValues(alpha: 0.35)
    : isDark
? Colors.white.withValues(alpha: 0.045)
    : Colors.black.withValues(alpha: 0.045),
),
),
child: Row(
children: [
Container(
width: 44,
height: 44,
decoration: BoxDecoration(
color: accent.withValues(alpha: 0.10),
borderRadius: BorderRadius.circular(14),
),
child: Icon(
icon,
size: 20,
color: accent,
),
),
const SizedBox(width: 13),
Expanded(
child: Column(
crossAxisAlignment:
CrossAxisAlignment.start,
children: [
Text(
title,
style: GoogleFonts.inter(
fontSize: 14.5,
fontWeight: FontWeight.w700,
color: isDark
? Colors.white
    : AppColors.textPrimaryLight,
),
),
const SizedBox(height: 3),
Text(
subtitle,
style: GoogleFonts.inter(
fontSize: 11.5,
fontWeight: FontWeight.w500,
color: isDark
? AppColors.textSecondaryDark
    : AppColors.textSecondaryLight,
),
),
],
),
),
AnimatedContainer(
duration:
const Duration(milliseconds: 180),
width: 24,
height: 24,
decoration: BoxDecoration(
shape: BoxShape.circle,
color: selected
? accent
    : Colors.transparent,
border: Border.all(
width: selected ? 0 : 1.5,
color: isDark
? Colors.white.withValues(
alpha: 0.16,
)
    : Colors.black.withValues(
alpha: 0.12,
),
),
),
child: selected
? const Icon(
Icons.check,
size: 15,
color: Colors.white,
)
    : null,
),
],
),
),
),
);
}
}

class _SectionHeader extends StatelessWidget {
const _SectionHeader({
required this.title,
required this.icon,
required this.isDark,
});

final String title;
final IconData icon;
final bool isDark;

@override
Widget build(BuildContext context) {
return Row(
children: [
Container(
width: 28,
height: 28,
decoration: BoxDecoration(
color: AppColors.primary.withValues(
alpha: 0.10,
),
borderRadius: BorderRadius.circular(9),
),
child: Icon(
icon,
size: 14,
color: AppColors.primary,
),
),
const SizedBox(width: 9),
Text(
title,
style: GoogleFonts.inter(
fontSize: 13,
fontWeight: FontWeight.w800,
letterSpacing: 0.15,
color: isDark
? Colors.white70
    : AppColors.textSecondaryLight,
),
),
],
);
}
}

class _SettingsGroup extends StatelessWidget {
const _SettingsGroup({
required this.children,
required this.isDark,
});

final List<Widget> children;
final bool isDark;

@override
Widget build(BuildContext context) {
return Container(
clipBehavior: Clip.antiAlias,
decoration: BoxDecoration(
color: isDark
? const Color(0xFF091522)
    : Colors.white,
borderRadius: BorderRadius.circular(22),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.055)
    : Colors.black.withValues(alpha: 0.045),
),
boxShadow: isDark
? null
    : [
BoxShadow(
color: Colors.black.withValues(
alpha: 0.035,
),
blurRadius: 24,
offset: const Offset(0, 8),
),
],
),
child: Column(
children: children,
),
);
}
}

class _SettingsTile extends StatelessWidget {
const _SettingsTile({
required this.icon,
required this.title,
required this.isDark,
required this.onTap,
required this.accent,
this.subtitle,
this.showDivider = true,
});

final IconData icon;
final String title;
final String? subtitle;
final bool isDark;
final bool showDivider;
final Color accent;
final VoidCallback onTap;

@override
Widget build(BuildContext context) {
final titleColor = isDark
? Colors.white
    : AppColors.textPrimaryLight;

final subtitleColor = isDark
? Colors.white.withValues(alpha: 0.42)
    : AppColors.textSecondaryLight;

return Material(
color: Colors.transparent,
child: InkWell(
onTap: onTap,
splashColor: accent.withValues(alpha: 0.06),
highlightColor: accent.withValues(alpha: 0.025),
child: Column(
children: [
Padding(
padding: const EdgeInsets.fromLTRB(
15,
13,
14,
13,
),
child: Row(
children: [
Container(
width: 43,
height: 43,
decoration: BoxDecoration(
color: accent.withValues(
alpha: 0.095,
),
borderRadius:
BorderRadius.circular(13),
),
child: Icon(
icon,
size: 19,
color: accent,
),
),
const SizedBox(width: 14),
Expanded(
child: Column(
crossAxisAlignment:
CrossAxisAlignment.start,
children: [
Text(
title,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 14,
fontWeight: FontWeight.w600,
color: titleColor,
),
),
if (subtitle != null) ...[
const SizedBox(height: 3),
Text(
subtitle!,
maxLines: 1,
overflow:
TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 11.5,
fontWeight: FontWeight.w500,
color: subtitleColor,
),
),
],
],
),
),
const SizedBox(width: 10),
Icon(
Iconsax.arrow_right_3,
size: 17,
color: isDark
? Colors.white.withValues(
alpha: 0.20,
)
    : Colors.black.withValues(
alpha: 0.20,
),
),
],
),
),
if (showDivider)
Padding(
padding: const EdgeInsets.only(
left: 72,
),
child: Divider(
height: 1,
thickness: 0.7,
color: isDark
? Colors.white.withValues(
alpha: 0.045,
)
    : Colors.black.withValues(
alpha: 0.045,
),
),
),
],
),
),
);
}
}

class _DisclaimerCard extends StatelessWidget {
const _DisclaimerCard({
required this.isDark,
});

final bool isDark;

@override
Widget build(BuildContext context) {
return Container(
padding: const EdgeInsets.all(17),
decoration: BoxDecoration(
color: isDark
? const Color(0xFF07121E)
    : const Color(0xFFF0F3F8),
borderRadius: BorderRadius.circular(20),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.045)
    : Colors.black.withValues(alpha: 0.045),
),
),
child: Row(
crossAxisAlignment:
CrossAxisAlignment.start,
children: [
Container(
width: 34,
height: 34,
decoration: BoxDecoration(
color: AppColors.primary.withValues(
alpha: 0.10,
),
borderRadius: BorderRadius.circular(10),
),
child: const Icon(
Iconsax.info_circle,
size: 17,
color: AppColors.primary,
),
),
const SizedBox(width: 12),
Expanded(
child: Text(
'Puffree — мотивационное приложение. Оно не является медицинским средством и не заменяет консультацию врача. При вопросах о здоровье обратись к квалифицированному специалисту.',
style: GoogleFonts.inter(
fontSize: 11.5,
height: 1.55,
fontWeight: FontWeight.w500,
color: isDark
? Colors.white.withValues(alpha: 0.42)
    : AppColors.textSecondaryLight,
),
),
),
],
),
);
}
}

class _Footer extends StatelessWidget {
const _Footer({
required this.isDark,
});

final bool isDark;

@override
Widget build(BuildContext context) {
return Column(
children: [
Container(
width: 42,
height: 4,
decoration: BoxDecoration(
color: isDark
? Colors.white.withValues(alpha: 0.08)
    : Colors.black.withValues(alpha: 0.07),
borderRadius: BorderRadius.circular(10),
),
),
const SizedBox(height: 14),
Text(
'PUFFREE',
style: GoogleFonts.inter(
fontSize: 10,
fontWeight: FontWeight.w900,
letterSpacing: 3.2,
color: isDark
? Colors.white.withValues(alpha: 0.18)
    : Colors.black.withValues(alpha: 0.18),
),
),
const SizedBox(height: 6),
Text(
'Made for a smoke-free future',
style: GoogleFonts.inter(
fontSize: 9.5,
fontWeight: FontWeight.w500,
color: isDark
? Colors.white.withValues(alpha: 0.18)
    : Colors.black.withValues(alpha: 0.18),
),
),
],
);
}
}

class _ResetDialog extends StatelessWidget {
const _ResetDialog({
required this.isDark,
required this.onCancel,
required this.onConfirm,
});

final bool isDark;
final VoidCallback onCancel;
final VoidCallback onConfirm;

@override
Widget build(BuildContext context) {
final background =
isDark ? const Color(0xFF0B1724) : Colors.white;

final titleColor =
isDark ? Colors.white : AppColors.textPrimaryLight;

final bodyColor = isDark
? Colors.white.withValues(alpha: 0.55)
    : AppColors.textSecondaryLight;

return Container(
padding: const EdgeInsets.fromLTRB(
22,
22,
22,
18,
),
decoration: BoxDecoration(
color: background,
borderRadius: BorderRadius.circular(28),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.07)
    : Colors.black.withValues(alpha: 0.05),
),
boxShadow: [
BoxShadow(
color: Colors.black.withValues(
alpha: isDark ? 0.45 : 0.15,
),
blurRadius: 40,
offset: const Offset(0, 20),
),
],
),
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
Container(
width: 58,
height: 58,
decoration: BoxDecoration(
color: AppColors.error.withValues(
alpha: 0.10,
),
borderRadius: BorderRadius.circular(18),
),
child: const Icon(
Iconsax.refresh,
color: AppColors.error,
size: 25,
),
),
const SizedBox(height: 18),
Text(
'Сбросить прогресс?',
textAlign: TextAlign.center,
style: GoogleFonts.inter(
fontSize: 19,
fontWeight: FontWeight.w800,
letterSpacing: -0.35,
color: titleColor,
),
),
const SizedBox(height: 9),
Text(
'Все данные о днях, стрике и статистике будут удалены. Это действие нельзя отменить.',
textAlign: TextAlign.center,
style: GoogleFonts.inter(
fontSize: 12.5,
height: 1.5,
fontWeight: FontWeight.w500,
color: bodyColor,
),
),
const SizedBox(height: 22),
Row(
children: [
Expanded(
child: SizedBox(
height: 48,
child: OutlinedButton(
onPressed: onCancel,
style: OutlinedButton.styleFrom(
side: BorderSide(
color: isDark
? Colors.white.withValues(
alpha: 0.10,
)
    : Colors.black.withValues(
alpha: 0.08,
),
),
shape: RoundedRectangleBorder(
borderRadius:
BorderRadius.circular(15),
),
),
child: Text(
'Отмена',
style: GoogleFonts.inter(
fontSize: 13,
fontWeight: FontWeight.w700,
color: titleColor,
),
),
),
),
),
const SizedBox(width: 10),
Expanded(
child: SizedBox(
height: 48,
child: ElevatedButton(
onPressed: onConfirm,
style: ElevatedButton.styleFrom(
backgroundColor:
AppColors.error,
foregroundColor: Colors.white,
elevation: 0,
shape: RoundedRectangleBorder(
borderRadius:
BorderRadius.circular(15),
),
),
child: Text(
'Сбросить',
style: GoogleFonts.inter(
fontSize: 13,
fontWeight: FontWeight.w800,
),
),
),
),
),
],
),
],
),
);
}
}

