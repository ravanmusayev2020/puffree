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
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF06100F) : const Color(0xFFF5F9F8),
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
                    style: GoogleFonts.inter(fontWeight: FontWeight.w600),
                  ),
                  backgroundColor: AppColors.error,
                  behavior: SnackBarBehavior.floating,
                  margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
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
                    // Top bar
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

                    // Hero with app logo
                    const SliverToBoxAdapter(child: SizedBox(height: 8)),
                    SliverToBoxAdapter(
                      child: _HeroHeader(l10n: l10n, isDark: isDark),
                    ),

                    // Content
                    SliverPadding(
                      padding: const EdgeInsets.fromLTRB(20, 28, 20, 0),
                      sliver: SliverList(
                        delegate: SliverChildListDelegate(
                          [
                            _SectionTitle(
                              title: l10n.everythingIncluded,
                              subtitle: l10n.everythingIncludedSubtitle,
                              isDark: isDark,
                            ),
                            const SizedBox(height: 16),
                            _FeatureGrid(isDark: isDark, l10n: l10n),
                            const SizedBox(height: 32),
                            _SectionTitle(
                              title: l10n.choosePlan,
                              subtitle: l10n.choosePlanSubtitle,
                              isDark: isDark,
                            ),
                            const SizedBox(height: 16),

                            // Plans
                            _PlanCard(
                              plan: PremiumPlan.monthly,
                              selected: _selectedPlan == PremiumPlan.monthly,
                              isDark: isDark,
                              l10n: l10n,
                              onTap: () => setState(() => _selectedPlan = PremiumPlan.monthly),
                            ),
                            const SizedBox(height: 12),
                            _PlanCard(
                              plan: PremiumPlan.yearly,
                              selected: _selectedPlan == PremiumPlan.yearly,
                              isDark: isDark,
                              l10n: l10n,
                              onTap: () => setState(() => _selectedPlan = PremiumPlan.yearly),
                            ),
                            const SizedBox(height: 12),
                            _PlanCard(
                              plan: PremiumPlan.lifetime,
                              selected: _selectedPlan == PremiumPlan.lifetime,
                              isDark: isDark,
                              l10n: l10n,
                              onTap: () => setState(() => _selectedPlan = PremiumPlan.lifetime),
                            ),

                            const SizedBox(height: 24),

                            // Purchase button
                            _PurchaseButton(
                              plan: _selectedPlan,
                              isDark: isDark,
                              isLoading: state.isLoading,
                              l10n: l10n,
                              onPressed: state.isLoading
                                  ? null
                                  : () {
                                context.read<PremiumBloc>().add(
                                  PurchasePremium(_selectedPlan.purchaseId),
                                );
                              },
                            ),

                            const SizedBox(height: 16),

                            if (state.hasAccess)
                              _ActivePremiumCard(
                                isDark: isDark,
                                l10n: l10n,
                                isPremium: state.isPremium,
                              )
                            else
                              _TrustRow(isDark: isDark, l10n: l10n),

                            const SizedBox(height: 14),

                            // Restore
                            Center(
                              child: TextButton(
                                onPressed: state.isLoading
                                    ? null
                                    : () {
                                  context.read<PremiumBloc>().add(RestorePurchases());
                                },
                                style: TextButton.styleFrom(
                                  foregroundColor: isDark
                                      ? Colors.white70
                                      : AppColors.textSecondaryLight,
                                ),
                                child: Text(
                                  l10n.restorePurchases,
                                  style: GoogleFonts.inter(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(height: 4),

                            // Legal
                            _LegalText(
                              isDark: isDark,
                              l10n: l10n,
                              selectedPlan: _selectedPlan,
                            ),

                            const SizedBox(height: 48),
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
  const _BackgroundGlow({required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Stack(
        children: [
          Positioned(
            top: -140,
            left: -90,
            child: Container(
              width: 380,
              height: 380,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppColors.primary.withValues(alpha: isDark ? 0.22 : 0.12),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 220,
            right: -160,
            child: Container(
              width: 340,
              height: 340,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppColors.accent.withValues(alpha: isDark ? 0.09 : 0.05),
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
      padding: const EdgeInsets.fromLTRB(12, 8, 18, 0),
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
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
              decoration: BoxDecoration(
                color: AppColors.success.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(999),
                border: Border.all(
                  color: AppColors.success.withValues(alpha: 0.18),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Iconsax.tick_circle5, size: 14, color: AppColors.success),
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
            color: isDark ? Colors.white.withValues(alpha: 0.06) : Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: isDark
                  ? Colors.white.withValues(alpha: 0.08)
                  : Colors.black.withValues(alpha: 0.05),
            ),
            boxShadow: isDark
                ? null
                : [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.04),
                blurRadius: 16,
                offset: const Offset(0, 6),
              ),
            ],
          ),
          child: Icon(
            icon,
            size: 19,
            color: isDark ? Colors.white : AppColors.textPrimaryLight,
          ),
        ),
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// HERO with APP LOGO
// -----------------------------------------------------------------------------

class _HeroHeader extends StatelessWidget {
  const _HeroHeader({
    required this.l10n,
    required this.isDark,
  });

  final AppLocalizations l10n;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 12, 24, 0),
      child: Column(
        children: [
          // Logo
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 128,
                height: 128,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary.withValues(alpha: isDark ? 0.08 : 0.06),
                ),
              ),
              Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withValues(alpha: 0.28),
                      blurRadius: 28,
                      spreadRadius: -4,
                      offset: const Offset(0, 12),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(28),
                  child: Image.asset(
                    'assets/images/app_icon.png',
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFF0F9D8E), Color(0xFF0EA5E9)],
                        ),
                      ),
                      child: const Icon(Iconsax.crown_15, size: 42, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          )
              .animate()
              .scale(duration: 600.ms, curve: Curves.easeOutBack)
              .fadeIn(),

          const SizedBox(height: 22),

          Text(
            l10n.premiumTitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 30,
              height: 1.1,
              fontWeight: FontWeight.w900,
              letterSpacing: -1.1,
              color: isDark ? Colors.white : AppColors.textPrimaryLight,
            ),
          )
              .animate()
              .fadeIn(delay: 80.ms)
              .slideY(begin: 0.1, end: 0),

          const SizedBox(height: 10),

          Text(
            l10n.premiumSubtitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 14.5,
              height: 1.5,
              fontWeight: FontWeight.w500,
              color: isDark
                  ? AppColors.textSecondaryDark
                  : AppColors.textSecondaryLight,
            ),
          ).animate().fadeIn(delay: 140.ms),

          const SizedBox(height: 16),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: isDark ? 0.12 : 0.08),
              borderRadius: BorderRadius.circular(999),
              border: Border.all(
                color: AppColors.primary.withValues(alpha: 0.15),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Iconsax.flash_15, size: 14, color: AppColors.primary),
                const SizedBox(width: 6),
                Text(
                  l10n.oneMembership,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ).animate().fadeIn(delay: 200.ms),
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
            letterSpacing: -0.4,
            color: isDark ? Colors.white : AppColors.textPrimaryLight,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: GoogleFonts.inter(
            fontSize: 12.5,
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
    required this.l10n,
  });

  final bool isDark;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final features = [
      _FeatureData(Iconsax.task_square, l10n.featureTasks, l10n.featureTasksSubtitle),
      _FeatureData(Iconsax.chart_2, l10n.featureStats, l10n.featureStatsSubtitle),
      _FeatureData(Iconsax.message_text, l10n.featureMotivation, l10n.featureMotivationSubtitle),
      _FeatureData(Iconsax.heart_circle, l10n.featureSupport, l10n.featureSupportSubtitle),
      _FeatureData(Iconsax.notification, l10n.featureNotifications, l10n.featureNotificationsSubtitle),
      _FeatureData(Iconsax.slash, l10n.featureAds, l10n.featureAdsSubtitle),
    ];

    return Column(
      children: [
        for (int i = 0; i < features.length; i += 2)
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _FeatureCard(data: features[i], isDark: isDark)),
                const SizedBox(width: 10),
                Expanded(child: _FeatureCard(data: features[i + 1], isDark: isDark)),
              ],
            ),
          ),
      ],
    );
  }
}

class _FeatureData {
  const _FeatureData(this.icon, this.title, this.subtitle);
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
      constraints: const BoxConstraints(minHeight: 122),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: isDark ? Colors.white.withValues(alpha: 0.04) : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isDark
              ? Colors.white.withValues(alpha: 0.06)
              : Colors.black.withValues(alpha: 0.045),
        ),
        boxShadow: isDark
            ? null
            : [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: isDark ? 0.14 : 0.09),
              borderRadius: BorderRadius.circular(11),
            ),
            child: Icon(data.icon, size: 17, color: AppColors.primary),
          ),
          const SizedBox(height: 11),
          Text(
            data.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.inter(
              fontSize: 12.5,
              height: 1.2,
              fontWeight: FontWeight.w800,
              color: isDark ? Colors.white : AppColors.textPrimaryLight,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            data.subtitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.inter(
              fontSize: 10.5,
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
    required this.l10n,
    required this.onTap,
  });

  final PremiumPlan plan;
  final bool selected;
  final bool isDark;
  final AppLocalizations l10n;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final isYearly = plan == PremiumPlan.yearly;
    final isLifetime = plan == PremiumPlan.lifetime;

    final title = switch (plan) {
      PremiumPlan.monthly => l10n.planMonthly,
      PremiumPlan.yearly => l10n.planYearly,
      PremiumPlan.lifetime => l10n.planLifetime,
    };

    final subtitle = switch (plan) {
      PremiumPlan.monthly => l10n.planMonthlySubtitle,
      PremiumPlan.yearly => l10n.planYearlySubtitle,
      PremiumPlan.lifetime => l10n.planLifetimeSubtitle,
    };

    final price = switch (plan) {
      PremiumPlan.monthly => '€4.99',
      PremiumPlan.yearly => '€29.99',
      PremiumPlan.lifetime => '€59.99',
    };

    final period = switch (plan) {
      PremiumPlan.monthly => l10n.perMonth,
      PremiumPlan.yearly => l10n.perYear,
      PremiumPlan.lifetime => '',
    };

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(22),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 240),
          curve: Curves.easeOutCubic,
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: selected
                ? LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: isLifetime
                  ? const [Color(0xFF2A1F4E), Color(0xFF15102D)]
                  : [
                AppColors.primary.withValues(alpha: isDark ? 0.20 : 0.12),
                isDark ? const Color(0xFF0E1C1B) : Colors.white,
              ],
            )
                : null,
            color: selected
                ? null
                : isDark
                ? Colors.white.withValues(alpha: 0.04)
                : Colors.white,
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              width: selected ? 1.6 : 1,
              color: selected
                  ? (isLifetime ? AppColors.accent : AppColors.primary)
                  : isDark
                  ? Colors.white.withValues(alpha: 0.07)
                  : Colors.black.withValues(alpha: 0.05),
            ),
            boxShadow: selected
                ? [
              BoxShadow(
                color: (isLifetime ? AppColors.accent : AppColors.primary)
                    .withValues(alpha: 0.16),
                blurRadius: 22,
                spreadRadius: -4,
                offset: const Offset(0, 8),
              ),
            ]
                : null,
          ),
          child: Row(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 240),
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: selected
                      ? (isLifetime ? AppColors.accent : AppColors.primary)
                      : isDark
                      ? Colors.white.withValues(alpha: 0.06)
                      : Colors.black.withValues(alpha: 0.04),
                ),
                child: selected
                    ? const Icon(Icons.check_rounded, size: 20, color: Colors.white)
                    : Icon(
                  isLifetime ? Iconsax.crown : Iconsax.calendar_1,
                  size: 18,
                  color: isDark ? Colors.white60 : AppColors.textSecondaryLight,
                ),
              ),
              const SizedBox(width: 12),
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
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: isDark ? Colors.white : AppColors.textPrimaryLight,
                            ),
                          ),
                        ),
                        if (isYearly) ...[
                          const SizedBox(width: 8),
                          _PlanBadge(text: l10n.bestValue),
                        ],
                        if (isLifetime) ...[
                          const SizedBox(width: 8),
                          _PlanBadge(text: l10n.oneTime, color: AppColors.accent),
                        ],
                      ],
                    ),
                    const SizedBox(height: 3),
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
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price,
                    style: GoogleFonts.outfit(
                      fontSize: 19,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.4,
                      color: selected
                          ? (isLifetime ? AppColors.accent : AppColors.primary)
                          : isDark
                          ? Colors.white
                          : AppColors.textPrimaryLight,
                    ),
                  ),
                  if (period.isNotEmpty)
                    Text(
                      period,
                      style: GoogleFonts.inter(
                        fontSize: 10,
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
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3.5),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: GoogleFonts.inter(
          fontSize: 8.5,
          fontWeight: FontWeight.w900,
          letterSpacing: 0.4,
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
    required this.l10n,
    required this.onPressed,
  });

  final PremiumPlan plan;
  final bool isDark;
  final bool isLoading;
  final AppLocalizations l10n;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isLifetime = plan == PremiumPlan.lifetime;

    final buttonText = switch (plan) {
      PremiumPlan.monthly => l10n.buyMonthly,
      PremiumPlan.yearly => l10n.buyYearly,
      PremiumPlan.lifetime => l10n.buyLifetime,
    };

    final gradient = isLifetime
        ? const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xFF7B6CDB), Color(0xFF9B8FF0)],
    )
        : const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xFF0F9D8E), Color(0xFF3BC4B5)],
    );

    final shadowColor = isLifetime ? AppColors.accent : AppColors.primary;

    return SizedBox(
      width: double.infinity,
      height: 58,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(18),
          child: Ink(
            decoration: BoxDecoration(
              gradient: onPressed == null ? null : gradient,
              color: onPressed == null
                  ? (isDark
                  ? Colors.white.withValues(alpha: 0.08)
                  : Colors.black.withValues(alpha: 0.06))
                  : null,
              borderRadius: BorderRadius.circular(18),
              boxShadow: onPressed == null
                  ? null
                  : [
                BoxShadow(
                  color: shadowColor.withValues(alpha: 0.25),
                  blurRadius: 22,
                  spreadRadius: -5,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Center(
              child: isLoading
                  ? const SizedBox(
                width: 22,
                height: 22,
                child: CircularProgressIndicator(
                  strokeWidth: 2.4,
                  color: Colors.white,
                ),
              )
                  : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    isLifetime ? Iconsax.crown_15 : Iconsax.flash_15,
                    size: 18,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    buttonText,
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
    required this.l10n,
    required this.isPremium,
  });

  final bool isDark;
  final AppLocalizations l10n;
  final bool isPremium;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.success.withValues(alpha: isDark ? 0.10 : 0.07),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.success.withValues(alpha: 0.18),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: AppColors.success.withValues(alpha: 0.13),
              shape: BoxShape.circle,
            ),
            child: const Icon(Iconsax.tick_circle5, color: AppColors.success, size: 19),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              isPremium ? l10n.premiumActive : l10n.trialActive,
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
    required this.l10n,
  });

  final bool isDark;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final items = [
      (Iconsax.shield_tick, l10n.securePurchase),
      (Iconsax.refresh, l10n.cancelAnytime),
      (Iconsax.cloud_change, l10n.restoreAnytime),
    ];

    return Row(
      children: [
        for (int i = 0; i < items.length; i++) ...[
          Expanded(
            child: Column(
              children: [
                Icon(
                  items[i].$1,
                  size: 17,
                  color: isDark ? Colors.white38 : Colors.black38,
                ),
                const SizedBox(height: 5),
                Text(
                  items[i].$2,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    fontSize: 9.5,
                    height: 1.25,
                    fontWeight: FontWeight.w600,
                    color: isDark ? Colors.white38 : Colors.black45,
                  ),
                ),
              ],
            ),
          ),
          if (i < items.length - 1)
            Container(
              width: 1,
              height: 32,
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
    required this.l10n,
    required this.selectedPlan,
  });

  final bool isDark;
  final AppLocalizations l10n;
  final PremiumPlan selectedPlan;

  @override
  Widget build(BuildContext context) {
    final text = switch (selectedPlan) {
      PremiumPlan.monthly => l10n.legalMonthly,
      PremiumPlan.yearly => l10n.legalYearly,
      PremiumPlan.lifetime => l10n.legalLifetime,
    };

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Text(
        text,
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
