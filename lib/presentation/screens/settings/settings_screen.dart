import 'dart:ui' as ui;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/theme/theme_controller.dart';
import '../../../data/bloc/auth/auth_bloc.dart';
import '../../../data/bloc/auth/auth_event.dart';
import '../../../data/bloc/premium/premium_bloc.dart';
import '../../../data/bloc/premium/premium_state.dart';
import '../../../data/bloc/progress/progress_bloc.dart';
import '../../../data/bloc/progress/progress_event.dart';
import '../../../l10n/app_localizations.dart';
import '../../widgets/notification_tile.dart';
import '../auth/auth_screen.dart';
import '../premium/premium_screen.dart';
import '../profile/profile_edit_screen.dart';
import 'language_tile.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
        backgroundColor:
        isDark ? AppColors.backgroundDark : AppColors.backgroundLight,
        body: Stack(
            children: [
        Positioned.fill(child: _AmbientBackground(isDark: isDark)),
    SafeArea(
    bottom: false,
    child: CustomScrollView(
    physics: const BouncingScrollPhysics(
    parent: AlwaysScrollableScrollPhysics(),
    ),
    slivers: [
    // ─── HEADER ───────────────────────────────────────────────
    SliverToBoxAdapter(
    child: _TopBar(isDark: isDark, l10n: l10n)
        .animate()
        .fadeIn(duration: 450.ms)
        .slideY(
    begin: -0.06,
    end: 0,
    curve: Curves.easeOutCubic,
    ),
    ),

    // ─── CONTENT ──────────────────────────────────────────────
    SliverPadding(
    padding: const EdgeInsets.fromLTRB(18, 20, 18, 120),
    sliver: SliverList(
    delegate: SliverChildListDelegate(
    [
    // PROFILE
    const _ProfileCard()
        .animate()
        .fadeIn(delay: 50.ms, duration: 500.ms)
        .slideY(
    begin: 0.05,
    end: 0,
    delay: 50.ms,
    duration: 500.ms,
    curve: Curves.easeOutCubic,
    ),

    const SizedBox(height: 26),

    // PREMIUM
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

    const SizedBox(height: 30),

    // APP SECTION
    _SectionHeader(
    title: l10n.sectionApp,
    subtitle: '',
    isDark: isDark,
    ),

    const SizedBox(height: 13),

    _SettingsGroup(
    isDark: isDark,
    children: const [
    _ThemeTile(),
    LanguageTile(),
    NotificationTile(),
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

    const SizedBox(height: 28),

    // DATA SECTION
    _SectionHeader(
    title: l10n.sectionData,
    subtitle: '',
    isDark: isDark,
    ),

    const SizedBox(height: 13),

    _SettingsGroup(
    isDark: isDark,
    children: [
    _SettingsTile(
    icon: Icons.refresh_rounded,
    title: l10n.resetProgress,
    subtitle: l10n.resetProgressSubtitle,
    gradient: AppColors.sosGradient,
    isDark: isDark,
    showDivider: false,
    onTap: () => _showResetDialog(context),
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

    const SizedBox(height: 28),

    // ABOUT SECTION
    _SectionHeader(
    title: l10n.sectionAbout,
    subtitle: '',
    isDark: isDark,
    ),

    const SizedBox(height: 13),

    _SettingsGroup(
    isDark: isDark,
    children: [
    _SettingsTile(
    icon: Icons.phone_iphone_rounded,
    title: l10n.version,
    subtitle: '1.0.0',
    gradient: AppColors.levelGradient,
    isDark: isDark,
    ),
    _SettingsTile(
    icon: Icons.description_rounded,
    title: l10n.privacy,
    gradient: AppColors.levelGradient,
    isDark: isDark,
    ),
    _SettingsTile(
    icon: Icons.article_rounded,
    title: l10n.terms,
    gradient: AppColors.levelGradient,
    isDark: isDark,
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

    const SizedBox(height: 26),

    // DISCLAIMER
    const _DisclaimerCard()
        .animate()
        .fadeIn(delay: 340.ms, duration: 500.ms)
        .slideY(
    begin: 0.04,
    end: 0,
    delay: 340.ms,
    duration: 500.ms,
    ),

    const SizedBox(height: 28),

    // FOOTER
    const _Footer(),

    const SizedBox(height: 24),

    // SWITCH ACCOUNT
    const _SwitchAccountButton()
        .animate()
        .fadeIn(delay: 390.ms, duration: 500.ms)
        .slideY(
    begin: 0.04,
    end: 0,
    delay: 390.ms,
    duration: 500.ms,
    curve: Curves.easeOutCubic,
    ),

    const SizedBox(height: 12),

    // LOGOUT
    const _LogoutButton()
        .animate()
        .fadeIn(delay: 430.ms, duration: 500.ms)
        .slideY(
    begin: 0.04,
    end: 0,
    delay: 430.ms,
    duration: 500.ms,
    curve: Curves.easeOutCubic,
    ),

    // один отступ внизу (дубль убран)
    const SizedBox(height: 36),
    ],
    ),
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    );
  }

  void _showResetDialog(BuildContext context) {
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

// ═══════════════════════════════════════════════════════════════════════════
// AMBIENT BACKGROUND (как в ProgressScreen)
// ═══════════════════════════════════════════════════════════════════════════

class _AmbientBackground extends StatelessWidget {
  const _AmbientBackground({required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final alpha1 = isDark ? 0.22 : 0.13;
    final alpha2 = isDark ? 0.16 : 0.10;
    final alpha3 = isDark ? 0.14 : 0.09;

    return ClipRect(
      child: Stack(
        children: [
          Positioned(
            top: -70,
            left: -60,
            child: _Blob(
              size: 220,
              color: AppColors.blobOrange.withValues(alpha: alpha1),
            ),
          ),
          Positioned(
            top: 220,
            right: -90,
            child: _Blob(
              size: 250,
              color: AppColors.blobPink.withValues(alpha: alpha2),
            ),
          ),
          Positioned(
            bottom: -60,
            left: -40,
            child: _Blob(
              size: 200,
              color: AppColors.blobAmber.withValues(alpha: alpha3),
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
// TOP BAR
// ═══════════════════════════════════════════════════════════════════════════

class _TopBar extends StatelessWidget {
  const _TopBar({required this.isDark, required this.l10n});

  final bool isDark;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final secondaryText =
    isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight;

    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 14, 18, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                ShaderMask(
                  shaderCallback: (rect) => const LinearGradient(
                    colors: AppColors.levelGradient,
                  ).createShader(rect),
                  blendMode: BlendMode.srcIn,
                  child: Text(
                    l10n.settings,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.outfit(
                      fontSize: 28,
                      height: 1,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -1.15,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  l10n.settingsSubtitle,
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
          const SizedBox(width: 12),
          _HeaderBadge(isDark: isDark),
        ],
      ),
    );
  }
}

class _HeaderBadge extends StatelessWidget {
  const _HeaderBadge({required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primary.withValues(alpha: isDark ? 0.22 : 0.14),
            AppColors.orange.withValues(alpha: isDark ? 0.14 : 0.09),
          ],
        ),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: isDark ? 0.22 : 0.14),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: isDark ? 0.18 : 0.10),
            blurRadius: 18,
            spreadRadius: -4,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Icon(
        Icons.settings_rounded,
        size: 20,
        color: isDark ? AppColors.primaryLight : AppColors.primary,
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// SECTION HEADER (как в Progress)
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
    final primaryText =
    isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight;
    final secondaryText =
    isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 14,
              height: 3,
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: AppColors.levelGradient),
                borderRadius: BorderRadius.circular(999),
              ),
            ),
            const SizedBox(width: 7),
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
          ],
        ),
        if (subtitle.isNotEmpty) ...[
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
      ],
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// ICON WELL (градиентный бейдж со свечением)
// ═══════════════════════════════════════════════════════════════════════════

class _IconWell extends StatelessWidget {
  const _IconWell({
    required this.icon,
    required this.gradient,
    required this.size,
    required this.iconSize,
  });

  final IconData icon;
  final List<Color> gradient;
  final double size;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: gradient,
          ),
          borderRadius: BorderRadius.circular(size * 0.32),
          boxShadow: [
            BoxShadow(
              color: gradient.first.withValues(alpha: 0.35),
              blurRadius: size * 0.28,
              offset: Offset(0, size * 0.1),
            ),
          ],
        ),
        child: Center(
          child: Icon(icon, size: iconSize, color: Colors.white),
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// PROFILE CARD
// ═══════════════════════════════════════════════════════════════════════════

class _ProfileCard extends StatefulWidget {
  const _ProfileCard();

  @override
  State<_ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<_ProfileCard> {
  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final user = FirebaseAuth.instance.currentUser;

    final displayName = user?.displayName?.trim();
    final name = (displayName != null && displayName.isNotEmpty)
        ? displayName
        : 'Ваш профиль';
    final email = user?.email ?? '';
    final photoUrl = user?.photoURL;

    final primaryText =
    isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight;
    final secondaryText =
    isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () async {
          final result = await Navigator.of(context).push<bool>(
            MaterialPageRoute(builder: (_) => const ProfileEditScreen()),
          );
          if (!mounted) return;
          setState(() {}); // обновляем после редактирования
        },
        borderRadius: BorderRadius.circular(24),
        splashColor: AppColors.primary.withValues(alpha: 0.08),
        highlightColor: AppColors.primary.withValues(alpha: 0.04),
        child: Ink(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: isDark ? AppColors.cardDark : AppColors.cardLight,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: AppColors.primary.withValues(alpha: isDark ? 0.18 : 0.12),
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withValues(alpha: isDark ? 0.14 : 0.07),
                blurRadius: 22,
                spreadRadius: -4,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Row(
            children: [
              // Avatar with gradient ring
              Container(
                width: 62,
                height: 62,
                padding: const EdgeInsets.all(2.5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    colors: AppColors.levelGradient,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withValues(alpha: 0.28),
                      blurRadius: 14,
                      spreadRadius: -3,
                    ),
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor:
                  isDark ? AppColors.cardDark : AppColors.cardLight,
                  backgroundImage:
                  (photoUrl != null && photoUrl.isNotEmpty)
                      ? NetworkImage(photoUrl)
                      : null,
                  child: (photoUrl == null || photoUrl.isEmpty)
                      ? Icon(
                    Icons.person_rounded,
                    color: AppColors.primary,
                    size: 28,
                  )
                      : null,
                ),
              ),

              const SizedBox(width: 14),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.outfit(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: primaryText,
                      ),
                    ),
                    if (email.isNotEmpty) ...[
                      const SizedBox(height: 4),
                      Text(
                        email,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.inter(
                          fontSize: 11.5,
                          fontWeight: FontWeight.w500,
                          color: secondaryText,
                        ),
                      ),
                    ],
                    const SizedBox(height: 6),
                    Text(
                      'Редактировать профиль',
                      style: GoogleFonts.inter(
                        fontSize: 11.5,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 8),

              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 14,
                color: secondaryText.withValues(alpha: 0.55),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// PREMIUM CARD
// ═══════════════════════════════════════════════════════════════════════════

class _PremiumCard extends StatelessWidget {
  const _PremiumCard({required this.state});

  final PremiumState state;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = AppLocalizations.of(context)!;
    final active = state.hasAccess;

    final primaryText =
    isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight;
    final secondaryText =
    isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => const PremiumScreen()),
          );
        },
        borderRadius: BorderRadius.circular(28),
        splashColor: AppColors.primary.withValues(alpha: 0.08),
        highlightColor: AppColors.primary.withValues(alpha: 0.04),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: isDark
                  ? const [
                Color(0xFF17162B),
                Color(0xFF1F1B3A),
              ]
                  : const [
                Color(0xFFF3EFFE),
                Color(0xFFE9F8F5),
              ],
            ),
            border: Border.all(
              color: AppColors.primary.withValues(alpha: isDark ? 0.22 : 0.14),
              width: 1.2,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.primary.withValues(alpha: isDark ? 0.18 : 0.10),
                blurRadius: 32,
                spreadRadius: -6,
                offset: const Offset(0, 14),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(28),
            child: Stack(
              children: [
                // ambient glow
                Positioned(
                  top: -50,
                  right: -30,
                  child: ImageFiltered(
                    imageFilter:
                    ui.ImageFilter.blur(sigmaX: 36, sigmaY: 36),
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.orange
                            .withValues(alpha: isDark ? 0.18 : 0.14),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Row(
                    children: [
                      _IconWell(
                        icon: active
                            ? Icons.workspace_premium_rounded
                            : Icons.diamond_rounded,
                        gradient: AppColors.premiumGradient,
                        size: 48,
                        iconSize: 22,
                      ),
                      const SizedBox(width: 14),
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
                                      fontSize: 17,
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: -0.4,
                                      color: primaryText,
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
                                          .withValues(alpha: 0.14),
                                      borderRadius: BorderRadius.circular(999),
                                      border: Border.all(
                                        color: AppColors.success
                                            .withValues(alpha: 0.22),
                                      ),
                                    ),
                                    child: Text(
                                      l10n.premiumActiveBadge,
                                      style: GoogleFonts.inter(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 0.6,
                                        color: AppColors.success,
                                      ),
                                    ),
                                  ),
                                ],
                              ],
                            ),
                            const SizedBox(height: 5),
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
                                height: 1.35,
                                fontWeight: FontWeight.w500,
                                color: secondaryText,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 14,
                        color: secondaryText.withValues(alpha: 0.55),
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

// ═══════════════════════════════════════════════════════════════════════════
// SETTINGS GROUP
// ═══════════════════════════════════════════════════════════════════════════

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
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
        borderRadius: BorderRadius.circular(23),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: isDark ? 0.14 : 0.09),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: isDark ? 0.12 : 0.06),
            blurRadius: 18,
            spreadRadius: -3,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(children: children),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// SETTINGS TILE
// ═══════════════════════════════════════════════════════════════════════════

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({
    required this.icon,
    required this.title,
    required this.gradient,
    required this.isDark,
    this.subtitle,
    this.showDivider = true,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final List<Color> gradient;
  final bool isDark;
  final bool showDivider;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final primaryText =
    isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight;
    final secondaryText =
    isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        splashColor: gradient.first.withValues(alpha: 0.08),
        highlightColor: gradient.first.withValues(alpha: 0.03),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 13, 14, 13),
              child: Row(
                children: [
                  _IconWell(
                    icon: icon,
                    gradient: gradient,
                    size: 40,
                    iconSize: 18,
                  ),
                  const SizedBox(width: 13),
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
                            color: primaryText,
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
                              color: secondaryText,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 13,
                    color: secondaryText.withValues(alpha: 0.45),
                  ),
                ],
              ),
            ),
            if (showDivider)
              Padding(
                padding: const EdgeInsets.only(left: 68),
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

// ═══════════════════════════════════════════════════════════════════════════
// THEME TILE
// ═══════════════════════════════════════════════════════════════════════════

class _ThemeTile extends StatelessWidget {
  const _ThemeTile();

  @override
  Widget build(BuildContext context) {
    final controller = _findThemeController(context);
    final l10n = AppLocalizations.of(context)!;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        return _SettingsTile(
          icon: _themeIcon(controller.mode),
          title: l10n.theme,
          subtitle: controller.themeLabel,
          gradient: AppColors.levelGradient,
          isDark: isDark,
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
        'ThemeController not found. '
            'ThemeControllerScope must be above MaterialApp.',
      );
    }
    return inherited.controller;
  }
}

IconData _themeIcon(AppThemeMode mode) {
  switch (mode) {
    case AppThemeMode.system:
      return Icons.monitor_rounded;
    case AppThemeMode.light:
      return Icons.wb_sunny_rounded;
    case AppThemeMode.dark:
      return Icons.dark_mode_rounded;
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
                icon: Icons.monitor_rounded,
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
                icon: Icons.wb_sunny_rounded,
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
                icon: Icons.dark_mode_rounded,
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
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(19),
        splashColor: AppColors.primary.withValues(alpha: 0.08),
        highlightColor: AppColors.primary.withValues(alpha: 0.03),
        child: Ink(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: selected
                ? AppColors.primary.withValues(alpha: isDark ? 0.14 : 0.07)
                : (isDark
                ? Colors.white.withValues(alpha: 0.025)
                : Colors.black.withValues(alpha: 0.018)),
            borderRadius: BorderRadius.circular(19),
            border: Border.all(
              color: selected
                  ? AppColors.primary.withValues(alpha: 0.30)
                  : (isDark
                  ? Colors.white.withValues(alpha: 0.045)
                  : Colors.black.withValues(alpha: 0.04)),
            ),
          ),
          child: Row(
            children: [
              _IconWell(
                icon: icon,
                gradient: AppColors.levelGradient,
                size: 42,
                iconSize: 18,
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
                  gradient: selected
                      ? const LinearGradient(colors: AppColors.levelGradient)
                      : null,
                  border: selected
                      ? null
                      : Border.all(
                    width: 1.4,
                    color: isDark
                        ? Colors.white.withValues(alpha: 0.15)
                        : Colors.black.withValues(alpha: 0.11),
                  ),
                ),
                child: selected
                    ? const Icon(Icons.check_rounded, size: 15, color: Colors.white)
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// SWITCH ACCOUNT BUTTON
// ═══════════════════════════════════════════════════════════════════════════

class _SwitchAccountButton extends StatelessWidget {
  const _SwitchAccountButton();

  Future<void> _openAuthScreen(BuildContext context) async {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final confirmed = await showDialog<bool>(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.black.withValues(alpha: 0.55),
      builder: (dialogContext) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            padding: const EdgeInsets.fromLTRB(22, 22, 22, 18),
            decoration: BoxDecoration(
              color: isDark ? AppColors.surfaceDark : AppColors.surfaceLight,
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
                _IconWell(
                  icon: Icons.people_alt_rounded,
                  gradient: AppColors.levelGradient,
                  size: 56,
                  iconSize: 24,
                ),
                const SizedBox(height: 18),
                Text(
                  'Войти в другой аккаунт?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.outfit(
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.45,
                    color: isDark
                        ? AppColors.textPrimaryDark
                        : AppColors.textPrimaryLight,
                  ),
                ),
                const SizedBox(height: 9),
                Text(
                  'Откроется страница входа, где ты '
                      'сможешь войти в другой аккаунт.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 12.5,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                    color: isDark
                        ? AppColors.textSecondaryDark
                        : AppColors.textSecondaryLight,
                  ),
                ),
                const SizedBox(height: 22),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 49,
                        child: OutlinedButton(
                          onPressed: () =>
                              Navigator.of(dialogContext).pop(false),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: isDark
                                ? AppColors.textPrimaryDark
                                : AppColors.textPrimaryLight,
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
                            'Отмена',
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
                          onPressed: () =>
                              Navigator.of(dialogContext).pop(true),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text(
                            'Продолжить',
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
          ),
        );
      },
    );

    if (confirmed != true || !context.mounted) return;

    await Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const AuthScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final primaryText =
    isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight;
    final secondaryText =
    isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight;

    return SizedBox(
      width: double.infinity,
      height: 66,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => _openAuthScreen(context),
          borderRadius: BorderRadius.circular(20),
          splashColor: AppColors.primary.withValues(alpha: 0.07),
          highlightColor: AppColors.primary.withValues(alpha: 0.03),
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: isDark
                    ? [
                  Colors.white.withValues(alpha: 0.045),
                  AppColors.primary.withValues(alpha: 0.025),
                ]
                    : [
                  Colors.white,
                  AppColors.primary.withValues(alpha: 0.025),
                ],
              ),
              border: Border.all(
                color: isDark
                    ? Colors.white.withValues(alpha: 0.065)
                    : AppColors.primary.withValues(alpha: 0.075),
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary
                      .withValues(alpha: isDark ? 0.075 : 0.035),
                  blurRadius: 26,
                  spreadRadius: -8,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  _IconWell(
                    icon: Icons.people_alt_rounded,
                    gradient: AppColors.levelGradient,
                    size: 42,
                    iconSize: 19,
                  ),
                  const SizedBox(width: 13),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Войти в другой аккаунт',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.inter(
                            fontSize: 13.5,
                            fontWeight: FontWeight.w700,
                            color: primaryText,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          'Открыть страницу входа',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.inter(
                            fontSize: 10.5,
                            fontWeight: FontWeight.w500,
                            color: secondaryText,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primary
                          .withValues(alpha: isDark ? 0.075 : 0.045),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 13,
                      color: isDark ? AppColors.primaryLight : AppColors.primary,
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

// ═══════════════════════════════════════════════════════════════════════════
// LOGOUT BUTTON
// ═══════════════════════════════════════════════════════════════════════════

class _LogoutButton extends StatelessWidget {
  const _LogoutButton();

  Future<void> _logout(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.black.withValues(alpha: 0.55),
      builder: (dialogContext) {
        final isDark =
            Theme.of(dialogContext).brightness == Brightness.dark;

        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            padding: const EdgeInsets.fromLTRB(22, 22, 22, 18),
            decoration: BoxDecoration(
              color: isDark ? AppColors.surfaceDark : AppColors.surfaceLight,
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
                _IconWell(
                  icon: Icons.logout_rounded,
                  gradient: AppColors.sosGradient,
                  size: 56,
                  iconSize: 24,
                ),
                const SizedBox(height: 18),
                Text(
                  'Выйти из аккаунта?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.outfit(
                    fontSize: 21,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.45,
                    color: isDark
                        ? AppColors.textPrimaryDark
                        : AppColors.textPrimaryLight,
                  ),
                ),
                const SizedBox(height: 9),
                Text(
                  'Вы действительно хотите выйти из своего аккаунта?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 12.5,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                    color: isDark
                        ? AppColors.textSecondaryDark
                        : AppColors.textSecondaryLight,
                  ),
                ),
                const SizedBox(height: 22),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 49,
                        child: OutlinedButton(
                          onPressed: () =>
                              Navigator.of(dialogContext).pop(false),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: isDark
                                ? AppColors.textPrimaryDark
                                : AppColors.textPrimaryLight,
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
                            'Отмена',
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
                          onPressed: () =>
                              Navigator.of(dialogContext).pop(true),
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
                            'Выйти',
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
          ),
        );
      },
    );

    if (confirmed != true || !context.mounted) return;

    context.read<AuthBloc>().add(AuthSignOutRequested());
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return SizedBox(
      width: double.infinity,
      height: 54,
      child: OutlinedButton.icon(
        onPressed: () => _logout(context),
        icon: const Icon(Icons.logout_rounded, size: 19),
        label: Text(
          'Выйти из аккаунта',
          style: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.error,
          side: BorderSide(
            color: AppColors.error.withValues(alpha: 0.35),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// DISCLAIMER
// ═══════════════════════════════════════════════════════════════════════════

class _DisclaimerCard extends StatelessWidget {
  const _DisclaimerCard();

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final l10n = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.all(16),
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
          _IconWell(
            icon: Icons.info_rounded,
            gradient: AppColors.levelGradient,
            size: 36,
            iconSize: 17,
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

// ═══════════════════════════════════════════════════════════════════════════
// RESET DIALOG
// ═══════════════════════════════════════════════════════════════════════════

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

    return Container(
      padding: const EdgeInsets.fromLTRB(22, 22, 22, 18),
      decoration: BoxDecoration(
        color: isDark ? AppColors.surfaceDark : AppColors.surfaceLight,
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
          _IconWell(
            icon: Icons.refresh_rounded,
            gradient: AppColors.sosGradient,
            size: 56,
            iconSize: 24,
          ),
          const SizedBox(height: 18),
          Text(
            l10n.resetProgressTitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.outfit(
              fontSize: 21,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.45,
              color: isDark
                  ? AppColors.textPrimaryDark
                  : AppColors.textPrimaryLight,
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
              color: isDark
                  ? AppColors.textSecondaryDark
                  : AppColors.textSecondaryLight,
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
                      foregroundColor: isDark
                          ? AppColors.textPrimaryDark
                          : AppColors.textPrimaryLight,
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

// ═══════════════════════════════════════════════════════════════════════════
// FOOTER
// ═══════════════════════════════════════════════════════════════════════════

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
            gradient: const LinearGradient(colors: AppColors.levelGradient),
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