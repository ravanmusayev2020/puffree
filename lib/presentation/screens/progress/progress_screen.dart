import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/theme/app_theme.dart';
import '../../../data/bloc/progress/progress_bloc.dart';
import '../../../data/bloc/progress/progress_state.dart';
import '../../../l10n/app_localizations.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final isDark =
        Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark
          ? AppColors.backgroundDark
          : AppColors.backgroundLight,
      body: BlocBuilder<ProgressBloc, ProgressState>(
        builder: (context, state) {
          if (state is ProgressLoading ||
              state is ProgressInitial) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
                color: AppColors.primary,
              ),
            );
          }

          if (state is ProgressError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: _ErrorState(
                  message: state.message,
                  isDark: isDark,
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
            bottom: false,
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(
                    18,
                    14,
                    18,
                    120,
                  ),
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
                          levelTitle: _getLevelTitle(
                            level.level,
                            l10n,
                          ),
                          progress: state.levelProgress,
                          isDark: isDark,
                        ),

                        const SizedBox(height: 28),

                        _SectionHeader(
                          title: l10n.yourResults,
                          subtitle: l10n.whatChanged,
                          isDark: isDark,
                        ),

                        const SizedBox(height: 13),

                        _StatsGrid(
                          isDark: isDark,
                          streak: p.currentStreak,
                          longestStreak:
                          p.longestStreak,
                          moneySaved: p.moneySaved,
                          cigarettesAvoided:
                          p.cigarettesAvoided,
                        ),

                        const SizedBox(height: 29),

                        _SectionHeader(
                          title: l10n.recoveryPath,
                          subtitle: l10n.everyMilestone,
                          isDark: isDark,
                        ),

                        const SizedBox(height: 15),

                        _HealthTimeline(
                          days: p.daysSinceQuit,
                          isDark: isDark,
                        ),

                        const SizedBox(height: 8),

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

  String _getLevelTitle(int level, AppLocalizations l10n) {
    return switch (level) {
      1 => l10n.levelTitle1,
      2 => l10n.levelTitle2,
      3 => l10n.levelTitle3,
      4 => l10n.levelTitle4,
      5 => l10n.levelTitle5,
      6 => l10n.levelTitle6,
      7 => l10n.levelTitle7,
      8 => l10n.levelTitle8,
      9 => l10n.levelTitle9,
      10 => l10n.levelTitle10,
      11 => l10n.levelTitle11,
      12 => l10n.levelTitle12,
      13 => l10n.levelTitle13,
      14 => l10n.levelTitle14,
      _ => l10n.levelTitleDefault,
    };
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// ERROR
// ═══════════════════════════════════════════════════════════════════════════

class _ErrorState extends StatelessWidget {
  const _ErrorState({
    required this.message,
    required this.isDark,
  });

  final String message;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final secondary = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _IconWell(
          icon: Iconsax.info_circle,
          color: AppColors.coral,
          size: 52,
          iconSize: 22,
          isDark: isDark,
        ),
        const SizedBox(height: 14),
        Text(
          AppLocalizations.of(context).failedToLoadProgress,
          textAlign: TextAlign.center,
          style: GoogleFonts.outfit(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: isDark
                ? AppColors.textPrimaryDark
                : AppColors.textPrimaryLight,
          ),
        ),
        const SizedBox(height: 7),
        Text(
          message,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 13,
            height: 1.45,
            fontWeight: FontWeight.w500,
            color: secondary,
          ),
        ),
      ],
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// TOP BAR
// ═══════════════════════════════════════════════════════════════════════════

class _TopBar extends StatelessWidget {
  const _TopBar({
    required this.isDark,
    required this.level,
  });

  final bool isDark;
  final int level;

  @override
  Widget build(BuildContext context) {
    final primaryText = isDark
        ? AppColors.textPrimaryDark
        : AppColors.textPrimaryLight;

    final secondaryText = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _RoundButton(
          icon: Icons.arrow_back_ios_new_rounded,
          isDark: isDark,
          onTap: () => Navigator.maybePop(context),
        ),

        const SizedBox(width: 13),

        Expanded(
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                AppLocalizations.of(context).progress,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.outfit(
                  fontSize: 28,
                  height: 1,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -1.15,
                  color: primaryText,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                AppLocalizations.of(context).youAreFurther,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.inter(
                  fontSize: 11.5,
                  height: 1,
                  fontWeight: FontWeight.w500,
                  color: secondaryText,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(width: 10),

        _LevelBadge(
          level: level,
          isDark: isDark,
        ),
      ],
    );
  }
}

class _LevelBadge extends StatelessWidget {
  const _LevelBadge({
    required this.level,
    required this.isDark,
  });

  final int level;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(
        horizontal: 11,
      ),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(
          alpha: isDark ? 0.11 : 0.065,
        ),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: AppColors.primary.withValues(
            alpha: isDark ? 0.14 : 0.09,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Iconsax.cup5,
            size: 16,
            color: AppColors.primary,
          ),
          const SizedBox(width: 6),
          Text(
            '${AppLocalizations.of(context).levelLabel.toUpperCase()} $level',
            style: GoogleFonts.inter(
              fontSize: 10,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.35,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// HERO
// ═══════════════════════════════════════════════════════════════════════════

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
    final safeProgress =
    progress.clamp(0.0, 1.0).toDouble();

    final primaryText = isDark
        ? AppColors.textPrimaryDark
        : AppColors.textPrimaryLight;

    final secondaryText = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    return Container(
      padding: const EdgeInsets.all(21),
      decoration: BoxDecoration(
        color: isDark
            ? AppColors.surfaceDark
            : AppColors.surfaceLight,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: AppColors.primary.withValues(
            alpha: isDark ? 0.10 : 0.065,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(
              alpha: isDark ? 0.025 : 0.018,
            ),
            blurRadius: 28,
            spreadRadius: -4,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    _LevelPill(
                      level: level,
                      isDark: isDark,
                    ),

                    const SizedBox(height: 13),

                    Text(
                      levelTitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.outfit(
                        fontSize: 29,
                        height: 1,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -1.05,
                        color: primaryText,
                      ),
                    ),

                    const SizedBox(height: 7),

                    Text(
                      AppLocalizations.of(context).yourPathContinues,
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        height: 1.2,
                        fontWeight: FontWeight.w500,
                        color: secondaryText,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 15),

              _LevelOrb(
                level: level,
                progress: safeProgress,
                isDark: isDark,
              ),
            ],
          ),

          const SizedBox(height: 25),

          Row(
            crossAxisAlignment:
            CrossAxisAlignment.end,
            children: [
              Text(
                '$days',
                style: GoogleFonts.outfit(
                  fontSize: 51,
                  height: 0.88,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -2.5,
                  color: primaryText,
                ),
              ),

              const SizedBox(width: 8),

              Padding(
                padding: const EdgeInsets.only(
                  bottom: 5,
                ),
                child: Text(
                  _daysWord(days, AppLocalizations.of(context)),
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: secondaryText,
                  ),
                ),
              ),

              const Spacer(),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 9,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(
                    alpha: isDark ? 0.10 : 0.06,
                  ),
                  borderRadius:
                  BorderRadius.circular(10),
                ),
                child: Text(
                  '${(safeProgress * 100).toInt()}%',
                  style: GoogleFonts.outfit(
                    fontSize: 16,
                    height: 1,
                    fontWeight: FontWeight.w800,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 11),

          _ProgressBar(
            progress: safeProgress,
            isDark: isDark,
          ),

          const SizedBox(height: 10),

          Row(
            children: [
              Expanded(
                child: Text(
                  AppLocalizations.of(context).levelProgress,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    fontSize: 10.5,
                    fontWeight: FontWeight.w500,
                    color: secondaryText,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Icon(
                Iconsax.arrow_right_3,
                size: 13,
                color: secondaryText.withValues(
                  alpha: 0.7,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static String _daysWord(int days, AppLocalizations l10n) {
    if (days % 10 == 1 && days % 100 != 11) {
      return l10n.daysWordOne;
    }

    if ([2, 3, 4].contains(days % 10) &&
        ![12, 13, 14].contains(days % 100)) {
      return l10n.daysWordFew;
    }

    return l10n.daysWordMany;
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// LEVEL PILL
// ═══════════════════════════════════════════════════════════════════════════

class _LevelPill extends StatelessWidget {
  const _LevelPill({
    required this.level,
    required this.isDark,
  });

  final int level;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      padding: const EdgeInsets.symmetric(
        horizontal: 9,
      ),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(
          alpha: isDark ? 0.11 : 0.065,
        ),
        borderRadius: BorderRadius.circular(
          AppRadii.pill,
        ),
        border: Border.all(
          color: AppColors.primary.withValues(
            alpha: 0.10,
          ),
        ),
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
            '${AppLocalizations.of(context).levelLabel.toUpperCase()} $level',
            style: GoogleFonts.inter(
              fontSize: 9,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.75,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// LEVEL ORB
// ═══════════════════════════════════════════════════════════════════════════

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
      width: 84,
      height: 84,
      child: CustomPaint(
        painter: _LevelRingPainter(
          progress: progress,
          trackColor: isDark
              ? Colors.white.withValues(
            alpha: 0.065,
          )
              : AppColors.primary.withValues(
            alpha: 0.075,
          ),
        ),
        child: Center(
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: isDark
                  ? AppColors.cardDark
                  : AppColors.cardLight,
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.primary.withValues(
                  alpha: isDark ? 0.13 : 0.09,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withValues(
                    alpha: isDark ? 0.05 : 0.035,
                  ),
                  blurRadius: 12,
                  spreadRadius: -3,
                ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              '$level',
              textAlign: TextAlign.center,
              style: GoogleFonts.outfit(
                fontSize: 25,
                height: 1,
                fontWeight: FontWeight.w800,
                color: AppColors.primary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LevelRingPainter extends CustomPainter {
  _LevelRingPainter({
    required this.progress,
    required this.trackColor,
  });

  final double progress;
  final Color trackColor;

  @override
  void paint(
      Canvas canvas,
      Size size,
      ) {
    final center = size.center(
      Offset.zero,
    );

    final radius = size.width / 2 - 5;

    final track = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..color = trackColor;

    canvas.drawCircle(
      center,
      radius,
      track,
    );

    if (progress <= 0) {
      return;
    }

    final rect = Rect.fromCircle(
      center: center,
      radius: radius,
    );

    final progressPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..shader = const LinearGradient(
        colors: AppColors.levelGradient,
      ).createShader(rect);

    canvas.drawArc(
      rect,
      -1.5708,
      6.28318 * progress,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(
      covariant _LevelRingPainter oldDelegate,
      ) {
    return oldDelegate.progress != progress ||
        oldDelegate.trackColor != trackColor;
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// SECTION HEADER
// ═══════════════════════════════════════════════════════════════════════════

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
    final primaryText = isDark
        ? AppColors.textPrimaryDark
        : AppColors.textPrimaryLight;

    final secondaryText = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    return Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.outfit(
            fontSize: 21,
            height: 1.1,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.5,
            color: primaryText,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          subtitle,
          style: GoogleFonts.inter(
            fontSize: 11.5,
            height: 1.2,
            fontWeight: FontWeight.w500,
            color: secondaryText,
          ),
        ),
      ],
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// STATS GRID
// ═══════════════════════════════════════════════════════════════════════════

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
    final l10n = AppLocalizations.of(context);
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _ModernStatCard(
                icon: Iconsax.flash_15,
                title: l10n.streak,
                value: '$streak',
                unit: l10n.daysWordMany.substring(0, 1),
                color: AppColors.primary,
                isDark: isDark,
              ),
            ),
            const SizedBox(width: 11),
            Expanded(
              child: _ModernStatCard(
                icon: Iconsax.cup5,
                title: l10n.record,
                value: '$longestStreak',
                unit: l10n.daysWordMany.substring(0, 1),
                color: AppColors.primaryLight,
                isDark: isDark,
              ),
            ),
          ],
        ),
        const SizedBox(height: 11),
        Row(
          children: [
            Expanded(
              child: _ModernStatCard(
                icon: Iconsax.money_recive,
                title: l10n.saved,
                value: moneySaved.toStringAsFixed(0),
                unit: '',
                color: AppColors.success,
                isDark: isDark,
              ),
            ),
            const SizedBox(width: 11),
            Expanded(
              child: _ModernStatCard(
                icon: Iconsax.health,
                title: l10n.avoided,
                value: '$cigarettesAvoided',
                unit: '',
                color: AppColors.primaryLight,
                isDark: isDark,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// MODERN STAT CARD
// ═══════════════════════════════════════════════════════════════════════════

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
    final primaryText = isDark
        ? AppColors.textPrimaryDark
        : AppColors.textPrimaryLight;

    final secondaryText = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    return Container(
      height: 140,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark
            ? AppColors.cardDark
            : AppColors.cardLight,
        borderRadius: BorderRadius.circular(23),
        border: Border.all(
          color: isDark
              ? Colors.white.withValues(
            alpha: 0.045,
          )
              : Colors.black.withValues(
            alpha: 0.028,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(
              alpha: isDark ? 0.085 : 0.018,
            ),
            blurRadius: 18,
            spreadRadius: -3,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _IconWell(
                icon: icon,
                color: color,
                size: 38,
                iconSize: 18,
                isDark: isDark,
              ),
              const Spacer(),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: color.withValues(
                        alpha: 0.30,
                      ),
                      blurRadius: 7,
                      spreadRadius: -1,
                    ),
                  ],
                ),
              ),
            ],
          ),

          const Spacer(),

          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.inter(
              fontSize: 10.5,
              height: 1,
              fontWeight: FontWeight.w600,
              color: secondaryText,
            ),
          ),

          const SizedBox(height: 5),

          Row(
            crossAxisAlignment:
            CrossAxisAlignment.end,
            children: [
              Flexible(
                child: Text(
                  value,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.outfit(
                    fontSize: 25,
                    height: 0.95,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.8,
                    color: primaryText,
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 1,
                ),
                child: Text(
                  unit,
                  style: GoogleFonts.inter(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: secondaryText,
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

// ═══════════════════════════════════════════════════════════════════════════
// ICON WELL
// ═══════════════════════════════════════════════════════════════════════════

class _IconWell extends StatelessWidget {
  const _IconWell({
    required this.icon,
    required this.color,
    required this.size,
    required this.iconSize,
    required this.isDark,
  });

  final IconData icon;
  final Color color;
  final double size;
  final double iconSize;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color.withValues(
            alpha: isDark ? 0.115 : 0.075,
          ),
          borderRadius: BorderRadius.circular(
            size * 0.32,
          ),
          border: Border.all(
            color: color.withValues(
              alpha: isDark ? 0.12 : 0.075,
            ),
          ),
        ),
        child: Center(
          child: Icon(
            icon,
            size: iconSize,
            color: color,
          ),
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// HEALTH TIMELINE
// ═══════════════════════════════════════════════════════════════════════════

class _HealthTimeline extends StatelessWidget {
  const _HealthTimeline({
    required this.days,
    required this.isDark,
  });

  final int days;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final milestones = [
      _Milestone(
        title: l10n.milestone1Title,
        desc: l10n.milestone1Desc,
        unlocked: days >= 0,
      ),
      _Milestone(
        title: l10n.milestone2Title,
        desc: l10n.milestone2Desc,
        unlocked: days >= 1,
      ),
      _Milestone(
        title: l10n.milestone3Title,
        desc: l10n.milestone3Desc,
        unlocked: days >= 3,
      ),
      _Milestone(
        title: l10n.milestone4Title,
        desc: l10n.milestone4Desc,
        unlocked: days >= 14,
      ),
      _Milestone(
        title: l10n.milestone5Title,
        desc: l10n.milestone5Desc,
        unlocked: days >= 30,
      ),
      _Milestone(
        title: l10n.milestone6Title,
        desc: l10n.milestone6Desc,
        unlocked: days >= 90,
      ),
      _Milestone(
        title: l10n.milestone7Title,
        desc: l10n.milestone7Desc,
        unlocked: days >= 365,
      ),
    ];

    return Column(
      children: List.generate(
        milestones.length,
            (index) {
          return _TimelineItem(
            milestone: milestones[index],
            isLast: index == milestones.length - 1,
            isDark: isDark,
          );
        },
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// TIMELINE ITEM
// ═══════════════════════════════════════════════════════════════════════════

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

    final primaryText = isDark
        ? AppColors.textPrimaryDark
        : AppColors.textPrimaryLight;

    final secondaryText = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    final inactiveColor = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 42,
          child: Column(
            children: [
              _TimelineIcon(
                active: active,
                isDark: isDark,
              ),

              if (!isLast)
                Container(
                  width: 1.5,
                  margin: const EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: active
                        ? AppColors.primary.withValues(
                      alpha: 0.16,
                    )
                        : inactiveColor.withValues(
                      alpha: 0.10,
                    ),
                    borderRadius:
                    BorderRadius.circular(10),
                  ),
                ),
            ],
          ),
        ),

        const SizedBox(width: 10),

        Expanded(
          child: Container(
            margin: const EdgeInsets.only(
              bottom: 11,
            ),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: active
                  ? (isDark
                  ? AppColors.surfaceDark
                  : AppColors.cardLight)
                  : (isDark
                  ? AppColors.cardDark
                  : AppColors.cardLight),
              borderRadius: BorderRadius.circular(21),
              border: Border.all(
                color: active
                    ? AppColors.primary.withValues(
                  alpha: isDark ? 0.11 : 0.075,
                )
                    : (isDark
                    ? Colors.white.withValues(
                  alpha: 0.035,
                )
                    : Colors.black.withValues(
                  alpha: 0.028,
                )),
              ),
              boxShadow: active
                  ? [
                BoxShadow(
                  color:
                  AppColors.primary.withValues(
                    alpha: isDark ? 0.018 : 0.012,
                  ),
                  blurRadius: 15,
                  spreadRadius: -4,
                  offset: const Offset(0, 7),
                ),
              ]
                  : null,
            ),
            child: Row(
              crossAxisAlignment:
              CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              milestone.title,
                              maxLines: 1,
                              overflow:
                              TextOverflow.ellipsis,
                              style: GoogleFonts.inter(
                                fontSize: 13.5,
                                height: 1.15,
                                fontWeight: FontWeight.w700,
                                color: active
                                    ? primaryText
                                    : secondaryText,
                              ),
                            ),
                          ),

                          if (active) ...[
                            const SizedBox(width: 7),
                            Container(
                              width: 5,
                              height: 5,
                              decoration:
                              const BoxDecoration(
                                color:
                                AppColors.primary,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ],
                      ),

                      const SizedBox(height: 6),

                      Text(
                        milestone.desc,
                        style: GoogleFonts.inter(
                          fontSize: 10.8,
                          height: 1.4,
                          fontWeight: FontWeight.w500,
                          color: secondaryText,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 9),

                SizedBox(
                  width: 18,
                  child: Icon(
                    active
                        ? Iconsax.arrow_right_3
                        : Iconsax.lock_1,
                    size: active ? 15 : 14,
                    color: active
                        ? AppColors.primary.withValues(
                      alpha: 0.62,
                    )
                        : secondaryText.withValues(
                      alpha: 0.45,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _TimelineIcon extends StatelessWidget {
  const _TimelineIcon({
    required this.active,
    required this.isDark,
  });

  final bool active;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 38,
      height: 38,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: active
              ? AppColors.primary.withValues(
            alpha: isDark ? 0.12 : 0.075,
          )
              : (isDark
              ? Colors.white.withValues(
            alpha: 0.04,
          )
              : Colors.black.withValues(
            alpha: 0.028,
          )),
          shape: BoxShape.circle,
          border: Border.all(
            color: active
                ? AppColors.primary.withValues(
              alpha: isDark ? 0.18 : 0.12,
            )
                : (isDark
                ? Colors.white.withValues(
              alpha: 0.045,
            )
                : Colors.black.withValues(
              alpha: 0.035,
            )),
          ),
        ),
        child: Center(
          child: Icon(
            active
                ? Iconsax.tick_circle5
                : Iconsax.lock_1,
            size: active ? 17 : 16,
            color: active
                ? AppColors.primary
                : (isDark
                ? AppColors.textSecondaryDark
                : AppColors.textSecondaryLight),
          ),
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// BOTTOM MESSAGE
// ═══════════════════════════════════════════════════════════════════════════

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
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: AppColors.levelGradient,
        ),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(
              alpha: 0.14,
            ),
            blurRadius: 24,
            spreadRadius: -5,
            offset: const Offset(0, 11),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment:
        CrossAxisAlignment.center,
        children: [
          Container(
            width: 43,
            height: 43,
            decoration: BoxDecoration(
              color: AppColors.surfaceLight.withValues(
                alpha: 0.12,
              ),
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.surfaceLight.withValues(
                  alpha: 0.10,
                ),
              ),
            ),
            alignment: Alignment.center,
            child: const Icon(
              Iconsax.heart5,
              color: AppColors.surfaceLight,
              size: 19,
            ),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              days == 0
                  ? AppLocalizations.of(context).todayStartJourney
                  : AppLocalizations.of(context).realResultKeepGoing(
                days,
                _daysWord(days, AppLocalizations.of(context)),
              ),
              style: GoogleFonts.inter(
                fontSize: 13,
                height: 1.4,
                fontWeight: FontWeight.w600,
                color: AppColors.surfaceLight,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _daysWord(int days, AppLocalizations l10n) {
    if (days % 10 == 1 && days % 100 != 11) {
      return l10n.daysWordOne;
    }

    if ([2, 3, 4].contains(days % 10) &&
        ![12, 13, 14].contains(days % 100)) {
      return l10n.daysWordFew;
    }

    return l10n.daysWordMany;
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// BACK BUTTON
// ═══════════════════════════════════════════════════════════════════════════

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
        splashColor: AppColors.primary.withValues(
          alpha: 0.07,
        ),
        highlightColor: AppColors.primary.withValues(
          alpha: 0.035,
        ),
        child: Ink(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: isDark
                ? AppColors.surfaceDark
                : AppColors.surfaceLight,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: isDark
                  ? Colors.white.withValues(
                alpha: 0.05,
              )
                  : Colors.black.withValues(
                alpha: 0.03,
              ),
            ),
          ),
          child: Center(
            child: Icon(
              icon,
              size: 17,
              color: isDark
                  ? AppColors.textPrimaryDark
                  : AppColors.textPrimaryLight,
            ),
          ),
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// PROGRESS BAR
// ═══════════════════════════════════════════════════════════════════════════

class _ProgressBar extends StatelessWidget {
  const _ProgressBar({
    required this.progress,
    required this.isDark,
  });

  final double progress;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final safeProgress =
    progress.clamp(0.0, 1.0).toDouble();

    return ClipRRect(
      borderRadius: BorderRadius.circular(
        AppRadii.pill,
      ),
      child: SizedBox(
        height: 8,
        child: Stack(
          children: [
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isDark
                      ? Colors.white.withValues(
                    alpha: 0.055,
                  )
                      : AppColors.primary.withValues(
                    alpha: 0.055,
                  ),
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor: safeProgress,
              child: const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: AppColors.levelGradient,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// MODEL
// ═══════════════════════════════════════════════════════════════════════════

class _Milestone {
  final String title;
  final String desc;
  final bool unlocked;

  const _Milestone({
    required this.title,
    required this.desc,
    required this.unlocked,
  });
}