import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/theme/app_theme.dart';
import '../../../data/bloc/premium/premium_bloc.dart';
import '../../../data/bloc/premium/premium_event.dart';
import '../../../data/bloc/premium/premium_state.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  PremiumPlan _selectedPlan = PremiumPlan.yearly;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final t = _PremiumStrings.fromContext(context);

    return Scaffold(
      backgroundColor: isDark
          ? const Color(0xFF06100F)
          : const Color(0xFFF7FAF9),
      body: BlocConsumer<PremiumBloc, PremiumState>(
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
                  margin: const EdgeInsets.fromLTRB(
                    16,
                    0,
                    16,
                    16,
                  ),
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
              _BackgroundGlow(isDark: isDark),

              SafeArea(
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  slivers: [
                    SliverToBoxAdapter(
                      child: _TopBar(
                        isDark: isDark,
                        hasAccess: state.hasAccess,
                        isPremium: state.isPremium,
                        onBack: () {
                          if (Navigator.canPop(context)) {
                            Navigator.pop(context);
                          }
                        },
                      ),
                    ),

                    SliverToBoxAdapter(
                      child: _Hero(
                        isDark: isDark,
                        strings: t,
                      ),
                    ),

                    SliverPadding(
                      padding: const EdgeInsets.fromLTRB(
                        20,
                        34,
                        20,
                        0,
                      ),
                      sliver: SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            _SectionTitle(
                              title: t.everythingIncluded,
                              subtitle: t.everythingIncludedSubtitle,
                              isDark: isDark,
                            ),

                            const SizedBox(height: 18),

                            _FeatureGrid(
                              isDark: isDark,
                              strings: t,
                            ),

                            const SizedBox(height: 34),

                            _SectionTitle(
                              title: t.choosePlan,
                              subtitle: t.choosePlanSubtitle,
                              isDark: isDark,
                            ),

                            const SizedBox(height: 18),

                            _PlanCard(
                              plan: PremiumPlan.monthly,
                              selected:
                              _selectedPlan == PremiumPlan.monthly,
                              isDark: isDark,
                              strings: t,
                              onTap: () {
                                setState(() {
                                  _selectedPlan =
                                      PremiumPlan.monthly;
                                });
                              },
                            ),

                            const SizedBox(height: 12),

                            _PlanCard(
                              plan: PremiumPlan.yearly,
                              selected:
                              _selectedPlan == PremiumPlan.yearly,
                              isDark: isDark,
                              strings: t,
                              onTap: () {
                                setState(() {
                                  _selectedPlan =
                                      PremiumPlan.yearly;
                                });
                              },
                            ),

                            const SizedBox(height: 12),

                            _PlanCard(
                              plan: PremiumPlan.lifetime,
                              selected:
                              _selectedPlan ==
                                  PremiumPlan.lifetime,
                              isDark: isDark,
                              strings: t,
                              onTap: () {
                                setState(() {
                                  _selectedPlan =
                                      PremiumPlan.lifetime;
                                });
                              },
                            ),

                            const SizedBox(height: 22),

                            _PurchaseButton(
                              plan: _selectedPlan,
                              isDark: isDark,
                              isLoading: state.isLoading,
                              strings: t,
                              onPressed: state.isLoading
                                  ? null
                                  : () {
                                context
                                    .read<PremiumBloc>()
                                    .add(
                                  PurchasePremium(
                                    _selectedPlan
                                        .purchaseId,
                                  ),
                                );
                              },
                            ),

                            const SizedBox(height: 14),

                            if (state.hasAccess)
                              _ActivePremiumCard(
                                isDark: isDark,
                                strings: t,
                                isPremium: state.isPremium,
                              )
                            else
                              _TrustRow(
                                isDark: isDark,
                                strings: t,
                              ),

                            const SizedBox(height: 16),

                            Center(
                              child: TextButton(
                                onPressed: state.isLoading
                                    ? null
                                    : () {
                                  context
                                      .read<PremiumBloc>()
                                      .add(
                                    RestorePurchases(),
                                  );
                                },
                                style: TextButton.styleFrom(
                                  foregroundColor:
                                  isDark
                                      ? Colors.white70
                                      : AppColors
                                      .textSecondaryLight,
                                ),
                                child: Text(
                                  t.restorePurchases,
                                  style: GoogleFonts.inter(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 6),

                            _LegalText(
                              isDark: isDark,
                              strings: t,
                              selectedPlan: _selectedPlan,
                            ),

                            const SizedBox(height: 42),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// PLAN
// -----------------------------------------------------------------------------

enum PremiumPlan {
  monthly,
  yearly,
  lifetime;

  String get purchaseId {
    switch (this) {
      case PremiumPlan.monthly:
        return 'monthly';

      case PremiumPlan.yearly:
        return 'yearly';

      case PremiumPlan.lifetime:
        return 'lifetime';
    }
  }
}

// -----------------------------------------------------------------------------
// BACKGROUND
// -----------------------------------------------------------------------------

class _BackgroundGlow extends StatelessWidget {
  const _BackgroundGlow({
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Stack(
        children: [
          Positioned(
            top: -120,
            left: -80,
            child: Container(
              width: 360,
              height: 360,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppColors.primary.withValues(
                      alpha: isDark ? 0.20 : 0.11,
                    ),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 180,
            right: -150,
            child: Container(
              width: 330,
              height: 330,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppColors.accent.withValues(
                      alpha: isDark ? 0.08 : 0.045,
                    ),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// TOP BAR
// -----------------------------------------------------------------------------

class _TopBar extends StatelessWidget {
  const _TopBar({
    required this.isDark,
    required this.hasAccess,
    required this.isPremium,
    required this.onBack,
  });

  final bool isDark;
  final bool hasAccess;
  final bool isPremium;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        12,
        8,
        18,
        0,
      ),
      child: Row(
        children: [
          _RoundIconButton(
            icon: Iconsax.arrow_left,
            isDark: isDark,
            onTap: onBack,
          ),
          const Spacer(),
          if (hasAccess)
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 7,
              ),
              decoration: BoxDecoration(
                color: AppColors.success.withValues(
                  alpha: 0.12,
                ),
                borderRadius: BorderRadius.circular(999),
                border: Border.all(
                  color: AppColors.success.withValues(
                    alpha: 0.18,
                  ),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Iconsax.tick_circle5,
                    size: 14,
                    color: AppColors.success,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    isPremium ? 'PREMIUM' : 'ACTIVE',
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0.8,
                      color: AppColors.success,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    ).animate().fadeIn(duration: 350.ms);
  }
}

class _RoundIconButton extends StatelessWidget {
  const _RoundIconButton({
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
        borderRadius: BorderRadius.circular(16),
        child: Ink(
          width: 46,
          height: 46,
          decoration: BoxDecoration(
            color: isDark
                ? Colors.white.withValues(alpha: 0.055)
                : Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: isDark
                  ? Colors.white.withValues(alpha: 0.07)
                  : Colors.black.withValues(alpha: 0.045),
            ),
            boxShadow: isDark
                ? null
                : [
              BoxShadow(
                color: Colors.black.withValues(
                  alpha: 0.045,
                ),
                blurRadius: 18,
                offset: const Offset(0, 7),
              ),
            ],
          ),
          child: Icon(
            icon,
            size: 19,
            color: isDark
                ? Colors.white
                : AppColors.textPrimaryLight,
          ),
        ),
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// HERO
// -----------------------------------------------------------------------------

class _Hero extends StatelessWidget {
  const _Hero({
    required this.isDark,
    required this.strings,
  });

  final bool isDark;
  final _PremiumStrings strings;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        24,
        22,
        24,
        0,
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 138,
                height: 138,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary.withValues(
                    alpha: isDark ? 0.055 : 0.035,
                  ),
                ),
              ),
              Container(
                width: 112,
                height: 112,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.primary.withValues(
                      alpha: 0.12,
                    ),
                    width: 1,
                  ),
                ),
              ),
              Container(
                width: 88,
                height: 88,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF0F9D8E),
                      Color(0xFF0EA5E9),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(28),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withValues(
                        alpha: 0.32,
                      ),
                      blurRadius: 34,
                      spreadRadius: -3,
                      offset: const Offset(0, 14),
                    ),
                  ],
                ),
                child: const Center(
                  child: Icon(
                    Iconsax.crown_15,
                    size: 38,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
              .animate()
              .scale(
            duration: 600.ms,
            curve: Curves.easeOutBack,
          )
              .fadeIn(),

          const SizedBox(height: 25),

          Text(
            strings.title,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 32,
              height: 1.05,
              fontWeight: FontWeight.w900,
              letterSpacing: -1.2,
              color: isDark
                  ? Colors.white
                  : AppColors.textPrimaryLight,
            ),
          )
              .animate()
              .fadeIn(delay: 100.ms)
              .slideY(
            begin: 0.12,
            end: 0,
          ),

          const SizedBox(height: 12),

          Text(
            strings.subtitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 14.5,
              height: 1.55,
              fontWeight: FontWeight.w500,
              color: isDark
                  ? AppColors.textSecondaryDark
                  : AppColors.textSecondaryLight,
            ),
          ).animate().fadeIn(delay: 180.ms),

          const SizedBox(height: 18),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 13,
              vertical: 7,
            ),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(
                alpha: isDark ? 0.11 : 0.075,
              ),
              borderRadius: BorderRadius.circular(999),
              border: Border.all(
                color: AppColors.primary.withValues(
                  alpha: 0.13,
                ),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Iconsax.flash_15,
                  size: 14,
                  color: AppColors.primary,
                ),
                const SizedBox(width: 6),
                Text(
                  strings.oneMembership,
                  style: GoogleFonts.inter(
                    fontSize: 11.5,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ).animate().fadeIn(delay: 260.ms),
        ],
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// SECTION TITLE
// -----------------------------------------------------------------------------

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({
    required this.title,
    required this.subtitle,
    required this.isDark,
  });

  final String title;
  final String subtitle;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.inter(
            fontSize: 19,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.45,
            color: isDark
                ? Colors.white
                : AppColors.textPrimaryLight,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          subtitle,
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: isDark
                ? AppColors.textSecondaryDark
                : AppColors.textSecondaryLight,
          ),
        ),
      ],
    );
  }
}

// -----------------------------------------------------------------------------
// FEATURES
// -----------------------------------------------------------------------------

class _FeatureGrid extends StatelessWidget {
  const _FeatureGrid({
    required this.isDark,
    required this.strings,
  });

  final bool isDark;
  final _PremiumStrings strings;

  @override
  Widget build(BuildContext context) {
    final features = [
      _FeatureData(
        Iconsax.task_square,
        strings.featureTasks,
        strings.featureTasksSubtitle,
      ),
      _FeatureData(
        Iconsax.chart_2,
        strings.featureStats,
        strings.featureStatsSubtitle,
      ),
      _FeatureData(
        Iconsax.message_text,
        strings.featureMotivation,
        strings.featureMotivationSubtitle,
      ),
      _FeatureData(
        Iconsax.heart_circle,
        strings.featureSupport,
        strings.featureSupportSubtitle,
      ),
      _FeatureData(
        Iconsax.notification,
        strings.featureNotifications,
        strings.featureNotificationsSubtitle,
      ),
      _FeatureData(
        Iconsax.slash,
        strings.featureAds,
        strings.featureAdsSubtitle,
      ),
    ];

    return Column(
      children: [
        for (int i = 0; i < features.length; i += 2)
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: _FeatureCard(
                    data: features[i],
                    isDark: isDark,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _FeatureCard(
                    data: features[i + 1],
                    isDark: isDark,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class _FeatureData {
  const _FeatureData(
      this.icon,
      this.title,
      this.subtitle,
      );

  final IconData icon;
  final String title;
  final String subtitle;
}

class _FeatureCard extends StatelessWidget {
  const _FeatureCard({
    required this.data,
    required this.isDark,
  });

  final _FeatureData data;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 128,
      ),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: isDark
            ? Colors.white.withValues(alpha: 0.035)
            : Colors.white,
        borderRadius: BorderRadius.circular(20),
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
              alpha: 0.025,
            ),
            blurRadius: 18,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(
                alpha: isDark ? 0.13 : 0.08,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              data.icon,
              size: 18,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            data.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.inter(
              fontSize: 12.5,
              height: 1.2,
              fontWeight: FontWeight.w800,
              color: isDark
                  ? Colors.white
                  : AppColors.textPrimaryLight,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            data.subtitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.inter(
              fontSize: 10,
              height: 1.25,
              fontWeight: FontWeight.w500,
              color: isDark
                  ? AppColors.textSecondaryDark
                  : AppColors.textSecondaryLight,
            ),
          ),
        ],
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// PLAN CARD
// -----------------------------------------------------------------------------

class _PlanCard extends StatelessWidget {
  const _PlanCard({
    required this.plan,
    required this.selected,
    required this.isDark,
    required this.strings,
    required this.onTap,
  });

  final PremiumPlan plan;
  final bool selected;
  final bool isDark;
  final _PremiumStrings strings;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final isYearly = plan == PremiumPlan.yearly;
    final isLifetime = plan == PremiumPlan.lifetime;

    final title = strings.planTitle(plan);
    final subtitle = strings.planSubtitle(plan);
    final price = strings.planPrice(plan);
    final period = strings.planPeriod(plan);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(24),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeOutCubic,
          width: double.infinity,
          padding: const EdgeInsets.all(17),
          decoration: BoxDecoration(
            gradient: selected
                ? LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: isLifetime
                  ? [
                const Color(0xFF251A48),
                const Color(0xFF15102D),
              ]
                  : [
                AppColors.primary.withValues(
                  alpha: isDark ? 0.18 : 0.10,
                ),
                isDark
                    ? const Color(0xFF10201F)
                    : Colors.white,
              ],
            )
                : null,
            color: selected
                ? null
                : isDark
                ? Colors.white.withValues(alpha: 0.035)
                : Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              width: selected ? 1.4 : 1,
              color: selected
                  ? (isLifetime
                  ? AppColors.accent
                  : AppColors.primary)
                  : isDark
                  ? Colors.white.withValues(alpha: 0.065)
                  : Colors.black.withValues(alpha: 0.045),
            ),
            boxShadow: selected
                ? [
              BoxShadow(
                color: (isLifetime
                    ? AppColors.accent
                    : AppColors.primary)
                    .withValues(alpha: 0.14),
                blurRadius: 25,
                spreadRadius: -5,
                offset: const Offset(0, 10),
              ),
            ]
                : null,
          ),
          child: Row(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 220),
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selected
                      ? (isLifetime
                      ? AppColors.accent
                      : AppColors.primary)
                      : isDark
                      ? Colors.white.withValues(alpha: 0.055)
                      : Colors.black.withValues(alpha: 0.035),
                ),
                child: selected
                    ? const Icon(
                  Icons.check,
                  size: 20,
                  color: Colors.white,
                )
                    : Icon(
                  isLifetime
                      ? Iconsax.crown
                      : Iconsax.calendar_1,
                  size: 19,
                  color: isDark
                      ? Colors.white60
                      : AppColors.textSecondaryLight,
                ),
              ),
              const SizedBox(width: 13),
              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: isDark
                                  ? Colors.white
                                  : AppColors.textPrimaryLight,
                            ),
                          ),
                        ),
                        if (isYearly) ...[
                          const SizedBox(width: 8),
                          _PlanBadge(
                            text: strings.bestValue,
                          ),
                        ],
                        if (isLifetime) ...[
                          const SizedBox(width: 8),
                          _PlanBadge(
                            text: strings.oneTime,
                            color: AppColors.accent,
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
                        fontSize: 11,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price,
                    style: GoogleFonts.outfit(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.5,
                      color: selected
                          ? (isLifetime
                          ? AppColors.accent
                          : AppColors.primary)
                          : isDark
                          ? Colors.white
                          : AppColors.textPrimaryLight,
                    ),
                  ),
                  if (period.isNotEmpty)
                    Text(
                      period,
                      style: GoogleFonts.inter(
                        fontSize: 9.5,
                        fontWeight: FontWeight.w600,
                        color: isDark
                            ? AppColors.textSecondaryDark
                            : AppColors.textSecondaryLight,
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

class _PlanBadge extends StatelessWidget {
  const _PlanBadge({
    required this.text,
    this.color = AppColors.primary,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 7,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.11),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Text(
        text,
        style: GoogleFonts.inter(
          fontSize: 8,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.5,
          color: color,
        ),
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// PURCHASE BUTTON
// -----------------------------------------------------------------------------

class _PurchaseButton extends StatelessWidget {
  const _PurchaseButton({
    required this.plan,
    required this.isDark,
    required this.isLoading,
    required this.strings,
    required this.onPressed,
  });

  final PremiumPlan plan;
  final bool isDark;
  final bool isLoading;
  final _PremiumStrings strings;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isLifetime = plan == PremiumPlan.lifetime;

    final gradient = isLifetime
        ? const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF7B6CDB),
        Color(0xFF9B8FF0),
      ],
    )
        : const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF0F9D8E),
        Color(0xFF3BC4B5),
      ],
    );

    final shadowColor = isLifetime
        ? AppColors.accent
        : AppColors.primary;

    return SizedBox(
      width: double.infinity,
      height: 60,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(19),
          child: Ink(
            decoration: BoxDecoration(
              gradient: onPressed == null
                  ? null
                  : gradient,
              color: onPressed == null
                  ? (isDark
                  ? Colors.white.withValues(alpha: 0.08)
                  : Colors.black.withValues(alpha: 0.06))
                  : null,
              borderRadius: BorderRadius.circular(19),
              boxShadow: onPressed == null
                  ? null
                  : [
                BoxShadow(
                  color: shadowColor.withValues(
                    alpha: 0.22,
                  ),
                  blurRadius: 24,
                  spreadRadius: -6,
                  offset: const Offset(0, 9),
                ),
              ],
            ),
            child: Center(
              child: isLoading
                  ? const SizedBox(
                width: 23,
                height: 23,
                child: CircularProgressIndicator(
                  strokeWidth: 2.5,
                  color: Colors.white,
                ),
              )
                  : Row(
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: [
                  Icon(
                    isLifetime
                        ? Iconsax.crown_15
                        : Iconsax.flash_15,
                    size: 19,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 9),
                  Text(
                    strings.purchaseButton(plan),
                    style: GoogleFonts.inter(
                      fontSize: 15.5,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// ACTIVE
// -----------------------------------------------------------------------------

class _ActivePremiumCard extends StatelessWidget {
  const _ActivePremiumCard({
    required this.isDark,
    required this.strings,
    required this.isPremium,
  });

  final bool isDark;
  final _PremiumStrings strings;
  final bool isPremium;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.success.withValues(
          alpha: isDark ? 0.10 : 0.07,
        ),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: AppColors.success.withValues(
            alpha: 0.18,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: AppColors.success.withValues(
                alpha: 0.13,
              ),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Iconsax.tick_circle5,
              color: AppColors.success,
              size: 20,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              isPremium
                  ? strings.premiumActive
                  : strings.trialActive,
              style: GoogleFonts.inter(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: AppColors.success,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// TRUST
// -----------------------------------------------------------------------------

class _TrustRow extends StatelessWidget {
  const _TrustRow({
    required this.isDark,
    required this.strings,
  });

  final bool isDark;
  final _PremiumStrings strings;

  @override
  Widget build(BuildContext context) {
    final items = [
      (
      Iconsax.shield_tick,
      strings.securePurchase,
      ),
      (
      Iconsax.refresh,
      strings.cancelAnytime,
      ),
      (
      Iconsax.cloud_change,
      strings.restoreAnytime,
      ),
    ];

    return Row(
      children: [
        for (int i = 0; i < items.length; i++) ...[
          Expanded(
            child: Column(
              children: [
                Icon(
                  items[i].$1,
                  size: 18,
                  color: isDark
                      ? Colors.white38
                      : Colors.black38,
                ),
                const SizedBox(height: 6),
                Text(
                  items[i].$2,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    fontSize: 9.5,
                    height: 1.25,
                    fontWeight: FontWeight.w600,
                    color: isDark
                        ? Colors.white38
                        : Colors.black45,
                  ),
                ),
              ],
            ),
          ),
          if (i < items.length - 1)
            Container(
              width: 1,
              height: 34,
              color: isDark
                  ? Colors.white.withValues(alpha: 0.06)
                  : Colors.black.withValues(alpha: 0.06),
            ),
        ],
      ],
    );
  }
}

// -----------------------------------------------------------------------------
// LEGAL
// -----------------------------------------------------------------------------

class _LegalText extends StatelessWidget {
  const _LegalText({
    required this.isDark,
    required this.strings,
    required this.selectedPlan,
  });

  final bool isDark;
  final _PremiumStrings strings;
  final PremiumPlan selectedPlan;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
      ),
      child: Text(
        strings.legalText(selectedPlan),
        textAlign: TextAlign.center,
        style: GoogleFonts.inter(
          fontSize: 10,
          height: 1.5,
          fontWeight: FontWeight.w500,
          color: isDark
              ? Colors.white.withValues(alpha: 0.28)
              : Colors.black.withValues(alpha: 0.35),
        ),
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// LOCALIZATION
// -----------------------------------------------------------------------------

class _PremiumStrings {
  const _PremiumStrings({
    required this.title,
    required this.subtitle,
    required this.oneMembership,
    required this.everythingIncluded,
    required this.everythingIncludedSubtitle,
    required this.choosePlan,
    required this.choosePlanSubtitle,
    required this.featureTasks,
    required this.featureTasksSubtitle,
    required this.featureStats,
    required this.featureStatsSubtitle,
    required this.featureMotivation,
    required this.featureMotivationSubtitle,
    required this.featureSupport,
    required this.featureSupportSubtitle,
    required this.featureNotifications,
    required this.featureNotificationsSubtitle,
    required this.featureAds,
    required this.featureAdsSubtitle,
    required this.monthly,
    required this.monthlySubtitle,
    required this.yearly,
    required this.yearlySubtitle,
    required this.lifetime,
    required this.lifetimeSubtitle,
    required this.month,
    required this.year,
    required this.bestValue,
    required this.oneTime,
    required this.buyMonthly,
    required this.buyYearly,
    required this.buyLifetime,
    required this.restorePurchases,
    required this.premiumActive,
    required this.trialActive,
    required this.securePurchase,
    required this.cancelAnytime,
    required this.restoreAnytime,
    required this.legalMonthly,
    required this.legalYearly,
    required this.legalLifetime,
  });

  final String title;
  final String subtitle;
  final String oneMembership;

  final String everythingIncluded;
  final String everythingIncludedSubtitle;

  final String choosePlan;
  final String choosePlanSubtitle;

  final String featureTasks;
  final String featureTasksSubtitle;

  final String featureStats;
  final String featureStatsSubtitle;

  final String featureMotivation;
  final String featureMotivationSubtitle;

  final String featureSupport;
  final String featureSupportSubtitle;

  final String featureNotifications;
  final String featureNotificationsSubtitle;

  final String featureAds;
  final String featureAdsSubtitle;

  final String monthly;
  final String monthlySubtitle;

  final String yearly;
  final String yearlySubtitle;

  final String lifetime;
  final String lifetimeSubtitle;

  final String month;
  final String year;

  final String bestValue;
  final String oneTime;

  final String buyMonthly;
  final String buyYearly;
  final String buyLifetime;

  final String restorePurchases;

  final String premiumActive;
  final String trialActive;

  final String securePurchase;
  final String cancelAnytime;
  final String restoreAnytime;

  final String legalMonthly;
  final String legalYearly;
  final String legalLifetime;

  static _PremiumStrings fromContext(
      BuildContext context,
      ) {
    final languageCode =
        Localizations.localeOf(context).languageCode;

    if (languageCode == 'en') {
      return _english;
    }

    if (languageCode == 'az') {
      return _azerbaijani;
    }

    return _russian;
  }

  String planTitle(PremiumPlan plan) {
    switch (plan) {
      case PremiumPlan.monthly:
        return monthly;
      case PremiumPlan.yearly:
        return yearly;
      case PremiumPlan.lifetime:
        return lifetime;
    }
  }

  String planSubtitle(PremiumPlan plan) {
    switch (plan) {
      case PremiumPlan.monthly:
        return monthlySubtitle;
      case PremiumPlan.yearly:
        return yearlySubtitle;
      case PremiumPlan.lifetime:
        return lifetimeSubtitle;
    }
  }

  String planPrice(PremiumPlan plan) {
    switch (plan) {
      case PremiumPlan.monthly:
        return '€4.99';

      case PremiumPlan.yearly:
        return '€29.99';

      case PremiumPlan.lifetime:
        return '€59.99';
    }
  }

  String planPeriod(PremiumPlan plan) {
    switch (plan) {
      case PremiumPlan.monthly:
        return month;

      case PremiumPlan.yearly:
        return year;

      case PremiumPlan.lifetime:
        return '';
    }
  }

  String purchaseButton(PremiumPlan plan) {
    switch (plan) {
      case PremiumPlan.monthly:
        return buyMonthly;

      case PremiumPlan.yearly:
        return buyYearly;

      case PremiumPlan.lifetime:
        return buyLifetime;
    }
  }

  String legalText(PremiumPlan plan) {
    switch (plan) {
      case PremiumPlan.monthly:
        return legalMonthly;

      case PremiumPlan.yearly:
        return legalYearly;

      case PremiumPlan.lifetime:
        return legalLifetime;
    }
  }

  static const _russian = _PremiumStrings(
    title: 'Puffree Premium',
    subtitle:
    'Больше возможностей для твоего пути.\n'
        'Выбери формат, который подходит тебе.',
    oneMembership: 'Все Premium-функции в одном доступе',
    everythingIncluded: 'Всё включено',
    everythingIncludedSubtitle:
    'Premium открывает полный набор возможностей Puffree.',
    choosePlan: 'Выбери свой план',
    choosePlanSubtitle:
    'Можно изменить выбор перед покупкой.',

    featureTasks: 'Расширенные задания',
    featureTasksSubtitle: 'Больше практик и миссий',
    featureStats: 'Полная статистика',
    featureStatsSubtitle: 'Детали и динамика прогресса',
    featureMotivation: 'Персональная мотивация',
    featureMotivationSubtitle: 'Подсказки под твой путь',
    featureSupport: 'Помощь при тяге+',
    featureSupportSubtitle: 'Расширенные инструменты',
    featureNotifications: 'Умные напоминания',
    featureNotificationsSubtitle: 'Мотивация в нужный момент',
    featureAds: 'Без рекламы',
    featureAdsSubtitle: 'Спокойный интерфейс',

    monthly: 'Ежемесячно',
    monthlySubtitle: 'Гибкий вариант без долгих обязательств',

    yearly: 'Ежегодно',
    yearlySubtitle: 'Лучший баланс цены и возможностей',

    lifetime: 'Навсегда',
    lifetimeSubtitle: 'Одна покупка — Premium навсегда',

    month: '/ месяц',
    year: '/ год',

    bestValue: 'ВЫГОДНО',
    oneTime: 'РАЗОВО',

    buyMonthly: 'Оформить Premium на месяц',
    buyYearly: 'Выбрать Premium на год',
    buyLifetime: 'Получить Premium навсегда',

    restorePurchases: 'Восстановить покупки',

    premiumActive: 'Premium активен',
    trialActive: 'Пробный период активен',

    securePurchase: 'Безопасная покупка',
    cancelAnytime: 'Отмена в любой момент',
    restoreAnytime: 'Покупки можно восстановить',

    legalMonthly:
    'Подписка списывается автоматически каждый месяц. '
        'Отменить подписку можно через настройки App Store или Google Play. '
        'Цена отображается перед подтверждением покупки.',

    legalYearly:
    'Подписка списывается автоматически каждый год. '
        'Отменить подписку можно через настройки App Store или Google Play. '
        'Цена отображается перед подтверждением покупки.',

    legalLifetime:
    'Разовая покупка не является подпиской и не продлевается автоматически. '
        'Цена отображается перед подтверждением покупки.',
  );

  static const _english = _PremiumStrings(
    title: 'Puffree Premium',
    subtitle:
    'More tools for your journey.\n'
        'Choose the plan that fits you.',
    oneMembership: 'One Premium access for everything',
    everythingIncluded: 'Everything included',
    everythingIncludedSubtitle:
    'Premium unlocks the full Puffree experience.',
    choosePlan: 'Choose your plan',
    choosePlanSubtitle:
    'You can change your choice before purchasing.',

    featureTasks: 'Extended missions',
    featureTasksSubtitle: 'More practices and challenges',
    featureStats: 'Full statistics',
    featureStatsSubtitle: 'Detailed progress insights',
    featureMotivation: 'Personal motivation',
    featureMotivationSubtitle: 'Guidance for your journey',
    featureSupport: 'Extra support tools',
    featureSupportSubtitle: 'More tools when you need them',
    featureNotifications: 'Smart reminders',
    featureNotificationsSubtitle: 'Motivation at the right time',
    featureAds: 'Ad-free',
    featureAdsSubtitle: 'A calm, clean experience',

    monthly: 'Monthly',
    monthlySubtitle: 'Flexible with no long commitment',

    yearly: 'Yearly',
    yearlySubtitle: 'Best balance of value and features',

    lifetime: 'Lifetime',
    lifetimeSubtitle: 'One payment — Premium forever',

    month: '/ month',
    year: '/ year',

    bestValue: 'BEST VALUE',
    oneTime: 'ONE-TIME',

    buyMonthly: 'Get Premium monthly',
    buyYearly: 'Get Premium yearly',
    buyLifetime: 'Get Premium forever',

    restorePurchases: 'Restore purchases',

    premiumActive: 'Premium is active',
    trialActive: 'Trial period is active',

    securePurchase: 'Secure purchase',
    cancelAnytime: 'Cancel anytime',
    restoreAnytime: 'Purchases can be restored',

    legalMonthly:
    'The subscription renews automatically every month. '
        'You can cancel through your App Store or Google Play settings. '
        'The price is shown before purchase confirmation.',

    legalYearly:
    'The subscription renews automatically every year. '
        'You can cancel through your App Store or Google Play settings. '
        'The price is shown before purchase confirmation.',

    legalLifetime:
    'This is a one-time purchase and does not renew automatically. '
        'The price is shown before purchase confirmation.',
  );

  static const _azerbaijani = _PremiumStrings(
    title: 'Puffree Premium',
    subtitle:
    'Səyahətin üçün daha çox imkan.\n'
        'Sənə uyğun planı seç.',
    oneMembership: 'Bütün Premium imkanları bir girişdə',
    everythingIncluded: 'Hər şey daxildir',
    everythingIncludedSubtitle:
    'Premium Puffree-nin bütün imkanlarını açır.',
    choosePlan: 'Planını seç',
    choosePlanSubtitle:
    'Satın almadan əvvəl seçimini dəyişə bilərsən.',

    featureTasks: 'Genişləndirilmiş tapşırıqlar',
    featureTasksSubtitle: 'Daha çox praktika və missiya',
    featureStats: 'Tam statistika',
    featureStatsSubtitle: 'Ətraflı inkişaf məlumatları',
    featureMotivation: 'Fərdi motivasiya',
    featureMotivationSubtitle: 'Sənin yoluna uyğun tövsiyələr',
    featureSupport: 'Əlavə dəstək alətləri',
    featureSupportSubtitle: 'Daha çox faydalı alət',
    featureNotifications: 'Ağıllı bildirişlər',
    featureNotificationsSubtitle: 'Doğru zamanda motivasiya',
    featureAds: 'Reklamsız',
    featureAdsSubtitle: 'Sakit və təmiz interfeys',

    monthly: 'Aylıq',
    monthlySubtitle: 'Çevik seçim',

    yearly: 'İllik',
    yearlySubtitle: 'Qiymət və imkanlar üçün ən yaxşı seçim',

    lifetime: 'Ömürlük',
    lifetimeSubtitle: 'Bir ödəniş — Premium həmişəlik',

    month: '/ ay',
    year: '/ il',

    bestValue: 'SƏRFƏLİ',
    oneTime: 'BİR DƏFƏ',

    buyMonthly: 'Aylıq Premium al',
    buyYearly: 'İllik Premium al',
    buyLifetime: 'Premium-u həmişəlik al',

    restorePurchases: 'Satınalmaları bərpa et',

    premiumActive: 'Premium aktivdir',
    trialActive: 'Sınaq müddəti aktivdir',

    securePurchase: 'Təhlükəsiz ödəniş',
    cancelAnytime: 'İstənilən vaxt ləğv et',
    restoreAnytime: 'Satınalmaları bərpa etmək olar',

    legalMonthly:
    'Abunəlik hər ay avtomatik yenilənir. '
        'Abunəliyi App Store və ya Google Play ayarlarından ləğv edə bilərsən. '
        'Qiymət alışın təsdiqindən əvvəl göstərilir.',

    legalYearly:
    'Abunəlik hər il avtomatik yenilənir. '
        'Abunəliyi App Store və ya Google Play ayarlarından ləğv edə bilərsən. '
        'Qiymət alışın təsdiqindən əvvəl göstərilir.',

    legalLifetime:
    'Bu birdəfəlik alışdır və avtomatik yenilənmir. '
        'Qiymət alışın təsdiqindən əvvəl göstərilir.',
  );
}