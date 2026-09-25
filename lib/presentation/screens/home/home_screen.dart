import 'dart:async';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/utils/level_copy.dart';
import '../../../data/bloc/progress/progress_bloc.dart';
import '../../../data/bloc/progress/progress_event.dart';
import '../../../data/bloc/progress/progress_state.dart';
import '../../../data/models/currency_option.dart';
import '../../../l10n/app_localizations.dart';
import '../../widgets/check_in_success.dart';
import '../premium/premium_screen.dart';

// ═══════════════════════════════════════════════════════════════════════════
// AURORA — новая фирменная палитра. Живёт только здесь, ни на что в теме
// не завязана, так что светлая/тёмная тема (AppColors) продолжает работать
// как раньше, а вся "движуха" (свечения, градиенты, иконки) — новая.
// ═══════════════════════════════════════════════════════════════════════════

class _Aurora {
  _Aurora._();

  static const violet = Color(0xFF8B5CF6);
  static const violetDeep = Color(0xFF5B21F6);
  static const cyan = Color(0xFF22D3EE);
  static const mint = Color(0xFF2DE0A6);
  static const mintDeep = Color(0xFF12B591);
  static const gold = Color(0xFFFFC65C);
  static const goldDeep = Color(0xFFFF8A3D);
  static const coral = Color(0xFFFF6B9D);
  static const coralDeep = Color(0xFFE84C6E);
  static const ink = Color(0xFF0B0B1E);

  static const heroGradient = [violet, cyan];
  static const heroGradientSoft = [violetDeep, violet, cyan];
  static const mintGradient = [mint, cyan];
  static const goldGradient = [gold, goldDeep];
  static const coralGradient = [coral, coralDeep];
  static const sunsetGradient = [Color(0xFFFF6B9D), Color(0xFF8B5CF6), Color(0xFF22D3EE)];
}

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
            return _LoadingView(isDark: isDark);
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

// ═══════════════════════════════════════════════════════════════════════════
// LOADING VIEW — пульсирующее кольцо-аврора вместо обычного спиннера
// ═══════════════════════════════════════════════════════════════════════════

class _LoadingView extends StatelessWidget {
  const _LoadingView({required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: _AmbientBackground(isDark: isDark)),
        Center(
          child: Container(
            width: 72,
            height: 72,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const SweepGradient(
                colors: [
                  ..._Aurora.heroGradientSoft,
                  _Aurora.violetDeep,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: _Aurora.violet.withValues(alpha: 0.45),
                  blurRadius: 32,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isDark
                    ? AppColors.backgroundDark
                    : AppColors.backgroundLight,
              ),
              padding: const EdgeInsets.all(12),
              child: ShaderMask(
                shaderCallback: (rect) => const LinearGradient(
                  colors: _Aurora.heroGradient,
                ).createShader(rect),
                child: const Icon(
                  Icons.local_fire_department_rounded,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
          )
              .animate(onPlay: (c) => c.repeat())
              .rotate(duration: 2200.ms, curve: Curves.linear)
              .animate(onPlay: (c) => c.repeat(reverse: true))
              .scaleXY(
            begin: 1,
            end: 1.1,
            duration: 1100.ms,
            curve: Curves.easeInOut,
          ),
        ),
      ],
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

    // КАК НАДО:
    final firebaseUser = FirebaseAuth.instance.currentUser;

// Берем имя из Firebase, если его нет — из BLoC/progress, а если и там пусто — локализованное имя по умолчанию
    final name = (firebaseUser?.displayName?.isNotEmpty ?? false)
        ? firebaseUser!.displayName!
        : (progress.displayName.isNotEmpty ? progress.displayName : l10n.friend);

    final money = CurrencyOption.formatPrice(
      progress.moneySaved,
      code: progress.currencyCode,
      locale: ru ? 'ru' : 'en' ,
    );

    return Stack(
      children: [
        Positioned.fill(child: _AmbientBackground(isDark: isDark)),
        SafeArea(
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
                context,
                name,
                l10n,
                progress.avatarEmoji,
                isDark,
                progress.currentStreak,
              ),
              const SizedBox(height: 22),
              _buildHeroDashboard(
                state,
                l10n,
                isDark,
                ru,
                level,
              ),
              const SizedBox(height: 18),
              _buildQuickStats(
                progress,
                money,
                l10n,
                isDark,
                ru,
              ),
              const SizedBox(height: 22),
              _buildProgressOverview(
                state,
                l10n,
                isDark,
                ru,
              ),
              /*const SizedBox(height: 20),
              _buildMotivation(
                state,
                l10n,
                isDark,
              ),*/
              const SizedBox(height: 20),
              _buildPremium(
                context,
                l10n,
                isDark,
              ),
              if (progress.quitDate != null) ...[
                const SizedBox(height: 20),
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
        ),
      ],
    );
  }

  Widget _buildTopBar(
      BuildContext context,
      String name,
      AppLocalizations l10n,
      String avatar,
      bool isDark,
      int currentStreak,
      ) {
    final user = FirebaseAuth.instance.currentUser;
    final photoUrl = user?.photoURL;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 9,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: (isDark ? Colors.white : Colors.black)
                          .withValues(alpha: 0.05),
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: Text(
                      l10n.helloName(name),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: isDark
                            ? AppColors.textSecondaryDark
                            : AppColors.textSecondaryLight,
                      ),
                    ),
                  ),
                  const SizedBox(width: 7),
                  if (currentStreak > 0)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: _Aurora.goldGradient,
                        ),
                        borderRadius: BorderRadius.circular(999),
                        boxShadow: [
                          BoxShadow(
                            color: _Aurora.gold.withValues(alpha: 0.4),
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.local_fire_department_rounded,
                            size: 12,
                            color: Colors.white,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            '$currentStreak',
                            style: GoogleFonts.outfit(
                              fontSize: 11,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ).animate(onPlay: (c) => c.repeat(reverse: true)).scaleXY(
                      begin: 1,
                      end: 1.08,
                      duration: 900.ms,
                      curve: Curves.easeInOut,
                    ),
                ],
              ),
              const SizedBox(height: 8),
              ShaderMask(
                shaderCallback: (rect) => const LinearGradient(
                  colors: _Aurora.heroGradientSoft,
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ).createShader(rect),
                blendMode: BlendMode.srcIn,
                child: Text(
                  l10n.pathToFreedom,
                  style: GoogleFonts.outfit(
                    fontSize: 30,
                    height: 1,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -1.3,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 14),
        /*_ProfileAvatar(
          photoUrl: photoUrl,
          isDark: isDark,
        ),*/
      ],
    ).animate().fadeIn(
      duration: 450.ms,
    ).slideY(
      begin: -0.08,
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
        borderRadius: BorderRadius.circular(AppRadii.hero),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: isDark
              ? [
            const Color(0xFF17162B),
            const Color(0xFF1F1B3A),
          ]
              : [
            const Color(0xFFF3EFFE),
            const Color(0xFFE9F8F5),
          ],
        ),
        border: Border.all(
          color: _Aurora.violet.withValues(alpha: isDark ? 0.22 : 0.14),
          width: 1.2,
        ),
        boxShadow: [
          BoxShadow(
            color: _Aurora.violet.withValues(
              alpha: isDark ? 0.22 : 0.14,
            ),
            blurRadius: 40,
            spreadRadius: -6,
            offset: const Offset(0, 18),
          ),
          BoxShadow(
            color: Colors.black.withValues(
              alpha: isDark ? 0.30 : 0.03,
            ),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: [
          // декоративные ауро-пятна на подложке карточки
          Positioned(
            top: -70,
            right: -50,
            child: ImageFiltered(
              imageFilter: ui.ImageFilter.blur(sigmaX: 48, sigmaY: 48),
              child: Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _Aurora.cyan.withValues(
                    alpha: isDark ? 0.22 : 0.20,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -60,
            left: -40,
            child: ImageFiltered(
              imageFilter: ui.ImageFilter.blur(sigmaX: 46, sigmaY: 46),
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _Aurora.coral.withValues(
                    alpha: isDark ? 0.16 : 0.14,
                  ),
                ),
              ),
            ),
          ),
          Padding(
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
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: isDark
                            ? Colors.white.withValues(alpha: 0.06)
                            : Colors.black.withValues(alpha: 0.035),
                        borderRadius: BorderRadius.circular(999),
                      ),
                      child: Text(
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
                    ),
                  ],
                ),
                const SizedBox(height: 26),
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
                            l10n.progress.toUpperCase(),
                            style: GoogleFonts.inter(
                              fontSize: 9,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1.6,
                              color: isDark
                                  ? AppColors.textSecondaryDark
                                  : AppColors.textSecondaryLight,
                            ),
                          ),
                          const SizedBox(height: 9),
                          ShaderMask(
                            shaderCallback: (rect) => const LinearGradient(
                              colors: _Aurora.heroGradient,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ).createShader(rect),
                            blendMode: BlendMode.srcIn,
                            child: _AnimatedCounter(
                              value: progress.daysSinceQuit,
                              style: GoogleFonts.outfit(
                                fontSize: 70,
                                height: 0.84,
                                fontWeight: FontWeight.w800,
                                letterSpacing: -4,
                                color: Colors.white,
                              ),
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
                const SizedBox(height: 20),
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
                      l10n.toNextLevel,
                      style: GoogleFonts.inter(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: isDark
                            ? AppColors.textSecondaryDark
                            : AppColors.textSecondaryLight,
                      ),
                    ),
                    const Spacer(),
                    ShaderMask(
                      shaderCallback: (rect) => const LinearGradient(
                        colors: _Aurora.heroGradient,
                      ).createShader(rect),
                      blendMode: BlendMode.srcIn,
                      child: Text(
                        '${(state.levelProgress * 100).toInt()}%',
                        style: GoogleFonts.inter(
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ).animate().fadeIn(
      duration: 550.ms,
      delay: 60.ms,
    ).slideY(
      begin: 0.06,
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
          title: l10n.keyResults,
          isDark: isDark,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: _ResultCard(
                value: '${progress.currentStreak}',
                label: l10n.streak,
                caption: l10n.dayStreakCaption,
                gradient: _Aurora.goldGradient,
                icon: Icons.local_fire_department_rounded,
                isDark: isDark,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _ResultCard(
                value: money,
                label: l10n.saved,
                caption: l10n.saved.toLowerCase(),
                gradient: _Aurora.mintGradient,
                icon: Icons.savings_rounded,
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
                caption: l10n.cigarettesAvoidedCaption,
                gradient: _Aurora.heroGradient,
                icon: Icons.shield_rounded,
                isDark: isDark,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: _ResultCard(
                value:
                '${progress.totalSmokeFreeDays}',
                label: l10n.totalDays,
                caption: l10n.freeDaysCaption,
                gradient: _Aurora.coralGradient,
                icon: Icons.calendar_month_rounded,
                isDark: isDark,
              ),
            ),
          ],
        ),
      ],
    ).animate().fadeIn(
      delay: 120.ms,
      duration: 450.ms,
    ).slideY(begin: 0.04, curve: Curves.easeOutCubic);
  }

  Widget _buildProgressOverview(
      ProgressLoaded state,
      AppLocalizations l10n,
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
        borderRadius: BorderRadius.circular(AppRadii.glass),
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
                    ShaderMask(
                      shaderCallback: (rect) => const LinearGradient(
                        colors: _Aurora.heroGradient,
                      ).createShader(rect),
                      blendMode: BlendMode.srcIn,
                      child: Text(
                        l10n.progressSystem,
                        style: GoogleFonts.inter(
                          fontSize: 9,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1.4,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      l10n.everyDayCloser,
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
              _MiniLineChart(isDark: isDark),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Text(
                l10n.levelLabel,
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
                  color: _Aurora.violet,
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
                title: l10n.current,
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
                title: l10n.nextLevel,
                value: '${progress.daysSinceQuit + 7}d',
                isActive: false,
                isDark: isDark,
              ),
            ],
          ),
        ],
      ),
    ).animate().fadeIn(
      delay: 170.ms,
      duration: 450.ms,
    );
  }

  Widget _buildMotivation(
      ProgressLoaded state,
      AppLocalizations l10n,
      bool isDark,
      ) {
    return Container(
      clipBehavior: Clip.antiAlias,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: _Aurora.sunsetGradient,
        ),
        borderRadius: BorderRadius.circular(27),
        boxShadow: [
          BoxShadow(
            color: _Aurora.violet.withValues(
              alpha: 0.28,
            ),
            blurRadius: 30,
            spreadRadius: -4,
            offset: const Offset(0, 14),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: -22,
            bottom: -32,
            child: Icon(
              Icons.auto_awesome_rounded,
              size: 110,
              color: Colors.white.withValues(alpha: 0.08),
            ),
          ),
          Row(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(
                    alpha: 0.16,
                  ),
                  borderRadius:
                  BorderRadius.circular(14),
                ),
                child: const Icon(
                  Icons.bolt_rounded,
                  color: Colors.white,
                  size: 22,
                ),
              ).animate(onPlay: (c) => c.repeat(reverse: true)).scaleXY(
                begin: 1,
                end: 1.1,
                duration: 1500.ms,
                curve: Curves.easeInOut,
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
                          alpha: 0.82,
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
        ],
      ),
    ).animate().fadeIn(
      delay: 220.ms,
      duration: 450.ms,
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
        clipBehavior: Clip.antiAlias,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: isDark
              ? const Color(0xFF241A10)
              : const Color(0xFFFFF6E6),
          borderRadius: BorderRadius.circular(27),
          border: Border.all(
            color: _Aurora.gold.withValues(
              alpha: 0.24,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: _Aurora.gold.withValues(alpha: 0.16),
              blurRadius: 26,
              spreadRadius: -6,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: _Aurora.goldGradient,
                ),
                borderRadius:
                BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: _Aurora.gold.withValues(alpha: 0.4),
                    blurRadius: 18,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: const Icon(
                Icons.diamond_rounded,
                color: Colors.white,
                size: 22,
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
                color: _Aurora.gold.withValues(
                  alpha: 0.14,
                ),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_forward_rounded,
                color: _Aurora.goldDeep,
                size: 18,
              ),
            ),
          ],
        ),
      ),
    )
        .animate().fadeIn(
      delay: 270.ms,
      duration: 450.ms,
    )
        .shimmer(
      delay: 900.ms,
      duration: 1800.ms,
      color: Colors.white.withValues(alpha: 0.25),
    );
  }

  Widget _buildDailyCheckIn(
      BuildContext context,
      dynamic progress,
      AppLocalizations l10n,
      bool isDark,
      ) {
    final done = progress.hasCheckedInToday as bool;

    final card = Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: done
              ? [
            (isDark ? AppColors.cardDark : AppColors.cardLight),
            (isDark ? AppColors.cardDark : AppColors.cardLight),
          ]
              : _Aurora.mintGradient,
        ),
        border: done
            ? Border.all(
          color: _Aurora.mint.withValues(alpha: 0.3),
          width: 1.4,
        )
            : null,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: _Aurora.mint.withValues(
              alpha: done ? 0.10 : 0.30,
            ),
            blurRadius: 28,
            spreadRadius: -4,
            offset: const Offset(0, 14),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(25),
          onTap: done
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
                    color: done
                        ? _Aurora.mint.withValues(alpha: 0.14)
                        : Colors.white.withValues(alpha: 0.20),
                    borderRadius:
                    BorderRadius.circular(
                      14,
                    ),
                  ),
                  child: Icon(
                    done
                        ? Icons.check_circle_rounded
                        : Icons.radio_button_unchecked_rounded,
                    color: done ? _Aurora.mint : Colors.white,
                    size: 22,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        done
                            ? l10n.checkedInToday
                            : l10n.checkIn,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight:
                          FontWeight.w800,
                          color: done
                              ? (isDark
                              ? AppColors.textPrimaryDark
                              : AppColors.textPrimaryLight)
                              : Colors.white,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        done
                            ? '✓'
                            : l10n.keepStreakAlive,
                        style: GoogleFonts.inter(
                          fontSize: 10,
                          fontWeight:
                          FontWeight.w600,
                          color: done
                              ? (isDark
                              ? AppColors.textSecondaryDark
                              : AppColors.textSecondaryLight)
                              : Colors.white.withValues(alpha: 0.75),
                        ),
                      ),
                    ],
                  ),
                ),
                if (!done)
                  Container(
                    width: 34,
                    height: 34,
                    decoration: BoxDecoration(
                      color: Colors.white
                          .withValues(
                        alpha: 0.18,
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
    );

    final animated = card.animate().fadeIn(
      delay: 320.ms,
      duration: 450.ms,
    );

    if (done) {
      return animated;
    }

    return animated
        .animate(onPlay: (c) => c.repeat(reverse: true))
        .scaleXY(
      begin: 1,
      end: 1.012,
      duration: 1500.ms,
      curve: Curves.easeInOut,
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
          Icons.cancel_rounded,
          size: 17,
        ),
        label: Text(
          l10n.iSmoked,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w700,
          ),
        ),
        style: OutlinedButton.styleFrom(
          foregroundColor: _Aurora.coralDeep,
          side: BorderSide(
            color: _Aurora.coral.withValues(
              alpha: 0.35,
            ),
          ),
          backgroundColor:
          _Aurora.coral.withValues(
            alpha: isDark ? 0.05 : 0.03,
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
                  color: _Aurora.violet,
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
              child: Text(
                l10n.continueBtn,
                style: const TextStyle(
                  color: _Aurora.coralDeep,
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
// AMBIENT BACKGROUND — три ауро-пятна (виолет / циан / коралл) вместо
// прежней оранжево-розовой гаммы
// ═══════════════════════════════════════════════════════════════════════════

class _AmbientBackground extends StatelessWidget {
  const _AmbientBackground({required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final alpha1 = isDark ? 0.24 : 0.14;
    final alpha2 = isDark ? 0.18 : 0.11;
    final alpha3 = isDark ? 0.16 : 0.10;

    return ClipRect(
      child: Stack(
        children: [
          Positioned(
            top: -80,
            left: -60,
            child: _Blob(
              size: 230,
              color: _Aurora.violet.withValues(alpha: alpha1),
            ),
          ),
          Positioned(
            top: 150,
            right: -90,
            child: _Blob(
              size: 260,
              color: _Aurora.cyan.withValues(alpha: alpha2),
            ),
          ),
          Positioned(
            bottom: -60,
            left: -40,
            child: _Blob(
              size: 210,
              color: _Aurora.coral.withValues(alpha: alpha3),
            ),
          ),
        ],
      ),
    );
  }
}

class _Blob extends StatelessWidget {
  const _Blob({required this.size, required this.color});

  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: ImageFiltered(
        imageFilter: ui.ImageFilter.blur(sigmaX: 55, sigmaY: 55),
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// ANIMATED COUNTER — большая цифра считает вверх при первом появлении
// ═══════════════════════════════════════════════════════════════════════════

class _AnimatedCounter extends StatefulWidget {
  const _AnimatedCounter({
    required this.value,
    required this.style,
  });

  final int value;
  final TextStyle style;

  @override
  State<_AnimatedCounter> createState() => _AnimatedCounterState();
}

class _AnimatedCounterState extends State<_AnimatedCounter> {
  int _previous = 0;

  @override
  void didUpdateWidget(covariant _AnimatedCounter oldWidget) {
    super.didUpdateWidget(oldWidget);
    _previous = oldWidget.value;
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(
        begin: _previous.toDouble(),
        end: widget.value.toDouble(),
      ),
      duration: const Duration(milliseconds: 850),
      curve: Curves.easeOutCubic,
      builder: (context, value, _) {
        return Text(
          '${value.round()}',
          style: widget.style,
        );
      },
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// RESULT CARD — теперь у каждой карточки свой градиентный "неоновый" бейдж
// ═══════════════════════════════════════════════════════════════════════════

class _ResultCard extends StatelessWidget {
  const _ResultCard({
    required this.value,
    required this.label,
    required this.caption,
    required this.gradient,
    required this.isDark,
    required this.icon,
  });

  final String value;
  final String label;
  final String caption;
  final List<Color> gradient;
  final bool isDark;
  final IconData icon;

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
          color: gradient.first.withValues(alpha: isDark ? 0.14 : 0.10),
        ),
        boxShadow: [
          BoxShadow(
            color: gradient.first.withValues(
              alpha: isDark ? 0.14 : 0.08,
            ),
            blurRadius: 18,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: gradient,
              ),
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                  color: gradient.first.withValues(alpha: 0.38),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Icon(icon, size: 19, color: Colors.white),
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
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.7,
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
        horizontal: 11,
        vertical: 7,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: isDark
              ? [
            _Aurora.violet.withValues(alpha: 0.24),
            _Aurora.cyan.withValues(alpha: 0.10),
          ]
              : [
            _Aurora.violet.withValues(alpha: 0.14),
            _Aurora.cyan.withValues(alpha: 0.10),
          ],
        ),
        borderRadius:
        BorderRadius.circular(999),
        border: Border.all(
          color: _Aurora.violet.withValues(
            alpha: 0.20,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.auto_awesome_rounded,
            size: 13,
            color: _Aurora.violet,
          ),
          const SizedBox(width: 6),
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
    return Container(
      width: 108,
      height: 108,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: _Aurora.violet.withValues(alpha: 0.32),
            blurRadius: 34,
            spreadRadius: -6,
          ),
        ],
      ),
      child: CustomPaint(
        painter: _ProgressOrbPainter(
          progress: progress.clamp(0.0, 1.0),
          trackColor: isDark
              ? Colors.white.withValues(alpha: 0.08)
              : _Aurora.violet.withValues(alpha: 0.08),
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
                AppLocalizations.of(context).levelLabel.toUpperCase(),
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
                  alpha: 0.07,
                )
                    : _Aurora.violet
                    .withValues(
                  alpha: 0.07,
                ),
              ),
            ),
            _AnimatedWidthFactor(
              widthFactor: progress
                  .clamp(0.0, 1.0),
              child: Container(
                decoration:
                const BoxDecoration(
                  gradient: LinearGradient(
                    colors:
                    _Aurora.heroGradient,
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

// Во Flutter SDK нет встроенного "AnimatedFractionallySizedBox", поэтому
// этот небольшой помощник плавно анимирует изменение widthFactor через
// обычный TweenAnimationBuilder — используется и полосой уровня, и
// коннектором между вехами ниже.
class _AnimatedWidthFactor extends StatelessWidget {
  const _AnimatedWidthFactor({
    required this.widthFactor,
    required this.child,
  });

  final double widthFactor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(end: widthFactor.clamp(0.0, 1.0)),
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeOutCubic,
      builder: (context, value, _) {
        return FractionallySizedBox(
          widthFactor: value,
          alignment: Alignment.centerLeft,
          child: child,
        );
      },
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
          alpha: 0.20,
        )
            : Colors.black.withValues(alpha: 0.035),
        borderRadius:
        BorderRadius.circular(18),
        border: Border.all(
          color: _Aurora.cyan
              .withValues(alpha: 0.16),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: _Aurora.mintGradient,
              ),
              shape: BoxShape.circle,
            ),
          ).animate(onPlay: (c) => c.repeat(reverse: true)).scaleXY(
            begin: 0.85,
            end: 1.35,
            duration: 1100.ms,
            curve: Curves.easeInOut,
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context).freeFor,
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
              ShaderMask(
                shaderCallback: (rect) => const LinearGradient(
                  colors: _Aurora.heroGradient,
                ).createShader(rect),
                blendMode: BlendMode.srcIn,
                child: Text(
                  clock,
                  style: GoogleFonts.outfit(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.3,
                    fontFeatures: const [
                      FontFeature.tabularFigures(),
                    ],
                    color: Colors.white,
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
            gradient: isActive
                ? const LinearGradient(colors: _Aurora.heroGradient)
                : null,
            color: isActive
                ? null
                : (isDark
                ? AppColors.textSecondaryDark
                : AppColors.textSecondaryLight),
            shape: BoxShape.circle,
            boxShadow: isActive
                ? [
              BoxShadow(
                color: _Aurora.violet.withValues(alpha: 0.55),
                blurRadius: 8,
                spreadRadius: 1,
              ),
            ]
                : null,
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
                      : _Aurora.violet
                      .withValues(
                    alpha: 0.06,
                  ),
                ),
              ),
              _AnimatedWidthFactor(
                widthFactor: progress
                    .clamp(0.0, 1.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: _Aurora.heroGradient,
                    ),
                  ),
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
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(72, 40),
      painter: _MiniLineChartPainter(
        isDark: isDark,
      ),
    );
  }
}

class _MiniLineChartPainter
    extends CustomPainter {
  _MiniLineChartPainter({
    required this.isDark,
  });

  final bool isDark;

  @override
  void paint(
      Canvas canvas,
      Size size,
      ) {
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

    final lineShader = const LinearGradient(
      colors: _Aurora.heroGradient,
    ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    // мягкая градиентная заливка под линией
    final fillPath = Path.from(path)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    final fillPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          _Aurora.violet.withValues(alpha: isDark ? 0.30 : 0.22),
          _Aurora.cyan.withValues(alpha: 0.0),
        ],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(fillPath, fillPaint);

    final glowPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..shader = lineShader
      ..color = Colors.white.withValues(alpha: 0.3)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 5);

    canvas.drawPath(path, glowPaint);

    final linePaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.4
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..shader = lineShader;

    canvas.drawPath(path, linePaint);

    final dotPaint = Paint()..color = _Aurora.cyan;
    canvas.drawCircle(points.last, 3.4, dotPaint);
    canvas.drawCircle(
      points.last,
      6,
      Paint()
        ..color = _Aurora.cyan.withValues(alpha: 0.35)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4),
    );
  }

  @override
  bool shouldRepaint(
      covariant _MiniLineChartPainter oldDelegate,
      ) {
    return oldDelegate.isDark != isDark;
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// AVATAR
// ═══════════════════════════════════════════════════════════════════════════
class _ProfileAvatar extends StatelessWidget {
  const _ProfileAvatar({
    required this.photoUrl,
    required this.isDark,
  });

  final String? photoUrl;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final hasPhoto =
        photoUrl != null && photoUrl!.trim().isNotEmpty;

    return Container(
      width: 52,
      height: 52,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          colors: _Aurora.heroGradient,
        ),
        boxShadow: [
          BoxShadow(
            color: _Aurora.violet.withValues(
              alpha: isDark ? 0.30 : 0.16,
            ),
            blurRadius: 18,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isDark
              ? AppColors.surfaceDark
              : AppColors.surfaceLight,
        ),
        padding: const EdgeInsets.all(1.5),
        child: ClipOval(
          child: hasPhoto
              ? Image.network(
            photoUrl!,
            width: 46,
            height: 46,
            fit: BoxFit.cover,
            loadingBuilder: (
                context,
                child,
                loadingProgress,
                ) {
              if (loadingProgress == null) {
                return child;
              }

              return _ProfilePlaceholder(
                isDark: isDark,
              );
            },
            errorBuilder: (
                context,
                error,
                stackTrace,
                ) {
              return _ProfilePlaceholder(
                isDark: isDark,
              );
            },
          )
              : _ProfilePlaceholder(
            isDark: isDark,
          ),
        ),
      ),
    );
  }
}

class _ProfilePlaceholder extends StatelessWidget {
  const _ProfilePlaceholder({
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: isDark
              ? [
            _Aurora.violet.withValues(alpha: 0.30),
            _Aurora.cyan.withValues(alpha: 0.18),
          ]
              : [
            _Aurora.violet.withValues(alpha: 0.16),
            _Aurora.cyan.withValues(alpha: 0.12),
          ],
        ),
      ),
      child: Icon(
        Icons.person_rounded,
        size: 22,
        color: isDark
            ? AppColors.textSecondaryDark
            : AppColors.textSecondaryLight,
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// SECTION — с маленьким градиентным акцентом перед заголовком
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
    return Row(
      children: [
        Container(
          width: 14,
          height: 3,
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: _Aurora.heroGradient),
            borderRadius: BorderRadius.circular(999),
          ),
        ),
        const SizedBox(width: 7),
        Text(
          title,
          style: GoogleFonts.inter(
            fontSize: 9,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.5,
            color: isDark
                ? AppColors.textSecondaryDark
                : AppColors.textSecondaryLight,
          ),
        ),
      ],
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

    // мягкое свечение под чёткой дугой
    final glowPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 13
      ..strokeCap = StrokeCap.round
      ..shader = const LinearGradient(
        colors: _Aurora.heroGradient,
      ).createShader(rect)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 7)
      ..color = trackColor.withValues(alpha: 0.55);

    canvas.drawArc(
      rect,
      -math.pi / 2,
      math.pi * 2 * progress,
      false,
      glowPaint,
    );

    final progressPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 7
      ..strokeCap = StrokeCap.round
      ..shader = const LinearGradient(
        colors: _Aurora.heroGradient,
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