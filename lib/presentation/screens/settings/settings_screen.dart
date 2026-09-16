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
import '../../../l10n/app_localizations.dart';
import '../premium/premium_screen.dart';
import 'language_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor:
      isDark ? AppColors.backgroundDark : AppColors.backgroundLight,
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          slivers: [
            const SliverToBoxAdapter(
              child: _Header(),
            ),
            // ignore: prefer_const_constructors - uses l10n
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    BlocBuilder<PremiumBloc, PremiumState>(
                      builder: (context, state) {
                        return _PremiumCard(state: state)
                            .animate()
                            .fadeIn(delay: 80.ms, duration: 500.ms)
                            .slideY(
                          begin: 0.06,
                          end: 0,
                          delay: 80.ms,
                          duration: 500.ms,
                          curve: Curves.easeOutCubic,
                        );
                      },
                    ),
                    const SizedBox(height: 32),
                    _SectionHeader(
                      title: l10n.sectionApp,
                      icon: Iconsax.setting_2,
                    ),
                    const SizedBox(height: 12),
                    _SettingsGroup(
                      children: [
                        const _ThemeTile(),
                        const LanguageTile(),
                        _SettingsTile(
                          icon: Iconsax.notification,
                          title: l10n.notifications,
                          subtitle: l10n.notificationsHint,
                          accent: AppColors.primary,
                          showDivider: false,
                        ),
                      ],
                    )
                        .animate()
                        .fadeIn(delay: 150.ms, duration: 500.ms)
                        .slideY(
                      begin: 0.05,
                      end: 0,
                      delay: 150.ms,
                      duration: 500.ms,
                      curve: Curves.easeOutCubic,
                    ),
                    const SizedBox(height: 30),
                    _SectionHeader(
                      title: l10n.sectionData,
                      icon: Iconsax.chart_2,
                    ),
                    const SizedBox(height: 12),
                    _SettingsGroup(
                      children: [
                        _SettingsTile(
                          icon: Iconsax.refresh,
                          title: l10n.resetProgress,
                          subtitle: l10n.resetProgressSubtitle,
                          accent: AppColors.error,
                          onTap: () => _showResetDialog(context),
                          showDivider: false,
                        ),
                      ],
                    )
                        .animate()
                        .fadeIn(delay: 220.ms, duration: 500.ms)
                        .slideY(
                      begin: 0.05,
                      end: 0,
                      delay: 220.ms,
                      duration: 500.ms,
                      curve: Curves.easeOutCubic,
                    ),
                    const SizedBox(height: 30),
                    _SectionHeader(
                      title: l10n.sectionAbout,
                      icon: Iconsax.info_circle,
                    ),
                    const SizedBox(height: 12),
                    _SettingsGroup(
                      children: [
                        _SettingsTile(
                          icon: Iconsax.mobile,
                          title: l10n.version,
                          subtitle: '1.0.0',
                          accent: AppColors.primary,
                        ),
                        _SettingsTile(
                          icon: Iconsax.document_text,
                          title: l10n.privacy,
                          accent: AppColors.primary,
                        ),
                        _SettingsTile(
                          icon: Iconsax.document,
                          title: l10n.terms,
                          accent: AppColors.primary,
                          showDivider: false,
                        ),
                      ],
                    )
                        .animate()
                        .fadeIn(delay: 280.ms, duration: 500.ms)
                        .slideY(
                      begin: 0.05,
                      end: 0,
                      delay: 280.ms,
                      duration: 500.ms,
                      curve: Curves.easeOutCubic,
                    ),
                    const SizedBox(height: 28),
                    const _DisclaimerCard()
                        .animate()
                        .fadeIn(delay: 340.ms, duration: 500.ms)
                        .slideY(
                      begin: 0.04,
                      end: 0,
                      delay: 340.ms,
                      duration: 500.ms,
                    ),
                    const SizedBox(height: 30),
                    const _Footer(),
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

  void _showResetDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    showDialog<void>(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.black.withValues(alpha: 0.55),
      builder: (dialogContext) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.symmetric(horizontal: 24),
          child: _ResetDialog(
            onCancel: () => Navigator.pop(dialogContext),
            onConfirm: () {
              context.read<ProgressBloc>().add(ResetProgress());
              Navigator.pop(dialogContext);
            },
          ),
        );
      },
    );
  }
}

// ─────────────────────────────────────────────────────────────
// HEADER
// ─────────────────────────────────────────────────────────────

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 22, 22, 0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.settings,
                  style: GoogleFonts.outfit(
                    fontSize: 32,
                    height: 1.02,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -1.2,
                    color: isDark
                        ? AppColors.textPrimaryDark
                        : AppColors.textPrimaryLight,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  l10n.settingsSubtitle,
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: isDark
                        ? AppColors.textSecondaryDark
                        : AppColors.textSecondaryLight,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          const _PremiumHeaderIcon(),
        ],
      ),
    )
        .animate()
        .fadeIn(duration: 450.ms)
        .slideY(begin: -0.06, end: 0, curve: Curves.easeOutCubic);
  }
}

// ─────────────────────────────────────────────────────────────
// HEADER ICON
// ─────────────────────────────────────────────────────────────

class _PremiumHeaderIcon extends StatelessWidget {
  const _PremiumHeaderIcon();

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: isDark
              ? [
            Colors.white.withValues(alpha: 0.075),
            Colors.white.withValues(alpha: 0.025),
          ]
              : [
            Colors.white,
            AppColors.primary.withValues(alpha: 0.035),
          ],
        ),
        border: Border.all(
          color: isDark
              ? Colors.white.withValues(alpha: 0.08)
              : AppColors.primary.withValues(alpha: 0.07),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(
              alpha: isDark ? 0.10 : 0.055,
            ),
            blurRadius: 18,
            spreadRadius: -5,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Icon(
        Iconsax.setting_2,
        size: 20,
        color: isDark ? AppColors.primaryLight : AppColors.primary,
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────
// PREMIUM CARD
// ─────────────────────────────────────────────────────────────

class _PremiumCard extends StatelessWidget {
  const _PremiumCard({required this.state});

  final PremiumState state;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = AppLocalizations.of(context)!;
    final active = state.hasAccess;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => const PremiumScreen()),
          );
        },
        borderRadius: BorderRadius.circular(28),
        splashColor: AppColors.primary.withValues(alpha: 0.06),
        highlightColor: AppColors.primary.withValues(alpha: 0.025),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: isDark
                  ? const [
                Color(0xFF2A1812),
                Color(0xFF1F120E),
                Color(0xFF160C09),
              ]
                  : [
                const Color(0xFFFFF1EC),
                const Color(0xFFFFF7F4),
                Colors.white,
              ],
            ),
            border: Border.all(
              color: isDark
                  ? AppColors.primaryLight.withValues(alpha: 0.14)
                  : AppColors.primary.withValues(alpha: 0.10),
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withValues(
                  alpha: isDark ? 0.16 : 0.075,
                ),
                blurRadius: 32,
                spreadRadius: -8,
                offset: const Offset(0, 14),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(28),
            child: Stack(
              children: [
                Positioned(
                  top: -70,
                  right: -50,
                  child: _GlowCircle(
                    size: 180,
                    color: AppColors.primary,
                    opacity: isDark ? 0.12 : 0.07,
                  ),
                ),
                Positioned(
                  bottom: -95,
                  left: 55,
                  child: _GlowCircle(
                    size: 180,
                    color: AppColors.accent,
                    opacity: isDark ? 0.075 : 0.045,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      _PremiumCrown(active: active),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    active
                                        ? l10n.premiumActive
                                        : 'Puffree Premium',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.outfit(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: -0.35,
                                      color: isDark
                                          ? AppColors.textPrimaryDark
                                          : AppColors.textPrimaryLight,
                                    ),
                                  ),
                                ),
                                if (active) ...[
                                  const SizedBox(width: 8),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: AppColors.success
                                          .withValues(alpha: 0.12),
                                      borderRadius: BorderRadius.circular(999),
                                      border: Border.all(
                                        color: AppColors.success
                                            .withValues(alpha: 0.15),
                                      ),
                                    ),
                                    child: Text(
                                      l10n.premiumActiveBadge,
                                      style: GoogleFonts.inter(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 0.8,
                                        color: AppColors.success,
                                      ),
                                    ),
                                  ),
                                ],
                              ],
                            ),
                            const SizedBox(height: 6),
                            Text(
                              active
                                  ? (state.isPremium
                                  ? l10n.fullAccess
                                  : l10n.trialActive)
                                  : l10n.openPremium,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                height: 1.4,
                                fontWeight: FontWeight.w500,
                                color: isDark
                                    ? AppColors.textSecondaryDark
                                    : AppColors.textSecondaryLight,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: isDark
                              ? Colors.white.withValues(alpha: 0.055)
                              : AppColors.primary.withValues(alpha: 0.065),
                          border: Border.all(
                            color: isDark
                                ? Colors.white.withValues(alpha: 0.06)
                                : AppColors.primary.withValues(alpha: 0.07),
                          ),
                        ),
                        child: Icon(
                          Iconsax.arrow_right_3,
                          size: 17,
                          color: isDark
                              ? AppColors.primaryLight
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
      ),
    );
  }
}

class _GlowCircle extends StatelessWidget {
  const _GlowCircle({
    required this.size,
    required this.color,
    required this.opacity,
  });

  final double size;
  final Color color;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withValues(alpha: opacity),
      ),
    );
  }
}

class _PremiumCrown extends StatelessWidget {
  const _PremiumCrown({required this.active});

  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.primary, AppColors.primaryLight],
        ),
        border: Border.all(color: Colors.white.withValues(alpha: 0.14)),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.28),
            blurRadius: 20,
            spreadRadius: -5,
            offset: const Offset(0, 8),
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

// ─────────────────────────────────────────────────────────────
// THEME TILE
// ─────────────────────────────────────────────────────────────

class _ThemeTile extends StatelessWidget {
  const _ThemeTile();

  @override
  Widget build(BuildContext context) {
    final controller = _findThemeController(context);
    final l10n = AppLocalizations.of(context)!;

    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        return _SettingsTile(
          icon: _themeIcon(controller.mode),
          title: l10n.theme,
          subtitle: controller.themeLabel,
          accent: AppColors.primary,
          onTap: () => _showThemeSheet(context, controller),
        );
      },
    );
  }

  ThemeController _findThemeController(BuildContext context) {
    final inherited =
    context.dependOnInheritedWidgetOfExactType<ThemeControllerScope>();

    if (inherited == null) {
      throw FlutterError(
        'ThemeController not found. ThemeControllerScope must be above MaterialApp.',
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

void _showThemeSheet(BuildContext context, ThemeController controller) {
  final isDark = Theme.of(context).brightness == Brightness.dark;
  final l10n = AppLocalizations.of(context)!;

  showModalBottomSheet<void>(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (sheetContext) {
      return SafeArea(
        top: false,
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
          decoration: BoxDecoration(
            color: isDark ? AppColors.surfaceDark : AppColors.surfaceLight,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
            border: Border.all(
              color: isDark
                  ? Colors.white.withValues(alpha: 0.065)
                  : AppColors.primary.withValues(alpha: 0.055),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: isDark ? 0.30 : 0.10),
                blurRadius: 40,
                offset: const Offset(0, -10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 42,
                height: 4,
                decoration: BoxDecoration(
                  color: isDark
                      ? Colors.white.withValues(alpha: 0.13)
                      : Colors.black.withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(999),
                ),
              ),
              const SizedBox(height: 22),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  l10n.appTheme,
                  style: GoogleFonts.outfit(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.5,
                    color: isDark
                        ? AppColors.textPrimaryDark
                        : AppColors.textPrimaryLight,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  l10n.chooseTheme,
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
                title: l10n.systemTheme,
                subtitle: l10n.systemThemeDesc,
                selected: controller.mode == AppThemeMode.system,
                isDark: isDark,
                onTap: () async {
                  await controller.setMode(AppThemeMode.system);
                  if (sheetContext.mounted) Navigator.pop(sheetContext);
                },
              ),
              const SizedBox(height: 9),
              _ThemeOption(
                icon: Iconsax.sun_1,
                title: l10n.lightTheme,
                subtitle: l10n.lightThemeDesc,
                selected: controller.mode == AppThemeMode.light,
                isDark: isDark,
                onTap: () async {
                  await controller.setMode(AppThemeMode.light);
                  if (sheetContext.mounted) Navigator.pop(sheetContext);
                },
              ),
              const SizedBox(height: 9),
              _ThemeOption(
                icon: Iconsax.moon,
                title: l10n.darkTheme,
                subtitle: l10n.darkThemeDesc,
                selected: controller.mode == AppThemeMode.dark,
                isDark: isDark,
                onTap: () async {
                  await controller.setMode(AppThemeMode.dark);
                  if (sheetContext.mounted) Navigator.pop(sheetContext);
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

// ─────────────────────────────────────────────────────────────
// THEME OPTION
// ─────────────────────────────────────────────────────────────

class _ThemeOption extends StatelessWidget {
  const _ThemeOption({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.selected,
    required this.isDark,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
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
        borderRadius: BorderRadius.circular(19),
        splashColor: accent.withValues(alpha: 0.06),
        highlightColor: accent.withValues(alpha: 0.025),
        child: Ink(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: selected
                ? accent.withValues(alpha: isDark ? 0.12 : 0.055)
                : isDark
                ? Colors.white.withValues(alpha: 0.025)
                : Colors.black.withValues(alpha: 0.018),
            borderRadius: BorderRadius.circular(19),
            border: Border.all(
              color: selected
                  ? accent.withValues(alpha: 0.30)
                  : isDark
                  ? Colors.white.withValues(alpha: 0.045)
                  : Colors.black.withValues(alpha: 0.04),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: accent.withValues(alpha: isDark ? 0.11 : 0.065),
                ),
                child: Icon(icon, size: 19, color: accent),
              ),
              const SizedBox(width: 13),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.inter(
                        fontSize: 14.5,
                        fontWeight: FontWeight.w700,
                        color: isDark
                            ? AppColors.textPrimaryDark
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
              const SizedBox(width: 10),
              AnimatedContainer(
                duration: const Duration(milliseconds: 180),
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selected ? accent : Colors.transparent,
                  border: Border.all(
                    width: selected ? 0 : 1.4,
                    color: isDark
                        ? Colors.white.withValues(alpha: 0.15)
                        : Colors.black.withValues(alpha: 0.11),
                  ),
                ),
                child: selected
                    ? const Icon(Icons.check, size: 15, color: Colors.white)
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────
// SECTION HEADER
// ─────────────────────────────────────────────────────────────

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primary.withValues(alpha: isDark ? 0.11 : 0.065),
          ),
          child: Icon(
            icon,
            size: 14,
            color: isDark ? AppColors.primaryLight : AppColors.primary,
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
                ? AppColors.textSecondaryDark
                : AppColors.textSecondaryLight,
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────
// SETTINGS GROUP
// ─────────────────────────────────────────────────────────────

class _SettingsGroup extends StatelessWidget {
  const _SettingsGroup({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: isDark
              ? Colors.white.withValues(alpha: 0.055)
              : AppColors.primary.withValues(alpha: 0.045),
        ),
        boxShadow: [
          if (!isDark)
            BoxShadow(
              color: AppColors.primary.withValues(alpha: 0.035),
              blurRadius: 24,
              spreadRadius: -7,
              offset: const Offset(0, 8),
            ),
        ],
      ),
      child: Column(children: children),
    );
  }
}

// ─────────────────────────────────────────────────────────────
// SETTINGS TILE
// ─────────────────────────────────────────────────────────────

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({
    required this.icon,
    required this.title,
    required this.accent,
    this.subtitle,
    this.showDivider = true,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final Color accent;
  final bool showDivider;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final titleColor =
    isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight;
    final subtitleColor =
    isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap ?? () {},
        splashColor: accent.withValues(alpha: 0.055),
        highlightColor: accent.withValues(alpha: 0.02),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 13, 14, 13),
              child: Row(
                children: [
                  Container(
                    width: 43,
                    height: 43,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: accent.withValues(alpha: isDark ? 0.11 : 0.065),
                    ),
                    child: Icon(icon, size: 19, color: accent),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            overflow: TextOverflow.ellipsis,
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
                        ? Colors.white.withValues(alpha: 0.20)
                        : AppColors.textSecondaryLight.withValues(alpha: 0.50),
                  ),
                ],
              ),
            ),
            if (showDivider)
              Padding(
                padding: const EdgeInsets.only(left: 72),
                child: Divider(
                  height: 1,
                  thickness: 0.7,
                  color: isDark
                      ? Colors.white.withValues(alpha: 0.045)
                      : Colors.black.withValues(alpha: 0.045),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────
// DISCLAIMER
// ─────────────────────────────────────────────────────────────

class _DisclaimerCard extends StatelessWidget {
  const _DisclaimerCard();

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        color: isDark ? AppColors.surfaceDark : AppColors.cardLight,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isDark
              ? Colors.white.withValues(alpha: 0.045)
              : AppColors.primary.withValues(alpha: 0.045),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primary.withValues(alpha: isDark ? 0.11 : 0.065),
            ),
            child: Icon(
              Iconsax.info_circle,
              size: 17,
              color: isDark ? AppColors.primaryLight : AppColors.primary,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              l10n.disclaimer,
              style: GoogleFonts.inter(
                fontSize: 11.5,
                height: 1.55,
                fontWeight: FontWeight.w500,
                color: isDark
                    ? AppColors.textSecondaryDark
                    : AppColors.textSecondaryLight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────
// RESET DIALOG
// ─────────────────────────────────────────────────────────────

class _ResetDialog extends StatelessWidget {
  const _ResetDialog({
    required this.onCancel,
    required this.onConfirm,
  });

  final VoidCallback onCancel;
  final VoidCallback onConfirm;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = AppLocalizations.of(context)!;

    final background =
    isDark ? AppColors.surfaceDark : AppColors.surfaceLight;
    final titleColor =
    isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight;
    final bodyColor =
    isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight;

    return Container(
      padding: const EdgeInsets.fromLTRB(22, 22, 22, 18),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: isDark
              ? Colors.white.withValues(alpha: 0.065)
              : AppColors.primary.withValues(alpha: 0.055),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.45 : 0.14),
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
              shape: BoxShape.circle,
              color: AppColors.error.withValues(alpha: isDark ? 0.12 : 0.075),
              border: Border.all(
                color: AppColors.error.withValues(alpha: 0.10),
              ),
            ),
            child: const Icon(
              Iconsax.refresh,
              color: AppColors.error,
              size: 25,
            ),
          ),
          const SizedBox(height: 18),
          Text(
            l10n.resetProgressTitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.outfit(
              fontSize: 21,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.45,
              color: titleColor,
            ),
          ),
          const SizedBox(height: 9),
          Text(
            l10n.resetProgressBody,
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
                  height: 49,
                  child: OutlinedButton(
                    onPressed: onCancel,
                    style: OutlinedButton.styleFrom(
                      foregroundColor: titleColor,
                      side: BorderSide(
                        color: isDark
                            ? Colors.white.withValues(alpha: 0.10)
                            : Colors.black.withValues(alpha: 0.08),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      l10n.cancel,
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: SizedBox(
                  height: 49,
                  child: ElevatedButton(
                    onPressed: onConfirm,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.error,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Text(
                      l10n.reset,
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

// ─────────────────────────────────────────────────────────────
// FOOTER
// ─────────────────────────────────────────────────────────────

class _Footer extends StatelessWidget {
  const _Footer();

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = AppLocalizations.of(context)!;

    return Column(
      children: [
        Container(
          width: 38,
          height: 3,
          decoration: BoxDecoration(
            color: isDark
                ? Colors.white.withValues(alpha: 0.08)
                : AppColors.primary.withValues(alpha: 0.10),
            borderRadius: BorderRadius.circular(99),
          ),
        ),
        const SizedBox(height: 14),
        Text(
          'PUFFREE',
          style: GoogleFonts.inter(
            fontSize: 10,
            fontWeight: FontWeight.w900,
            letterSpacing: 3.4,
            color: isDark
                ? Colors.white.withValues(alpha: 0.16)
                : AppColors.primary.withValues(alpha: 0.20),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          l10n.madeForFuture,
          style: GoogleFonts.inter(
            fontSize: 9.5,
            fontWeight: FontWeight.w500,
            color: isDark
                ? Colors.white.withValues(alpha: 0.16)
                : AppColors.textSecondaryLight.withValues(alpha: 0.65),
          ),
        ),
      ],
    );
  }
}