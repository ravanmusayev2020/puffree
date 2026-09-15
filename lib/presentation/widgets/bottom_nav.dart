
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../core/theme/app_theme.dart';
import '../screens/home/home_screen.dart';
import '../screens/daily/daily_screen.dart';
import '../screens/progress/progress_screen.dart';
import '../screens/settings/settings_screen.dart';

class MainShell extends StatefulWidget {
const MainShell({super.key});

@override
State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
int _currentIndex = 0;

final _pages = const [
HomeScreen(),
DailyScreen(),
ProgressScreen(),
SettingsScreen(),
];

@override
Widget build(BuildContext context) {
final isDark = Theme.of(context).brightness == Brightness.dark;

return Scaffold(
extendBody: true,
body: IndexedStack(
index: _currentIndex,
children: _pages,
),
bottomNavigationBar: _PuffreeNavigationBar(
currentIndex: _currentIndex,
isDark: isDark,
onChanged: (index) {
if (index == _currentIndex) return;

setState(() {
_currentIndex = index;
});
},
),
);
}
}

class _PuffreeNavigationBar extends StatelessWidget {
const _PuffreeNavigationBar({
required this.currentIndex,
required this.isDark,
required this.onChanged,
});

final int currentIndex;
final bool isDark;
final ValueChanged<int> onChanged;

@override
Widget build(BuildContext context) {
return Padding(
padding: const EdgeInsets.fromLTRB(18, 0, 18, 8),
child: SafeArea(
top: false,
minimum: EdgeInsets.zero,
child: Container(
decoration: BoxDecoration(
color: isDark
? const Color(0xF5091522)
    : const Color(0xFAFFFFFF),
borderRadius: BorderRadius.circular(24),
border: Border.all(
color: isDark
? Colors.white.withValues(alpha: 0.065)
    : Colors.black.withValues(alpha: 0.055),
),
boxShadow: [
BoxShadow(
color: Colors.black.withValues(
alpha: isDark ? 0.34 : 0.09,
),
blurRadius: 28,
spreadRadius: -4,
offset: const Offset(0, 10),
),
],
),
child: Padding(
padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
child: Row(
mainAxisSize: MainAxisSize.min,
children: [
Expanded(
child: _NavigationItem(
icon: Iconsax.home_2,
activeIcon: Iconsax.home_25,
label: 'Главная',
selected: currentIndex == 0,
isDark: isDark,
onTap: () => onChanged(0),
),
),
Expanded(
child: _NavigationItem(
icon: Iconsax.task_square,
activeIcon: Iconsax.task_square5,
label: 'Задания',
selected: currentIndex == 1,
isDark: isDark,
onTap: () => onChanged(1),
),
),
Expanded(
child: _NavigationItem(
icon: Iconsax.chart_2,
activeIcon: Iconsax.chart_25,
label: 'Прогресс',
selected: currentIndex == 2,
isDark: isDark,
onTap: () => onChanged(2),
),
),
Expanded(
child: _NavigationItem(
icon: Iconsax.setting_2,
activeIcon: Iconsax.setting_25,
label: 'Ещё',
selected: currentIndex == 3,
isDark: isDark,
onTap: () => onChanged(3),
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

class _NavigationItem extends StatelessWidget {
const _NavigationItem({
required this.icon,
required this.activeIcon,
required this.label,
required this.selected,
required this.isDark,
required this.onTap,
});

final IconData icon;
final IconData activeIcon;
final String label;
final bool selected;
final bool isDark;
final VoidCallback onTap;

@override
Widget build(BuildContext context) {
final inactiveColor = isDark
? Colors.white.withValues(alpha: 0.36)
    : Colors.black.withValues(alpha: 0.36);

return Material(
color: Colors.transparent,
child: InkWell(
onTap: onTap,
borderRadius: BorderRadius.circular(19),
splashColor: AppColors.primary.withValues(alpha: 0.06),
highlightColor: AppColors.primary.withValues(alpha: 0.025),
child: AnimatedContainer(
duration: const Duration(milliseconds: 240),
curve: Curves.easeOutCubic,
height: 56,
margin: const EdgeInsets.symmetric(horizontal: 2),
decoration: BoxDecoration(
color: selected
? AppColors.primary.withValues(
alpha: isDark ? 0.11 : 0.065,
)
    : Colors.transparent,
borderRadius: BorderRadius.circular(19),
),
child: Stack(
children: [
AnimatedAlign(
duration: const Duration(milliseconds: 240),
curve: Curves.easeOutCubic,
alignment: Alignment.topCenter,
child: AnimatedOpacity(
duration: const Duration(milliseconds: 180),
opacity: selected ? 1 : 0,
child: Container(
width: 18,
height: 2.5,
decoration: BoxDecoration(
color: AppColors.primary,
borderRadius: BorderRadius.circular(10),
boxShadow: [
BoxShadow(
color: AppColors.primary.withValues(
alpha: 0.45,
),
blurRadius: 8,
),
],
),
),
),
),
Center(
child: Column(
mainAxisSize: MainAxisSize.min,
children: [
AnimatedScale(
duration: const Duration(milliseconds: 220),
curve: Curves.easeOutBack,
scale: selected ? 1.05 : 1,
child: Icon(
selected ? activeIcon : icon,
size: 20,
color: selected
? AppColors.primary
    : inactiveColor,
),
),
const SizedBox(height: 3),
Text(
label,
maxLines: 1,
overflow: TextOverflow.ellipsis,
style: GoogleFonts.inter(
fontSize: 9.5,
height: 1,
fontWeight: selected
? FontWeight.w700
    : FontWeight.w500,
color: selected
? AppColors.primary
    : inactiveColor,
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

