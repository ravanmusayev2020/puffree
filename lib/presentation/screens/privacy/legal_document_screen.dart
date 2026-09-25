import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/theme/app_theme.dart';

/// One section of a legal document (e.g. "Data We Collect").
class LegalSection {
  const LegalSection({
    required this.icon,
    required this.title,
    required this.body,
  });

  final IconData icon;
  final String title;
  final String body;
}

/// Reusable scaffold for Privacy Policy / Terms of Use screens.
/// Mirrors SettingsScreen's visual language: ambient blurred blobs,
/// gradient header text, and glowing icon-well cards.
class LegalDocumentScreen extends StatelessWidget {
  const LegalDocumentScreen({
    super.key,
    required this.title,
    required this.lastUpdated,
    required this.intro,
    required this.sections,
    this.headerIcon = Icons.description_rounded,
    this.contactEmail,
  });

  final String title;
  final String lastUpdated;
  final String intro;
  final List<LegalSection> sections;
  final IconData headerIcon;
  final String? contactEmail;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

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
                SliverToBoxAdapter(
                  child: _LegalTopBar(
                    title: title,
                    lastUpdated: lastUpdated,
                    icon: headerIcon,
                    isDark: isDark,
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.fromLTRB(18, 22, 18, 48),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      _LegalIntroCard(text: intro, isDark: isDark),
                      const SizedBox(height: 22),
                      for (var i = 0; i < sections.length; i++) ...[
                        _LegalSectionCard(
                          index: i + 1,
                          section: sections[i],
                          isDark: isDark,
                        ),
                        const SizedBox(height: 14),
                      ],
                      if (contactEmail != null) ...[
                        const SizedBox(height: 8),
                        _LegalContactCard(
                          email: contactEmail!,
                          isDark: isDark,
                        ),
                      ],
                    ]),
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
// AMBIENT BACKGROUND
// ═══════════════════════════════════════════════════════════════════════════

class _AmbientBackground extends StatelessWidget {
  const _AmbientBackground({required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final alpha1 = isDark ? 0.20 : 0.12;
    final alpha2 = isDark ? 0.15 : 0.09;

    return ClipRect(
      child: Stack(
        children: [
          Positioned(
            top: -70,
            right: -60,
            child: _Blob(
              size: 220,
              color: AppColors.blobOrange.withValues(alpha: alpha1),
            ),
          ),
          Positioned(
            bottom: 60,
            left: -80,
            child: _Blob(
              size: 230,
              color: AppColors.blobPink.withValues(alpha: alpha2),
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
          decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        ),
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
// TOP BAR
// ═══════════════════════════════════════════════════════════════════════════

class _LegalTopBar extends StatelessWidget {
  const _LegalTopBar({
    required this.title,
    required this.lastUpdated,
    required this.icon,
    required this.isDark,
  });

  final String title;
  final String lastUpdated;
  final IconData icon;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final secondaryText =
    isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight;

    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 18, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _BackButton(isDark: isDark),
          const SizedBox(width: 6),
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
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.outfit(
                      fontSize: 24,
                      height: 1,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -1.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  lastUpdated,
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
          _IconWell(
            icon: icon,
            gradient: AppColors.levelGradient,
            size: 44,
            iconSize: 20,
          ),
        ],
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton({required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: () => Navigator.of(context).maybePop(),
        splashColor: AppColors.primary.withValues(alpha: 0.10),
        highlightColor: AppColors.primary.withValues(alpha: 0.05),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isDark
                ? Colors.white.withValues(alpha: 0.05)
                : Colors.black.withValues(alpha: 0.035),
            border: Border.all(
              color: isDark
                  ? Colors.white.withValues(alpha: 0.07)
                  : Colors.black.withValues(alpha: 0.06),
            ),
          ),
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 16,
            color: isDark
                ? AppColors.textPrimaryDark
                : AppColors.textPrimaryLight,
          ),
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// INTRO CARD
// ═══════════════════════════════════════════════════════════════════════════

class _LegalIntroCard extends StatelessWidget {
  const _LegalIntroCard({required this.text, required this.isDark});

  final String text;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: isDark ? 0.16 : 0.10),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: isDark ? 0.12 : 0.06),
            blurRadius: 20,
            spreadRadius: -4,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Text(
        text,
        style: GoogleFonts.inter(
          fontSize: 13,
          height: 1.55,
          fontWeight: FontWeight.w500,
          color: isDark
              ? AppColors.textSecondaryDark
              : AppColors.textSecondaryLight,
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// SECTION CARD
// ═══════════════════════════════════════════════════════════════════════════

class _LegalSectionCard extends StatelessWidget {
  const _LegalSectionCard({
    required this.index,
    required this.section,
    required this.isDark,
  });

  final int index;
  final LegalSection section;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final primaryText =
    isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight;
    final secondaryText =
    isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: isDark ? 0.13 : 0.08),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: isDark ? 0.10 : 0.05),
            blurRadius: 16,
            spreadRadius: -4,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _IconWell(
            icon: section.icon,
            gradient: AppColors.levelGradient,
            size: 38,
            iconSize: 17,
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$index. ${section.title}',
                  style: GoogleFonts.outfit(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.2,
                    color: primaryText,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  section.body,
                  style: GoogleFonts.inter(
                    fontSize: 12.5,
                    height: 1.55,
                    fontWeight: FontWeight.w500,
                    color: secondaryText,
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
// CONTACT CARD
// ═══════════════════════════════════════════════════════════════════════════

class _LegalContactCard extends StatelessWidget {
  const _LegalContactCard({required this.email, required this.isDark});

  final String email;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final primaryText =
    isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight;
    final secondaryText =
    isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: isDark
              ? const [Color(0xFF17162B), Color(0xFF1F1B3A)]
              : const [Color(0xFFF3EFFE), Color(0xFFE9F8F5)],
        ),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: isDark ? 0.20 : 0.13),
        ),
      ),
      child: Row(
        children: [
          _IconWell(
            icon: Icons.mail_rounded,
            gradient: AppColors.premiumGradient,
            size: 38,
            iconSize: 17,
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Questions?',
                  style: GoogleFonts.outfit(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: primaryText,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  email,
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: secondaryText,
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