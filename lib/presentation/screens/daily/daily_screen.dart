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

    final progressState =
        context.read<ProgressBloc>().state;

    final day = progressState is ProgressLoaded
        ? progressState.progress.daysSinceQuit
        : 0;

    context.read<DailyBloc>().add(
      LoadDailyMissions(day),
    );
  }

  Future<void> _openMission(
      DailyMission mission,
      ) async {
    final dailyBloc =
    context.read<DailyBloc>();
    final progressBloc =
    context.read<ProgressBloc>();

    if (mission.isPremium) {
      final premium =
          context.read<PremiumBloc>().state;

      if (!premium.hasAccess) {
        if (!mounted) return;

        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>
            const PremiumScreen(),
          ),
        );

        return;
      }
    }

    if (mission.isCompleted) {
      return;
    }

    var completed = false;

    if (mission.id == 'breathe' ||
        mission.id == 'meditation') {
      if (!mounted) return;

      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) =>
          const CravingScreen(
            initialTab: 1,
          ),
        ),
      );

      completed = true;
    } else if (mission.id == 'journal' ||
        mission.id == 'reflect') {
      if (!mounted) return;

      completed =
      await JournalSheet.show(context);
    } else {
      completed = true;
    }

    if (!mounted) return;

    if (completed) {
      dailyBloc.add(
        CompleteDailyMission(
          mission.id,
        ),
      );

      progressBloc.add(
        CompleteMission(
          mission.id,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark =
        Theme.of(context).brightness ==
            Brightness.dark;

    final l10n =
    AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: isDark
          ? AppColors.backgroundDark
          : AppColors.backgroundLight,
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
    final completed =
        state.completedCount;
    final total =
        state.missions.length;

    final progress = total == 0
        ? 0.0
        : (completed / total)
        .clamp(0.0, 1.0);

    return CustomScrollView(
      physics:
      const BouncingScrollPhysics(),
      slivers: [
        SliverPadding(
          padding:
          const EdgeInsets.fromLTRB(
            18,
            12,
            18,
            38,
          ),
          sliver: SliverList(
            delegate:
            SliverChildListDelegate(
              [
                _DailyTopBar(
                  l10n: l10n,
                  isDark: isDark,
                )
                    .animate()
                    .fadeIn(
                  duration: 400.ms,
                ),
                const SizedBox(height: 18),
                _DailyHero(
                  completed: completed,
                  total: total,
                  progress: progress,
                  l10n: l10n,
                  isDark: isDark,
                )
                    .animate()
                    .fadeIn(
                  duration: 500.ms,
                )
                    .slideY(
                  begin: 0.05,
                  curve:
                  Curves.easeOutCubic,
                ),
                const SizedBox(height: 15),
                _DailyMomentum(
                  completed: completed,
                  total: total,
                  progress: progress,
                  isDark: isDark,
                )
                    .animate()
                    .fadeIn(
                  delay: 70.ms,
                ),
                const SizedBox(height: 16),
                _JournalPanel(
                  l10n: l10n,
                  isDark: isDark,
                  onTap: () =>
                      JournalSheet.show(
                        context,
                      ),
                )
                    .animate()
                    .fadeIn(
                  delay: 100.ms,
                )
                    .slideY(
                  begin: 0.035,
                ),
                const SizedBox(height: 28),
                _DailySectionHeader(
                  title: l10n.missions,
                  subtitle: l10n.completedOf(
                    completed,
                    total,
                  ),
                  isDark: isDark,
                ),
                const SizedBox(height: 13),
                ...List.generate(
                  state.missions.length,
                      (index) {
                    final mission =
                    state.missions[index];

                    return _PremiumMissionCard(
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
                      onTap: () =>
                          _openMission(
                            mission,
                          ),
                    )
                        .animate()
                        .fadeIn(
                      delay:
                      (55 * index).ms,
                      duration: 350.ms,
                    )
                        .slideY(
                      begin: 0.035,
                      curve: Curves
                          .easeOutCubic,
                    );
                  },
                ),
                const SizedBox(height: 6),
                _DailyCompletionPanel(
                  completed: completed,
                  total: total,
                  progress: progress,
                  isDark: isDark,
                )
                    .animate()
                    .fadeIn(
                  delay: 120.ms,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  String _title(
      AppLocalizations l10n,
      String key,
      ) {
    return switch (key) {
      'mission_breathe' =>
      l10n.missionBreathe,
      'mission_water' =>
      l10n.missionWater,
      'mission_walk' =>
      l10n.missionWalk,
      'mission_journal' =>
      l10n.missionJournal,
      'mission_meditation' =>
      l10n.missionMeditation,
      'mission_deep_focus' =>
      l10n.missionFocus,
      'mission_reflect' =>
      l10n.missionReflect,
      'mission_help' =>
      l10n.missionHelp,
      _ => key,
    };
  }

  String _desc(
      AppLocalizations l10n,
      String key,
      ) {
    return switch (key) {
      'mission_breathe_desc' =>
      l10n.missionBreatheDesc,
      'mission_water_desc' =>
      l10n.missionWaterDesc,
      'mission_walk_desc' =>
      l10n.missionWalkDesc,
      'mission_journal_desc' =>
      l10n.missionJournalDesc,
      'mission_meditation_desc' =>
      l10n.missionMeditationDesc,
      'mission_deep_focus_desc' =>
      l10n.missionFocusDesc,
      'mission_reflect_desc' =>
      l10n.missionReflectDesc,
      'mission_help_desc' =>
      l10n.missionHelpDesc,
      _ => '',
    };
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// TOP BAR
// ═══════════════════════════════════════════════════════════════════════════

class _DailyTopBar extends StatelessWidget {
  const _DailyTopBar({
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
                'TODAY',
                style: GoogleFonts.inter(
                  fontSize: 9,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.7,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                l10n.missions,
                style: GoogleFonts.outfit(
                  fontSize: 30,
                  height: 0.98,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -1.2,
                  color: isDark
                      ? AppColors.textPrimaryDark
                      : AppColors.textPrimaryLight,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Маленькие шаги. Большие изменения.',
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
        const SizedBox(width: 14),
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: isDark
                ? AppColors.surfaceDark
                : AppColors.surfaceLight,
            borderRadius:
            BorderRadius.circular(17),
            border: Border.all(
              color: AppColors.primary
                  .withValues(alpha: 0.07),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(
                  alpha: isDark
                      ? 0.10
                      : 0.035,
                ),
                blurRadius: 18,
                offset:
                const Offset(0, 8),
              ),
            ],
          ),
          child: Icon(
            Iconsax.calendar_1,
            size: 19,
            color: isDark
                ? AppColors.textPrimaryDark
                .withValues(alpha: 0.72)
                : AppColors.textPrimaryLight,
          ),
        ),
      ],
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// HERO
// ═══════════════════════════════════════════════════════════════════════════

class _DailyHero extends StatelessWidget {
  const _DailyHero({
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

    final finished =
        completed == total &&
            total > 0;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: isDark
              ? [
            AppColors.surfaceDark,
            AppColors.cardDark,
          ]
              : [
            AppColors.cardLight,
            const Color(0xFFF0F7F4),
          ],
        ),
        borderRadius:
        BorderRadius.circular(30),
        border: Border.all(
          color: AppColors.primary
              .withValues(
            alpha: isDark
                ? 0.10
                : 0.07,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary
                .withValues(
              alpha: isDark
                  ? 0.08
                  : 0.055,
            ),
            blurRadius: 28,
            offset:
            const Offset(0, 15),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _StatusChip(
                icon: finished
                    ? Iconsax.tick_circle5
                    : Iconsax.flash_15,
                text: finished
                    ? 'COMPLETE'
                    : 'IN PROGRESS',
                isDark: isDark,
              ),
              const Spacer(),
              Text(
                '$completed / $total',
                style: GoogleFonts.outfit(
                  fontSize: 15,
                  fontWeight:
                  FontWeight.w800,
                  color: isDark
                      ? AppColors.textPrimaryDark
                      : AppColors.textPrimaryLight,
                ),
              ),
            ],
          ),
          const SizedBox(height: 23),
          Row(
            crossAxisAlignment:
            CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      finished
                          ? 'Всё выполнено'
                          : 'Твой план на сегодня',
                      style:
                      GoogleFonts.outfit(
                        fontSize: 22,
                        height: 1.0,
                        fontWeight:
                        FontWeight.w800,
                        letterSpacing: -0.7,
                        color: isDark
                            ? AppColors.textPrimaryDark
                            : AppColors.textPrimaryLight,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      l10n.completedOf(
                        completed,
                        total,
                      ),
                      style:
                      GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight:
                        FontWeight.w600,
                        color: isDark
                            ? AppColors
                            .textSecondaryDark
                            : AppColors
                            .textSecondaryLight,
                      ),
                    ),
                    const SizedBox(height: 18),
                    Row(
                      children: [
                        Text(
                          '$percentage%',
                          style:
                          GoogleFonts.outfit(
                            fontSize: 15,
                            fontWeight:
                            FontWeight.w800,
                            color:
                            AppColors.primary,
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          'TODAY',
                          style:
                          GoogleFonts.inter(
                            fontSize: 8,
                            fontWeight:
                            FontWeight.w800,
                            letterSpacing:
                            1.1,
                            color: isDark
                                ? AppColors
                                .textSecondaryDark
                                : AppColors
                                .textSecondaryLight,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 18),
              _DailyProgressRing(
                progress: progress,
                percentage: percentage,
                isDark: isDark,
              ),
            ],
          ),
          const SizedBox(height: 23),
          _ThinProgressLine(
            progress: progress,
            isDark: isDark,
          ),
          const SizedBox(height: 9),
          Row(
            children: [
              Text(
                finished
                    ? 'Day complete'
                    : 'Keep going',
                style: GoogleFonts.inter(
                  fontSize: 10,
                  fontWeight:
                  FontWeight.w600,
                  color: isDark
                      ? AppColors
                      .textSecondaryDark
                      : AppColors
                      .textSecondaryLight,
                ),
              ),
              const Spacer(),
              Text(
                '$percentage%',
                style: GoogleFonts.inter(
                  fontSize: 10,
                  fontWeight:
                  FontWeight.w800,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({
    required this.icon,
    required this.text,
    required this.isDark,
  });

  final IconData icon;
  final String text;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 9,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: AppColors.primary
            .withValues(
          alpha: isDark
              ? 0.10
              : 0.075,
        ),
        borderRadius:
        BorderRadius.circular(
          999,
        ),
        border: Border.all(
          color: AppColors.primary
              .withValues(
            alpha: 0.10,
          ),
        ),
      ),
      child: Row(
        mainAxisSize:
        MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 13,
            color: AppColors.primary,
          ),
          const SizedBox(width: 6),
          Text(
            text,
            style: GoogleFonts.inter(
              fontSize: 9,
              fontWeight:
              FontWeight.w800,
              letterSpacing: 1,
              color: isDark
                  ? AppColors
                  .textPrimaryDark
                  : AppColors
                  .textPrimaryLight,
            ),
          ),
        ],
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// DAILY RING
// ═══════════════════════════════════════════════════════════════════════════

class _DailyProgressRing
    extends StatelessWidget {
  const _DailyProgressRing({
    required this.progress,
    required this.percentage,
    required this.isDark,
  });

  final double progress;
  final int percentage;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 104,
      height: 104,
      child: CustomPaint(
        painter: _RingPainter(
          progress: progress,
          trackColor: isDark
              ? Colors.white.withValues(
            alpha: 0.06,
          )
              : AppColors.primary
              .withValues(
            alpha: 0.07,
          ),
          glowColor:
          AppColors.primary.withValues(
            alpha: 0.07,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize:
            MainAxisSize.min,
            children: [
              Text(
                '$percentage%',
                style:
                GoogleFonts.outfit(
                  fontSize: 24,
                  fontWeight:
                  FontWeight.w800,
                  letterSpacing: -0.8,
                  color: isDark
                      ? AppColors
                      .textPrimaryDark
                      : AppColors
                      .textPrimaryLight,
                ),
              ),
              Text(
                'TODAY',
                style:
                GoogleFonts.inter(
                  fontSize: 8,
                  fontWeight:
                  FontWeight.w800,
                  letterSpacing: 1.2,
                  color: isDark
                      ? AppColors
                      .textSecondaryDark
                      : AppColors
                      .textSecondaryLight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RingPainter
    extends CustomPainter {
  _RingPainter({
    required this.progress,
    required this.trackColor,
    required this.glowColor,
  });

  final double progress;
  final Color trackColor;
  final Color glowColor;

  @override
  void paint(
      Canvas canvas,
      Size size,
      ) {
    final center =
    size.center(Offset.zero);

    final radius =
        size.width / 2 - 8;

    final track = Paint()
      ..style =
          PaintingStyle.stroke
      ..strokeWidth = 7
      ..strokeCap =
          StrokeCap.round
      ..color = trackColor;

    canvas.drawCircle(
      center,
      radius,
      track,
    );

    if (progress <= 0) {
      return;
    }

    final rect =
    Rect.fromCircle(
      center: center,
      radius: radius,
    );

    final glow = Paint()
      ..style =
          PaintingStyle.stroke
      ..strokeWidth = 11
      ..strokeCap =
          StrokeCap.round
      ..color = glowColor;

    canvas.drawArc(
      rect,
      -1.5708,
      6.28318 * progress,
      false,
      glow,
    );

    final paint = Paint()
      ..style =
          PaintingStyle.stroke
      ..strokeWidth = 7
      ..strokeCap =
          StrokeCap.round
      ..shader = const LinearGradient(
        colors: AppColors.levelGradient,
      ).createShader(rect);

    canvas.drawArc(
      rect,
      -1.5708,
      6.28318 * progress,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(
      covariant _RingPainter oldDelegate,
      ) {
    return oldDelegate.progress !=
        progress;
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// PROGRESS LINE
// ═══════════════════════════════════════════════════════════════════════════

class _ThinProgressLine
    extends StatelessWidget {
  const _ThinProgressLine({
    required this.progress,
    required this.isDark,
  });

  final double progress;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
      BorderRadius.circular(
        999,
      ),
      child: SizedBox(
        height: 7,
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                color: isDark
                    ? Colors.white
                    .withValues(
                  alpha: 0.055,
                )
                    : AppColors.primary
                    .withValues(
                  alpha: 0.055,
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor:
              progress.clamp(
                0.0,
                1.0,
              ),
              child: Container(
                decoration:
                const BoxDecoration(
                  gradient:
                  LinearGradient(
                    colors:
                    AppColors.levelGradient,
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
// MOMENTUM
// ═══════════════════════════════════════════════════════════════════════════

class _DailyMomentum
    extends StatelessWidget {
  const _DailyMomentum({
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
    final remaining =
        total - completed;

    return Container(
      padding:
      const EdgeInsets.fromLTRB(
        16,
        14,
        16,
        14,
      ),
      decoration: BoxDecoration(
        color: isDark
            ? AppColors.cardDark
            : AppColors.cardLight,
        borderRadius:
        BorderRadius.circular(23),
        border: Border.all(
          color: isDark
              ? Colors.white.withValues(
            alpha: 0.045,
          )
              : Colors.black.withValues(
            alpha: 0.025,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black
                .withValues(
              alpha:
              isDark ? 0.08 : 0.02,
            ),
            blurRadius: 16,
            offset:
            const Offset(0, 7),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 43,
            height: 43,
            decoration: BoxDecoration(
              color: AppColors.primary
                  .withValues(
                alpha: 0.09,
              ),
              borderRadius:
              BorderRadius.circular(
                14,
              ),
            ),
            child: const Icon(
              Iconsax.chart_success,
              color: AppColors.primary,
              size: 19,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  'MOMENTUM',
                  style:
                  GoogleFonts.inter(
                    fontSize: 9,
                    fontWeight:
                    FontWeight.w800,
                    letterSpacing: 1.5,
                    color:
                    AppColors.primary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  remaining <= 0
                      ? 'Все миссии завершены'
                      : '$remaining миссий осталось',
                  style:
                  GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight:
                    FontWeight.w700,
                    color: isDark
                        ? AppColors
                        .textPrimaryDark
                        .withValues(
                      alpha: 0.78,
                    )
                        : AppColors
                        .textPrimaryLight,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          CustomPaint(
            size:
            const Size(61, 28),
            painter:
            _MomentumPainter(
              progress: progress,
              color:
              AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// JOURNAL
// ═══════════════════════════════════════════════════════════════════════════

class _JournalPanel
    extends StatelessWidget {
  const _JournalPanel({
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
        borderRadius:
        BorderRadius.circular(27),
        child: Ink(
          padding:
          const EdgeInsets.all(17),
          decoration: BoxDecoration(
            gradient:
            const LinearGradient(
              begin:
              Alignment.topLeft,
              end: Alignment.bottomRight,
              colors:
              AppColors.journalGradient,
            ),
            borderRadius:
            BorderRadius.circular(27),
            boxShadow: [
              BoxShadow(
                color: AppColors.accent
                    .withValues(
                  alpha: 0.16,
                ),
                blurRadius: 22,
                offset:
                const Offset(0, 9),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 49,
                height: 49,
                decoration:
                BoxDecoration(
                  color: Colors.white
                      .withValues(
                    alpha: 0.13,
                  ),
                  borderRadius:
                  BorderRadius.circular(
                    17,
                  ),
                ),
                child: const Icon(
                  Iconsax.book_1,
                  color: Colors.white,
                  size: 21,
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
                      style:
                      GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight:
                        FontWeight.w800,
                        color:
                        Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      l10n.moodCheckHint,
                      maxLines: 2,
                      overflow:
                      TextOverflow.ellipsis,
                      style:
                      GoogleFonts.inter(
                        fontSize: 11,
                        height: 1.35,
                        fontWeight:
                        FontWeight.w500,
                        color: Colors
                            .white
                            .withValues(
                          alpha: 0.72,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 35,
                height: 35,
                decoration:
                BoxDecoration(
                  color: Colors.white
                      .withValues(
                    alpha: 0.10,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Iconsax.arrow_right_3,
                  size: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// SECTION HEADER
// ═══════════════════════════════════════════════════════════════════════════

class _DailySectionHeader
    extends StatelessWidget {
  const _DailySectionHeader({
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
                style:
                GoogleFonts.outfit(
                  fontSize: 22,
                  fontWeight:
                  FontWeight.w800,
                  letterSpacing: -0.7,
                  color: isDark
                      ? AppColors
                      .textPrimaryDark
                      : AppColors
                      .textPrimaryLight,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style:
                GoogleFonts.inter(
                  fontSize: 11,
                  fontWeight:
                  FontWeight.w500,
                  color: isDark
                      ? AppColors
                      .textSecondaryDark
                      : AppColors
                      .textSecondaryLight,
                ),
              ),
            ],
          ),
        ),
        Text(
          'DAILY',
          style: GoogleFonts.inter(
            fontSize: 9,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.5,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// MISSION CARD
// ═══════════════════════════════════════════════════════════════════════════

class _PremiumMissionCard
    extends StatelessWidget {
  const _PremiumMissionCard({
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
    final completed =
        mission.isCompleted;

    return Padding(
      padding:
      const EdgeInsets.only(
        bottom: 11,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap:
          completed ? null : onTap,
          borderRadius:
          BorderRadius.circular(
            25,
          ),
          child: Ink(
            padding:
            const EdgeInsets.all(
              14,
            ),
            decoration: BoxDecoration(
              color: completed
                  ? isDark
                  ? AppColors
                  .surfaceDark
                  : const Color(
                0xFFF0F8F5,
              )
                  : isDark
                  ? AppColors
                  .cardDark
                  : AppColors
                  .cardLight,
              borderRadius:
              BorderRadius.circular(
                25,
              ),
              border: Border.all(
                color: completed
                    ? AppColors.primary
                    .withValues(
                  alpha: 0.14,
                )
                    : isDark
                    ? Colors.white
                    .withValues(
                  alpha: 0.045,
                )
                    : Colors.black
                    .withValues(
                  alpha: 0.025,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black
                      .withValues(
                    alpha: isDark
                        ? 0.075
                        : 0.02,
                  ),
                  blurRadius: 17,
                  offset:
                  const Offset(0, 8),
                ),
              ],
            ),
            child: Row(
              children: [
                _MissionVisual(
                  mission: mission,
                  completed:
                  completed,
                  isDark: isDark,
                ),
                const SizedBox(
                  width: 13,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment
                        .start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              title,
                              maxLines:
                              1,
                              overflow:
                              TextOverflow
                                  .ellipsis,
                              style:
                              GoogleFonts
                                  .inter(
                                fontSize:
                                14,
                                fontWeight:
                                FontWeight
                                    .w700,
                                letterSpacing:
                                -0.15,
                                decoration:
                                completed
                                    ? TextDecoration
                                    .lineThrough
                                    : null,
                                color: completed
                                    ? isDark
                                    ? AppColors
                                    .textSecondaryDark
                                    : AppColors
                                    .textSecondaryLight
                                    : isDark
                                    ? AppColors
                                    .textPrimaryDark
                                    : AppColors
                                    .textPrimaryLight,
                              ),
                            ),
                          ),
                          if (mission.isPremium)
                            const _ProBadge(),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        desc,
                        maxLines: 2,
                        overflow:
                        TextOverflow.ellipsis,
                        style:
                        GoogleFonts.inter(
                          fontSize: 11,
                          height: 1.35,
                          fontWeight:
                          FontWeight.w500,
                          color: completed
                              ? isDark
                              ? AppColors
                              .textSecondaryDark
                              .withValues(
                            alpha:
                            0.45,
                          )
                              : AppColors
                              .textSecondaryLight
                              : isDark
                              ? AppColors
                              .textSecondaryDark
                              : AppColors
                              .textSecondaryLight,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 9),
                _MissionAction(
                  completed:
                  completed,
                  isDark: isDark,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MissionVisual
    extends StatelessWidget {
  const _MissionVisual({
    required this.mission,
    required this.completed,
    required this.isDark,
  });

  final DailyMission mission;
  final bool completed;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54,
      height: 54,
      decoration: BoxDecoration(
        gradient: completed
            ? const LinearGradient(
          colors:
          AppColors.levelGradient,
        )
            : LinearGradient(
          colors: [
            AppColors.primary
                .withValues(
              alpha: 0.12,
            ),
            AppColors.primary
                .withValues(
              alpha: 0.045,
            ),
          ],
        ),
        borderRadius:
        BorderRadius.circular(
          17,
        ),
        border: Border.all(
          color: AppColors.primary
              .withValues(
            alpha: completed
                ? 0.10
                : 0.07,
          ),
        ),
        boxShadow: completed
            ? [
          BoxShadow(
            color: AppColors
                .primary
                .withValues(
              alpha: 0.16,
            ),
            blurRadius: 15,
            offset:
            const Offset(0, 7),
          ),
        ]
            : null,
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
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}

class _MissionAction
    extends StatelessWidget {
  const _MissionAction({
    required this.completed,
    required this.isDark,
  });

  final bool completed;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 31,
      height: 31,
      decoration: BoxDecoration(
        color: completed
            ? AppColors.primary
            .withValues(
          alpha: 0.09,
        )
            : isDark
            ? Colors.white
            .withValues(
          alpha: 0.035,
        )
            : Colors.black
            .withValues(
          alpha: 0.028,
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
            ? AppColors
            .textSecondaryDark
            : AppColors
            .textSecondaryLight,
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// PRO BADGE
// ═══════════════════════════════════════════════════════════════════════════

class _ProBadge extends StatelessWidget {
  const _ProBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      const EdgeInsets.only(
        left: 6,
      ),
      padding:
      const EdgeInsets.symmetric(
        horizontal: 7,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: AppColors.amber
            .withValues(
          alpha: 0.10,
        ),
        borderRadius:
        BorderRadius.circular(
          8,
        ),
        border: Border.all(
          color: AppColors.amber
              .withValues(
            alpha: 0.16,
          ),
        ),
      ),
      child: Row(
        mainAxisSize:
        MainAxisSize.min,
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
              fontSize: 8,
              fontWeight:
              FontWeight.w800,
              letterSpacing: 0.5,
              color:
              AppColors.amber,
            ),
          ),
        ],
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// COMPLETION PANEL
// ═══════════════════════════════════════════════════════════════════════════

class _DailyCompletionPanel
    extends StatelessWidget {
  const _DailyCompletionPanel({
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

    final finished =
        completed == total;

    return Container(
      padding:
      const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: isDark
            ? AppColors.surfaceDark
            : const Color(0xFFEFF8F4),
        borderRadius:
        BorderRadius.circular(27),
        border: Border.all(
          color: AppColors.primary
              .withValues(
            alpha: 0.11,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration:
                BoxDecoration(
                  color: AppColors
                      .primary
                      .withValues(
                    alpha: 0.10,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  finished
                      ? Iconsax.cup5
                      : Iconsax.flash_15,
                  size: 20,
                  color:
                  AppColors.primary,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment
                      .start,
                  children: [
                    Text(
                      finished
                          ? 'День завершён'
                          : 'Продолжай в том же духе',
                      style:
                      GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight:
                        FontWeight.w800,
                        color: isDark
                            ? AppColors
                            .textPrimaryDark
                            : AppColors
                            .textPrimaryLight,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      '$completed из $total выполнено',
                      style:
                      GoogleFonts.inter(
                        fontSize: 10.5,
                        fontWeight:
                        FontWeight.w500,
                        color: isDark
                            ? AppColors
                            .textSecondaryDark
                            : AppColors
                            .textSecondaryLight,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                '${(progress * 100).toInt()}%',
                style: GoogleFonts.outfit(
                  fontSize: 21,
                  fontWeight:
                  FontWeight.w800,
                  letterSpacing: -0.5,
                  color:
                  AppColors.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          _ThinProgressLine(
            progress: progress,
            isDark: isDark,
          ),
        ],
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// MOMENTUM PAINTER
// ═══════════════════════════════════════════════════════════════════════════

class _MomentumPainter
    extends CustomPainter {
  _MomentumPainter({
    required this.progress,
    required this.color,
  });

  final double progress;
  final Color color;

  @override
  void paint(
      Canvas canvas,
      Size size,
      ) {
    final paint = Paint()
      ..style =
          PaintingStyle.stroke
      ..strokeWidth = 2.3
      ..strokeCap =
          StrokeCap.round
      ..strokeJoin =
          StrokeJoin.round
      ..color = color;

    final points = <Offset>[
      Offset(
        0,
        size.height * 0.74,
      ),
      Offset(
        size.width * 0.18,
        size.height * 0.66,
      ),
      Offset(
        size.width * 0.34,
        size.height * 0.70,
      ),
      Offset(
        size.width * 0.49,
        size.height * 0.45,
      ),
      Offset(
        size.width * 0.64,
        size.height * 0.54,
      ),
      Offset(
        size.width * 0.80,
        size.height * 0.23,
      ),
      Offset(
        size.width,
        size.height * 0.12 +
            (1 - progress) * 5,
      ),
    ];

    final path = Path()
      ..moveTo(
        points.first.dx,
        points.first.dy,
      );

    for (var i = 1;
    i < points.length;
    i++) {
      path.lineTo(
        points[i].dx,
        points[i].dy,
      );
    }

    canvas.drawPath(
      path,
      paint,
    );

    final dotPaint = Paint()
      ..color = color;

    canvas.drawCircle(
      points.last,
      3,
      dotPaint,
    );
  }

  @override
  bool shouldRepaint(
      covariant _MomentumPainter
      oldDelegate,
      ) {
    return oldDelegate.progress !=
        progress;
  }
}