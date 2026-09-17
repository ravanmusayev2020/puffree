import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../core/theme/app_theme.dart';
import '../../l10n/app_localizations.dart';
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

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();

    _pages = const [
      HomeScreen(),
      DailyScreen(),
      ProgressScreen(),
      SettingsScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final isDark =
        Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark
          ? AppColors.backgroundDark
          : AppColors.backgroundLight,

      // Позволяет контенту красиво уходить
      // под нижнюю навигацию.
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

// ═════════════════════════════════════════════════════════════════════════════
// PUFFREE NAVIGATION BAR
// ═════════════════════════════════════════════════════════════════════════════

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
    final l10n = AppLocalizations.of(context);

    return SafeArea(
      top: false,
      left: false,
      right: false,
      minimum: const EdgeInsets.only(
        bottom: 8,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: Container(
          height: 70,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: isDark
                ? AppColors.surfaceDark
                : AppColors.surfaceLight,

            borderRadius: BorderRadius.circular(24),

            border: Border.all(
              color: isDark
                  ? Colors.white.withValues(alpha: 0.065)
                  : Colors.black.withValues(alpha: 0.045),
            ),

            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(
                  alpha: isDark ? 0.30 : 0.075,
                ),
                blurRadius: 30,
                spreadRadius: -6,
                offset: const Offset(0, 10),
              ),
            ],
          ),

          child: Row(
            children: [
              Expanded(
                child: _NavigationItem(
                  icon: Iconsax.home_2,
                  activeIcon: Iconsax.home_25,
                  label: l10n.home,
                  selected: currentIndex == 0,
                  isDark: isDark,
                  onTap: () => onChanged(0),
                ),
              ),

              Expanded(
                child: _NavigationItem(
                  icon: Iconsax.task_square,
                  activeIcon: Iconsax.task_square5,
                  label: l10n.tasks,
                  selected: currentIndex == 1,
                  isDark: isDark,
                  onTap: () => onChanged(1),
                ),
              ),

              Expanded(
                child: _NavigationItem(
                  icon: Iconsax.chart_2,
                  activeIcon: Iconsax.chart_25,
                  label: l10n.navProgress,
                  selected: currentIndex == 2,
                  isDark: isDark,
                  onTap: () => onChanged(2),
                ),
              ),

              Expanded(
                child: _NavigationItem(
                  icon: Iconsax.setting_2,
                  activeIcon: Iconsax.setting_25,
                  label: l10n.more,
                  selected: currentIndex == 3,
                  isDark: isDark,
                  onTap: () => onChanged(3),
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
// NAVIGATION ITEM
// ═════════════════════════════════════════════════════════════════════════════

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
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    final activeColor = AppColors.primary;

    return Material(
      color: Colors.transparent,

      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(19),

        splashColor: activeColor.withValues(
          alpha: 0.07,
        ),

        highlightColor: activeColor.withValues(
          alpha: 0.035,
        ),

        child: AnimatedContainer(
          duration: const Duration(
            milliseconds: 220,
          ),

          curve: Curves.easeOutCubic,

          height: 60,

          width: double.infinity,

          margin: const EdgeInsets.symmetric(
            horizontal: 2,
          ),

          decoration: BoxDecoration(
            gradient: selected
                ? LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                activeColor.withValues(
                  alpha: isDark ? 0.13 : 0.075,
                ),
                activeColor.withValues(
                  alpha: isDark ? 0.065 : 0.035,
                ),
              ],
            )
                : null,

            borderRadius: BorderRadius.circular(19),

            border: selected
                ? Border.all(
              color: activeColor.withValues(
                alpha: isDark ? 0.10 : 0.075,
              ),
            )
                : null,
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ─────────────────────────────────────────────────────────────
              // ACTIVE INDICATOR
              // ─────────────────────────────────────────────────────────────

              SizedBox(
                height: 3,

                child: AnimatedOpacity(
                  duration: const Duration(
                    milliseconds: 180,
                  ),

                  opacity: selected ? 1 : 0,

                  child: Container(
                    width: 18,
                    height: 2.5,

                    decoration: BoxDecoration(
                      color: activeColor,

                      borderRadius: BorderRadius.circular(
                        10,
                      ),

                      boxShadow: [
                        BoxShadow(
                          color: activeColor.withValues(
                            alpha: 0.38,
                          ),

                          blurRadius: 8,

                          spreadRadius: -1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 4),

              // ─────────────────────────────────────────────────────────────
              // ICON
              // ─────────────────────────────────────────────────────────────

              AnimatedScale(
                duration: const Duration(
                  milliseconds: 220,
                ),

                curve: Curves.easeOutBack,

                scale: selected ? 1.04 : 1.0,

                child: Icon(
                  selected ? activeIcon : icon,

                  size: 20,

                  color: selected
                      ? activeColor
                      : inactiveColor.withValues(
                    alpha: 0.72,
                  ),
                ),
              ),

              const SizedBox(height: 4),

              // ─────────────────────────────────────────────────────────────
              // LABEL
              // ─────────────────────────────────────────────────────────────

              AnimatedDefaultTextStyle(
                duration: const Duration(
                  milliseconds: 180,
                ),

                style: GoogleFonts.inter(
                  fontSize: 9.5,
                  height: 1,

                  fontWeight: selected
                      ? FontWeight.w700
                      : FontWeight.w500,

                  color: selected
                      ? activeColor
                      : inactiveColor.withValues(
                    alpha: 0.72,
                  ),
                ),

                child: Text(
                  label,

                  maxLines: 1,

                  overflow: TextOverflow.ellipsis,

                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}