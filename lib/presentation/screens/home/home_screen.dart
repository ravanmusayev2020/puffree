import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/utils/level_copy.dart';
import '../../../data/bloc/progress/progress_bloc.dart';
import '../../../data/bloc/progress/progress_event.dart';
import '../../../data/bloc/progress/progress_state.dart';
import '../../../data/models/currency_option.dart';
import '../../../l10n/app_localizations.dart';
import '../../widgets/check_in_success.dart';
import '../premium/premium_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
                color: AppColors.primary,
              ),
            );
          }

          if (state is ProgressError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Text(
                  state.message,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: isDark
                        ? AppColors.textPrimaryDark
                        : AppColors.textPrimaryLight,
                  ),
                ),
              ),
            );
          }

          if (state is ProgressLoaded) {
            return _HomeBody(state: state);
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    required this.state,
  });

  final ProgressLoaded state;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final isDark =
        Theme.of(context).brightness == Brightness.dark;

    final ru =
        Localizations.localeOf(context).languageCode
            .toLowerCase() ==
            'ru';

    final progress = state.progress;
    final level = state.currentLevel;

    final name = progress.displayName.isEmpty
        ? l10n.friend
        : progress.displayName;

    final money = CurrencyOption.formatPrice(
      progress.moneySaved,
      code: progress.currencyCode,
      locale: ru ? 'ru' : 'en',
    );

    return SafeArea(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(
          18,
          12,
          18,
          128,
        ),
        children: [
          _buildTopBar(
            name,
            l10n,
            progress.avatarEmoji,
            isDark,
          ),
          const SizedBox(height: 20),
          _buildHeroDashboard(
            state,
            l10n,
            isDark,
            ru,
            level,
          ),
          const SizedBox(height: 16),
          _buildQuickStats(
            progress,
            money,
            l10n,
            isDark,
            ru,
          ),
          const SizedBox(height: 18),
          _buildProgressOverview(
            state,
            isDark,
            ru,
          ),
          const SizedBox(height: 18),
          _buildMotivation(
            state,
            l10n,
            isDark,
          ),
          const SizedBox(height: 18),
          _buildPremium(
            context,
            l10n,
            isDark,
          ),
          if (progress.quitDate != null) ...[
            const SizedBox(height: 18),
            _buildDailyCheckIn(
              context,
              progress,
              l10n,
              isDark,
            ),
            const SizedBox(height: 12),
            _buildRelapseButton(
              context,
              l10n,
              isDark,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildTopBar(
      String name,
      AppLocalizations l10n,
      String avatar,
      bool isDark,
      ) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Text(
                l10n.helloName(name),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: isDark
                      ? AppColors.textSecondaryDark
                      : AppColors.textSecondaryLight,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                l10n.pathToFreedom,
                style: GoogleFonts.outfit(
                  fontSize: 29,
                  height: 1,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -1.2,
                  color: isDark
                      ? AppColors.textPrimaryDark
                      : AppColors.textPrimaryLight,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 14),
        _LuxuryAvatar(
          emoji: avatar,
          isDark: isDark,
        ),
      ],
    ).animate().fadeIn(
      duration: 400.ms,
    ).slideY(
      begin: -0.05,
      curve: Curves.easeOutCubic,
    );
  }

  Widget _buildHeroDashboard(
      ProgressLoaded state,
      AppLocalizations l10n,
      bool isDark,
      bool ru,
      dynamic level,
      ) {
    final progress = state.progress;

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
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
        border: Border.all(
          color: isDark
              ? Colors.white.withValues(alpha: 0.055)
              : AppColors.primary.withValues(
            alpha: 0.08,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(
              alpha: isDark ? 0.08 : 0.06,
            ),
            blurRadius: 28,
            offset: const Offset(0, 14),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          20,
          18,
          20,
          20,
        ),
        child: Column(
          children: [
            Row(
              children: [
                _LevelChip(
                  level: level.level,
                  l10n: l10n,
                  isDark: isDark,
                ),
                const Spacer(),
                Text(
                  LevelCopy.title(
                    level.level,
                    ru: ru,
                  ),
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: isDark
                        ? AppColors.textSecondaryDark
                        : AppColors.textSecondaryLight,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
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
                        ru
                            ? 'ТВОЙ ПРОГРЕСС'
                            : 'YOUR PROGRESS',
                        style: GoogleFonts.inter(
                          fontSize: 9,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.5,
                          color: isDark
                              ? AppColors.textSecondaryDark
                              : AppColors.textSecondaryLight,
                        ),
                      ),
                      const SizedBox(height: 9),
                      Text(
                        '${progress.daysSinceQuit}',
                        style: GoogleFonts.outfit(
                          fontSize: 68,
                          height: 0.84,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -3.8,
                          color: isDark
                              ? AppColors.textPrimaryDark
                              : AppColors.textPrimaryLight,
                        ),
                      ),
                      const SizedBox(height: 7),
                      Text(
                        '${LevelCopy.daysWord(progress.daysSinceQuit, ru: ru)} ${l10n.withoutCigs}',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: isDark
                              ? AppColors.textSecondaryDark
                              : AppColors.textSecondaryLight,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 14),
                _ProgressOrb(
                  progress: state.levelProgress,
                  isDark: isDark,
                  percentage:
                  (state.levelProgress * 100)
                      .clamp(0, 100)
                      .toInt(),
                ),
              ],
            ),
            const SizedBox(height: 18),
            _LiveFreedomClock(
              duration: progress.smokeFreeDuration,
              isDark: isDark,
              ru: ru,
            ),
            const SizedBox(height: 18),
            _LevelProgressBar(
              progress: state.levelProgress,
              isDark: isDark,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  ru
                      ? 'До следующего уровня'
                      : 'To next level',
                  style: GoogleFonts.inter(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: isDark
                        ? AppColors.textSecondaryDark
                        : AppColors.textSecondaryLight,
                  ),
                ),
                const Spacer(),
                Text(
                  '${(state.levelProgress * 100).toInt()}%',
                  style: GoogleFonts.inter(
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ).animate().fadeIn(
      duration: 500.ms,
    ).slideY(
      begin: 0.05,
      curve: Curves.easeOutCubic,
    );
  }

  Widget _buildQuickStats(
      dynamic progress,
      String money,
      AppLocalizations l10n,
      bool isDark,
      bool ru,
      ) {
    return Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [
        _SectionHeader(
          title: ru
              ? 'КЛЮЧЕВЫЕ РЕЗУЛЬТАТЫ'
              : 'KEY RESULTS',
          isDark: isDark,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: _ResultCard(
                value: '${progress.currentStreak}',
                label: l10n.streak,
                caption: ru
                    ? 'дней подряд'
                    : 'day streak',
                color: AppColors.amber,
                isDark: isDark,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _ResultCard(
                value: money,
                label: l10n.saved,
                caption: ru
                    ? 'сэкономлено'
                    : 'saved',
                color: AppColors.success,
                isDark: isDark,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: _ResultCard(
                value:
                '${progress.cigarettesAvoided}',
                label: l10n.avoided,
                caption: ru
                    ? 'не выкурено'
                    : 'avoided',
                color: AppColors.primary,
                isDark: isDark,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _ResultCard(
                value:
                '${progress.totalSmokeFreeDays}',
                label: l10n.totalDays,
                caption: ru
                    ? 'дней свободы'
                    : 'free days',
                color: AppColors.accent,
                isDark: isDark,
              ),
            ),
          ],
        ),
      ],
    ).animate().fadeIn(
      delay: 100.ms,
    );
  }

  Widget _buildProgressOverview(
      ProgressLoaded state,
      bool isDark,
      bool ru,
      ) {
    final progress = state.progress;

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: isDark
            ? AppColors.cardDark
            : AppColors.cardLight,
        borderRadius: BorderRadius.circular(26),
        border: Border.all(
          color: isDark
              ? Colors.white.withValues(alpha: 0.05)
              : Colors.black.withValues(alpha: 0.035),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(
              alpha: isDark ? 0.10 : 0.025,
            ),
            blurRadius: 18,
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
              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      ru
                          ? 'СИСТЕМА ПРОГРЕССА'
                          : 'PROGRESS SYSTEM',
                      style: GoogleFonts.inter(
                        fontSize: 9,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.4,
                        color: AppColors.primary,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      ru
                          ? 'Каждый день приближает к следующему уровню'
                          : 'Every day moves you closer to the next level',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        height: 1.35,
                        fontWeight: FontWeight.w600,
                        color: isDark
                            ? AppColors.textPrimaryDark
                            : AppColors.textPrimaryLight,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              _MiniLineChart(
                color: AppColors.primary,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Text(
                ru ? 'Уровень' : 'Level',
                style: GoogleFonts.inter(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: isDark
                      ? AppColors.textSecondaryDark
                      : AppColors.textSecondaryLight,
                ),
              ),
              const Spacer(),
              Text(
                '${state.levelProgress * 100 ~/ 1}%',
                style: GoogleFonts.inter(
                  fontSize: 10,
                  fontWeight: FontWeight.w800,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          _LevelProgressBar(
            progress: state.levelProgress,
            isDark: isDark,
          ),
          const SizedBox(height: 13),
          Row(
            children: [
              _Milestone(
                title: ru ? 'Сейчас' : 'Current',
                value: '${progress.daysSinceQuit}d',
                isActive: true,
                isDark: isDark,
              ),
              const Spacer(),
              _MilestoneConnector(
                progress: state.levelProgress,
                isDark: isDark,
              ),
              const Spacer(),
              _Milestone(
                title: ru ? 'Следующий' : 'Next',
                value: '${progress.daysSinceQuit + 7}d',
                isActive: false,
                isDark: isDark,
              ),
            ],
          ),
        ],
      ),
    ).animate().fadeIn(
      delay: 150.ms,
    );
  }

  Widget _buildMotivation(
      ProgressLoaded state,
      AppLocalizations l10n,
      bool isDark,
      ) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: AppColors.journalGradient,
        ),
        borderRadius: BorderRadius.circular(27),
        boxShadow: [
          BoxShadow(
            color: AppColors.accent.withValues(
              alpha: 0.18,
            ),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: Colors.white.withValues(
                alpha: 0.14,
              ),
              borderRadius:
              BorderRadius.circular(14),
            ),
            child: const Icon(
              Iconsax.quote_down,
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.dailyMotivation,
                  style: GoogleFonts.inter(
                    fontSize: 9,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.2,
                    color: Colors.white.withValues(
                      alpha: 0.78,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  state.dailyMotivation,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    height: 1.45,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ).animate().fadeIn(
      delay: 200.ms,
    );
  }

  Widget _buildPremium(
      BuildContext context,
      AppLocalizations l10n,
      bool isDark,
      ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const PremiumScreen(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: isDark
              ? const Color(0xFF211C12)
              : const Color(0xFFFFF8E8),
          borderRadius: BorderRadius.circular(27),
          border: Border.all(
            color: AppColors.amber.withValues(
              alpha: 0.18,
            ),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    AppColors.amber,
                    Color(0xFFF2C263),
                  ],
                ),
                borderRadius:
                BorderRadius.circular(16),
              ),
              child: const Icon(
                Iconsax.crown_1,
                color: Colors.white,
                size: 21,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.tryFree,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: isDark
                          ? AppColors.textPrimaryDark
                          : AppColors.textPrimaryLight,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    l10n.premiumHint,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.inter(
                      fontSize: 11,
                      height: 1.35,
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
                color: AppColors.amber.withValues(
                  alpha: 0.12,
                ),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward_rounded,
                color: AppColors.amber,
                size: 18,
              ),
            ),
          ],
        ),
      ),
    ).animate().fadeIn(
      delay: 250.ms,
    );
  }

  Widget _buildDailyCheckIn(
      BuildContext context,
      dynamic progress,
      AppLocalizations l10n,
      bool isDark,
      ) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: AppColors.levelGradient,
        ),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(
              alpha: 0.20,
            ),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(25),
          onTap: progress.hasCheckedInToday
              ? null
              : () {
            context
                .read<ProgressBloc>()
                .add(
              const CheckInToday(
                stayedSmokeFree: true,
              ),
            );

            Future.delayed(
              const Duration(
                milliseconds: 250,
              ),
                  () {
                if (!context.mounted) {
                  return;
                }

                final current = context
                    .read<ProgressBloc>()
                    .state;

                if (current
                is ProgressLoaded) {
                  CheckInSuccessDialog.show(
                    context,
                    streak: current
                        .progress
                        .currentStreak,
                    days: current
                        .progress
                        .totalSmokeFreeDays,
                  );
                }
              },
            );
          },
          child: Padding(
            padding:
            const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 16,
            ),
            child: Row(
              children: [
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: Colors.white
                        .withValues(alpha: 0.12),
                    borderRadius:
                    BorderRadius.circular(
                      14,
                    ),
                  ),
                  child: Icon(
                    progress.hasCheckedInToday
                        ? Iconsax.tick_circle
                        : Iconsax.tick_square,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        progress
                            .hasCheckedInToday
                            ? l10n.checkedInToday
                            : l10n.checkIn,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight:
                          FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        progress
                            .hasCheckedInToday
                            ? '✓'
                            : 'Keep your streak alive',
                        style: GoogleFonts.inter(
                          fontSize: 10,
                          fontWeight:
                          FontWeight.w600,
                          color: Colors.white
                              .withValues(
                            alpha: 0.65,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (!progress.hasCheckedInToday)
                  Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color: Colors.white
                          .withValues(
                        alpha: 0.10,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.white,
                      size: 17,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    ).animate().fadeIn(
      delay: 300.ms,
    );
  }

  Widget _buildRelapseButton(
      BuildContext context,
      AppLocalizations l10n,
      bool isDark,
      ) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton.icon(
        onPressed: () => _confirmRelapse(
          context,
          l10n,
        ),
        icon: const Icon(
          Iconsax.close_circle,
          size: 17,
        ),
        label: Text(
          l10n.iSmoked,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w700,
          ),
        ),
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.coral,
          side: BorderSide(
            color: AppColors.coral.withValues(
              alpha: 0.32,
            ),
          ),
          backgroundColor:
          AppColors.coral.withValues(
            alpha: isDark ? 0.025 : 0.018,
          ),
          shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }

  void _confirmRelapse(
      BuildContext context,
      AppLocalizations l10n,
      ) {
    final isDark =
        Theme.of(context).brightness ==
            Brightness.dark;

    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: isDark
              ? AppColors.surfaceDark
              : AppColors.surfaceLight,
          shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.circular(26),
          ),
          title: Text(
            l10n.relapseTitle,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w800,
              color: isDark
                  ? AppColors.textPrimaryDark
                  : AppColors.textPrimaryLight,
            ),
          ),
          content: Text(
            l10n.relapseBody,
            style: GoogleFonts.inter(
              height: 1.5,
              color: isDark
                  ? AppColors.textSecondaryDark
                  : AppColors.textSecondaryLight,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () =>
                  Navigator.pop(ctx),
              child: Text(
                l10n.cancel,
                style: const TextStyle(
                  color: AppColors.primary,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                context
                    .read<ProgressBloc>()
                    .add(
                  const CheckInToday(
                    stayedSmokeFree: false,
                  ),
                );

                Navigator.pop(ctx);

                ScaffoldMessenger.of(context)
                    .showSnackBar(
                  SnackBar(
                    behavior:
                    SnackBarBehavior.floating,
                    backgroundColor:
                    isDark
                        ? AppColors.surfaceDark
                        : AppColors.surfaceLight,
                    shape:
                    RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(
                        16,
                      ),
                    ),
                    content: Text(
                      l10n.relapseDone,
                      style: TextStyle(
                        color: isDark
                            ? AppColors.textPrimaryDark
                            : AppColors.textPrimaryLight,
                      ),
                    ),
                  ),
                );
              },
              child: const Text(
                'Continue',
                style: TextStyle(
                  color: AppColors.coral,
                  fontWeight:
                  FontWeight.w700,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// RESULT CARD
// ═══════════════════════════════════════════════════════════════════════════

class _ResultCard extends StatelessWidget {
  const _ResultCard({
    required this.value,
    required this.label,
    required this.caption,
    required this.color,
    required this.isDark,
  });

  final String value;
  final String label;
  final String caption;
  final Color color;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        15,
        15,
        14,
        14,
      ),
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
            alpha: 0.035,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(
              alpha: isDark ? 0.08 : 0.02,
            ),
            blurRadius: 16,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 7,
            height: 36,
            decoration: BoxDecoration(
              color: color,
              borderRadius:
              BorderRadius.circular(99),
            ),
          ),
          const SizedBox(width: 11),
          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  maxLines: 1,
                  overflow:
                  TextOverflow.ellipsis,
                  style: GoogleFonts.outfit(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.8,
                    color: isDark
                        ? AppColors.textPrimaryDark
                        : AppColors.textPrimaryLight,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  label,
                  maxLines: 1,
                  overflow:
                  TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    fontSize: 10.5,
                    fontWeight: FontWeight.w700,
                    color: isDark
                        ? AppColors.textPrimaryDark
                        : AppColors.textPrimaryLight,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  caption,
                  maxLines: 1,
                  overflow:
                  TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    fontSize: 9,
                    fontWeight: FontWeight.w500,
                    color: isDark
                        ? AppColors.textSecondaryDark
                        : AppColors.textSecondaryLight,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// LEVEL CHIP
// ═══════════════════════════════════════════════════════════════════════════

class _LevelChip extends StatelessWidget {
  const _LevelChip({
    required this.level,
    required this.l10n,
    required this.isDark,
  });

  final int level;
  final AppLocalizations l10n;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 7,
      ),
      decoration: BoxDecoration(
        color: isDark
            ? Colors.white.withValues(
          alpha: 0.055,
        )
            : AppColors.primary.withValues(
          alpha: 0.07,
        ),
        borderRadius:
        BorderRadius.circular(999),
        border: Border.all(
          color: AppColors.primary.withValues(
            alpha: 0.10,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 7,
            height: 7,
            decoration:
            const BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 7),
          Text(
            l10n.level(level),
            style: GoogleFonts.inter(
              fontSize: 10,
              fontWeight: FontWeight.w800,
              color: isDark
                  ? AppColors.textPrimaryDark
                  : AppColors.textPrimaryLight,
            ),
          ),
        ],
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// PROGRESS ORB
// ═══════════════════════════════════════════════════════════════════════════

class _ProgressOrb extends StatelessWidget {
  const _ProgressOrb({
    required this.progress,
    required this.isDark,
    required this.percentage,
  });

  final double progress;
  final bool isDark;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 108,
      height: 108,
      child: CustomPaint(
        painter: _ProgressOrbPainter(
          progress: progress.clamp(0.0, 1.0),
          trackColor: isDark
              ? Colors.white.withValues(alpha: 0.075)
              : AppColors.primary.withValues(alpha: 0.08),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '$percentage%',
                style: GoogleFonts.outfit(
                  fontSize: 23,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -0.6,
                  color: isDark
                      ? AppColors.textPrimaryDark
                      : AppColors.textPrimaryLight,
                ),
              ),
              Text(
                'LEVEL',
                style: GoogleFonts.inter(
                  fontSize: 8,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.3,
                  color: isDark
                      ? AppColors.textSecondaryDark
                      : AppColors.textSecondaryLight,
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
// LEVEL BAR
// ═══════════════════════════════════════════════════════════════════════════

class _LevelProgressBar extends StatelessWidget {
  const _LevelProgressBar({
    required this.progress,
    required this.isDark,
  });

  final double progress;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
      BorderRadius.circular(999),
      child: SizedBox(
        height: 7,
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(
                color: isDark
                    ? Colors.white.withValues(
                  alpha: 0.065,
                )
                    : AppColors.primary
                    .withValues(
                  alpha: 0.07,
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor: progress
                  .clamp(0.0, 1.0),
              child: Container(
                decoration:
                const BoxDecoration(
                  gradient: LinearGradient(
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
// LIVE CLOCK
// ═══════════════════════════════════════════════════════════════════════════

class _LiveFreedomClock
    extends StatefulWidget {
  const _LiveFreedomClock({
    required this.duration,
    required this.isDark,
    required this.ru,
  });

  final Duration duration;
  final bool isDark;
  final bool ru;

  @override
  State<_LiveFreedomClock> createState() =>
      _LiveFreedomClockState();
}

class _LiveFreedomClockState
    extends State<_LiveFreedomClock> {
  Timer? _timer;
  late DateTime _startedAt;

  @override
  void initState() {
    super.initState();

    _startedAt =
        DateTime.now().subtract(
          widget.duration,
        );

    _timer = Timer.periodic(
      const Duration(seconds: 1),
          (_) {
        if (mounted) {
          setState(() {});
        }
      },
    );
  }

  @override
  void didUpdateWidget(
      covariant _LiveFreedomClock oldWidget,
      ) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.duration !=
        widget.duration) {
      _startedAt =
          DateTime.now().subtract(
            widget.duration,
          );
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final elapsed =
    DateTime.now().difference(
      _startedAt,
    );

    final h = elapsed.inHours.remainder(24);
    final m =
    elapsed.inMinutes.remainder(60);
    final s =
    elapsed.inSeconds.remainder(60);

    final clock =
        '${elapsed.inDays}d  ${h.toString().padLeft(2, '0')}:${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}';

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 13,
        vertical: 11,
      ),
      decoration: BoxDecoration(
        color: widget.isDark
            ? Colors.black.withValues(
          alpha: 0.10,
        )
            : AppColors.backgroundLight,
        borderRadius:
        BorderRadius.circular(18),
        border: Border.all(
          color: AppColors.primary
              .withValues(alpha: 0.07),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 8,
            decoration:
            const BoxDecoration(
              color: AppColors.success,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Text(
                widget.ru
                    ? 'СВОБОДЕН УЖЕ'
                    : 'FREE FOR',
                style: GoogleFonts.inter(
                  fontSize: 8,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1,
                  color: widget.isDark
                      ? AppColors.textSecondaryDark
                      : AppColors.textSecondaryLight,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                clock,
                style: GoogleFonts.outfit(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -0.3,
                  color: widget.isDark
                      ? AppColors.textPrimaryDark
                      : AppColors.textPrimaryLight,
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
// MILESTONES
// ═══════════════════════════════════════════════════════════════════════════

class _Milestone extends StatelessWidget {
  const _Milestone({
    required this.title,
    required this.value,
    required this.isActive,
    required this.isDark,
  });

  final String title;
  final String value;
  final bool isActive;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: isActive
                ? AppColors.primary
                : isDark
                ? AppColors.textSecondaryDark
                : AppColors.textSecondaryLight,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 7),
        Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 8,
                fontWeight: FontWeight.w600,
                color: isDark
                    ? AppColors.textSecondaryDark
                    : AppColors.textSecondaryLight,
              ),
            ),
            const SizedBox(height: 1),
            Text(
              value,
              style: GoogleFonts.outfit(
                fontSize: 13,
                fontWeight: FontWeight.w800,
                color: isDark
                    ? AppColors.textPrimaryDark
                    : AppColors.textPrimaryLight,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _MilestoneConnector
    extends StatelessWidget {
  const _MilestoneConnector({
    required this.progress,
    required this.isDark,
  });

  final double progress;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius:
        BorderRadius.circular(999),
        child: SizedBox(
          height: 4,
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  color: isDark
                      ? Colors.white.withValues(
                    alpha: 0.06,
                  )
                      : AppColors.primary
                      .withValues(
                    alpha: 0.06,
                  ),
                ),
              ),
              FractionallySizedBox(
                widthFactor: progress
                    .clamp(0.0, 1.0),
                child: Container(
                  color: AppColors.primary,
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
// MINI CHART
// ═══════════════════════════════════════════════════════════════════════════

class _MiniLineChart
    extends StatelessWidget {
  const _MiniLineChart({
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(65, 35),
      painter: _MiniLineChartPainter(
        color: color,
      ),
    );
  }
}

class _MiniLineChartPainter
    extends CustomPainter {
  _MiniLineChartPainter({
    required this.color,
  });

  final Color color;

  @override
  void paint(
      Canvas canvas,
      Size size,
      ) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.2
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..color = color;

    final points = <Offset>[
      Offset(0, size.height * 0.72),
      Offset(size.width * 0.18, size.height * 0.62),
      Offset(size.width * 0.33, size.height * 0.67),
      Offset(size.width * 0.48, size.height * 0.42),
      Offset(size.width * 0.64, size.height * 0.50),
      Offset(size.width * 0.80, size.height * 0.25),
      Offset(size.width, size.height * 0.12),
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

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(
      covariant _MiniLineChartPainter oldDelegate,
      ) {
    return oldDelegate.color != color;
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// AVATAR
// ═══════════════════════════════════════════════════════════════════════════

class _LuxuryAvatar extends StatelessWidget {
  const _LuxuryAvatar({
    required this.emoji,
    required this.isDark,
  });

  final String emoji;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: isDark
            ? AppColors.surfaceDark
            : AppColors.surfaceLight,
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.primary.withValues(
            alpha: 0.08,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(
              alpha: isDark ? 0.12 : 0.045,
            ),
            blurRadius: 16,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Center(
        child: Text(
          emoji,
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// SECTION
// ═══════════════════════════════════════════════════════════════════════════

class _SectionHeader
    extends StatelessWidget {
  const _SectionHeader({
    required this.title,
    required this.isDark,
  });

  final String title;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(
        fontSize: 9,
        fontWeight: FontWeight.w800,
        letterSpacing: 1.5,
        color: isDark
            ? AppColors.textSecondaryDark
            : AppColors.textSecondaryLight,
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// PROGRESS PAINTER
// ═══════════════════════════════════════════════════════════════════════════

class _ProgressOrbPainter extends CustomPainter {
  _ProgressOrbPainter({
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
    final center = size.center(Offset.zero);
    final radius = size.width / 2 - 8;

    final trackPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 7
      ..strokeCap = StrokeCap.round
      ..color = trackColor;

    canvas.drawCircle(
      center,
      radius,
      trackPaint,
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
      ..strokeWidth = 7
      ..strokeCap = StrokeCap.round
      ..shader = const LinearGradient(
        colors: AppColors.levelGradient,
      ).createShader(rect);

    canvas.drawArc(
      rect,
      -math.pi / 2,
      math.pi * 2 * progress,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(
      covariant _ProgressOrbPainter oldDelegate,
      ) {
    return oldDelegate.progress != progress ||
        oldDelegate.trackColor != trackColor;
  }
}