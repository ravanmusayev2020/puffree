import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../core/theme/app_theme.dart';

/// ─────────────────────────────────────────────────────────────
/// PremiumIcon
/// Unified icon treatment for the Puffree design system.
///
/// Philosophy:
/// - soft warm glass surface
/// - subtle orange glow
/// - clear separation from background
/// - consistent visual weight
/// ─────────────────────────────────────────────────────────────

class PremiumIcon extends StatelessWidget {
  const PremiumIcon({
    super.key,
    required this.icon,
    this.size = 44,
    this.iconSize = 20,
    this.color,
    this.background,
    this.strong = false,
  });

  final IconData icon;
  final double size;
  final double iconSize;
  final Color? color;
  final Color? background;
  final bool strong;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final iconColor = color ??
        (isDark ? AppColors.primaryLight : AppColors.primary);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: background == null
            ? LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: isDark
              ? [
            iconColor.withValues(alpha: strong ? 0.22 : 0.16),
            iconColor.withValues(alpha: strong ? 0.10 : 0.06),
          ]
              : [
            iconColor.withValues(alpha: strong ? 0.14 : 0.10),
            iconColor.withValues(alpha: strong ? 0.05 : 0.035),
          ],
        )
            : null,
        color: background,
        border: Border.all(
          width: 1,
          color: isDark
              ? iconColor.withValues(alpha: strong ? 0.28 : 0.18)
              : iconColor.withValues(alpha: strong ? 0.18 : 0.12),
        ),
        boxShadow: [
          BoxShadow(
            color: iconColor.withValues(
              alpha: isDark
                  ? (strong ? 0.22 : 0.14)
                  : (strong ? 0.12 : 0.07),
            ),
            blurRadius: strong ? 18 : 14,
            spreadRadius: -4,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Icon(
        icon,
        size: iconSize,
        color: iconColor,
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────
/// PremiumIconButton
/// Small premium circular action button.
/// ─────────────────────────────────────────────────────────────

class PremiumIconButton extends StatelessWidget {
  const PremiumIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.size = 44,
    this.iconSize = 20,
    this.color,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final double size;
  final double iconSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final iconColor = color ??
        (isDark ? AppColors.primaryLight : AppColors.primary);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        customBorder: const CircleBorder(),
        splashColor: iconColor.withValues(alpha: 0.10),
        highlightColor: iconColor.withValues(alpha: 0.04),
        child: Ink(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: isDark
                  ? [
                Colors.white.withValues(alpha: 0.08),
                Colors.white.withValues(alpha: 0.03),
              ]
                  : [
                Colors.white,
                AppColors.softLight,
              ],
            ),
            border: Border.all(
              color: isDark
                  ? Colors.white.withValues(alpha: 0.10)
                  : AppColors.primary.withValues(alpha: 0.10),
            ),
            boxShadow: [
              BoxShadow(
                color: iconColor.withValues(alpha: isDark ? 0.12 : 0.08),
                blurRadius: 16,
                spreadRadius: -4,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────
/// PuffCard
/// Premium reusable surface with strong contrast against background.
/// ─────────────────────────────────────────────────────────────

class PuffCard extends StatelessWidget {
  const PuffCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(18),
    this.gradient,
    this.borderColor,
    this.onTap,
    this.radius,
    this.elevation = true,
    this.highlight = false,
  });

  final Widget child;
  final EdgeInsets padding;
  final Gradient? gradient;
  final Color? borderColor;
  final VoidCallback? onTap;
  final double? radius;
  final bool elevation;
  final bool highlight;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final cardRadius = radius ?? AppRadii.card;

    // Stronger contrast from background
    final surfaceColor = isDark
        ? (highlight ? AppColors.softDark : AppColors.cardDark)
        : (highlight ? AppColors.softLight : AppColors.cardLight);

    final decoration = BoxDecoration(
      color: gradient == null ? surfaceColor : null,
      gradient: gradient,
      borderRadius: BorderRadius.circular(cardRadius),
      border: Border.all(
        width: 1,
        color: borderColor ??
            (isDark
                ? Colors.white.withValues(alpha: highlight ? 0.10 : 0.07)
                : AppColors.primary.withValues(alpha: highlight ? 0.12 : 0.07)),
      ),
      boxShadow: elevation
          ? [
        BoxShadow(
          color: isDark
              ? Colors.black.withValues(alpha: 0.32)
              : AppColors.primary.withValues(alpha: 0.06),
          blurRadius: isDark ? 28 : 22,
          spreadRadius: -6,
          offset: const Offset(0, 10),
        ),
        if (!isDark)
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
      ]
          : null,
    );

    final card = AnimatedContainer(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOutCubic,
      padding: padding,
      decoration: decoration,
      child: child,
    );

    if (onTap == null) {
      return card;
    }

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(cardRadius),
        splashColor: AppColors.primary.withValues(alpha: 0.08),
        highlightColor: AppColors.primary.withValues(alpha: 0.03),
        child: card,
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────
/// PuffHeader
/// ─────────────────────────────────────────────────────────────

class PuffHeader extends StatelessWidget {
  const PuffHeader({
    super.key,
    required this.title,
    this.subtitle,
    this.trailing,
  });

  final String title;
  final String? subtitle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (subtitle != null) ...[
                Text(
                  subtitle!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    fontSize: 11.5,
                    height: 1.2,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.6,
                    color: isDark
                        ? AppColors.primaryLight
                        : AppColors.primary,
                  ),
                ),
                const SizedBox(height: 6),
              ],
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.outfit(
                  fontSize: 27,
                  height: 1.08,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.9,
                  color: isDark
                      ? AppColors.textPrimaryDark
                      : AppColors.textPrimaryLight,
                ),
              ),
            ],
          ),
        ),
        if (trailing != null) ...[
          const SizedBox(width: 16),
          trailing!,
        ],
      ],
    );
  }
}

/// ─────────────────────────────────────────────────────────────
/// StatPill
///
/// Important:
/// All statistics use the same visual language.
/// The supplied color is used only for the icon.
/// ─────────────────────────────────────────────────────────────

class StatPill extends StatelessWidget {
  const StatPill({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.unit = '',
    this.color,
  });

  final IconData icon;
  final String label;
  final String value;
  final String unit;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final primaryText = isDark
        ? AppColors.textPrimaryDark
        : AppColors.textPrimaryLight;

    final secondaryText = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    final iconColor = color ??
        (isDark ? AppColors.primaryLight : AppColors.primary);

    return PuffCard(
      padding: const EdgeInsets.fromLTRB(15, 15, 15, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PremiumIcon(
            icon: icon,
            size: 40,
            iconSize: 19,
            color: iconColor,
            strong: true,
          ),

          const SizedBox(height: 14),

          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.inter(
              fontSize: 11.5,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.05,
              color: secondaryText,
            ),
          ),

          const SizedBox(height: 5),

          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Flexible(
                child: Text(
                  value,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.outfit(
                    fontSize: 24,
                    height: 1,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.7,
                    color: primaryText,
                  ),
                ),
              ),
              if (unit.isNotEmpty) ...[
                const SizedBox(width: 5),
                Text(
                  unit,
                  style: GoogleFonts.inter(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: secondaryText,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────
/// SoftProgressBar
/// ─────────────────────────────────────────────────────────────

class SoftProgressBar extends StatelessWidget {
  const SoftProgressBar({
    super.key,
    required this.value,
    this.color = AppColors.primary,
    this.height = 9,
  });

  final double value;
  final Color color;
  final double height;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final safeValue = value.clamp(0.0, 1.0);

    return ClipRRect(
      borderRadius: BorderRadius.circular(999),
      child: Stack(
        children: [
          Container(
            height: height,
            width: double.infinity,
            decoration: BoxDecoration(
              color: isDark
                  ? Colors.white.withValues(alpha: 0.07)
                  : Colors.black.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(999),
            ),
          ),
          FractionallySizedBox(
            widthFactor: safeValue,
            child: Container(
              height: height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    color,
                    Color.lerp(color, Colors.white, 0.22) ?? color,
                  ],
                ),
                borderRadius: BorderRadius.circular(999),
                boxShadow: [
                  BoxShadow(
                    color: color.withValues(alpha: 0.28),
                    blurRadius: 10,
                    spreadRadius: -2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────
/// PrimaryCta
/// ─────────────────────────────────────────────────────────────

class PrimaryCta extends StatelessWidget {
  const PrimaryCta({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.color,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final buttonColor = color ?? AppColors.primary;
    final enabled = onPressed != null;

    return SizedBox(
      width: double.infinity,
      height: 57,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(18),
          splashColor: Colors.white.withValues(alpha: 0.10),
          highlightColor: Colors.white.withValues(alpha: 0.04),
          child: Ink(
            decoration: BoxDecoration(
              gradient: enabled
                  ? LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  buttonColor,
                  Color.lerp(buttonColor, Colors.black, 0.12) ??
                      buttonColor,
                ],
              )
                  : null,
              color: enabled ? null : buttonColor.withValues(alpha: 0.32),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: enabled
                    ? Colors.white.withValues(alpha: 0.12)
                    : Colors.transparent,
              ),
              boxShadow: enabled
                  ? [
                BoxShadow(
                  color: buttonColor.withValues(alpha: 0.28),
                  blurRadius: 22,
                  spreadRadius: -5,
                  offset: const Offset(0, 9),
                ),
              ]
                  : null,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) ...[
                  Icon(
                    icon,
                    size: 19,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 9),
                ],
                Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    fontSize: 15.5,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.05,
                    color: Colors.white,
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

/// ─────────────────────────────────────────────────────────────
/// SosFab
/// ─────────────────────────────────────────────────────────────

class SosFab extends StatelessWidget {
  const SosFab({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: AppColors.coral.withValues(alpha: 0.28),
            blurRadius: 22,
            spreadRadius: -5,
            offset: const Offset(0, 9),
          ),
        ],
      ),
      child: FloatingActionButton.extended(
        onPressed: onPressed,
        elevation: 0,
        backgroundColor: AppColors.coral,
        foregroundColor: Colors.white,
        icon: const Icon(
          Iconsax.heart5,
          size: 19,
        ),
        label: Text(
          'SOS',
          style: GoogleFonts.inter(
            fontSize: 13,
            fontWeight: FontWeight.w800,
            letterSpacing: 0.4,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: BorderSide(
            color: Colors.white.withValues(alpha: 0.15),
          ),
        ),
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────
/// AvatarChip
/// ─────────────────────────────────────────────────────────────

class AvatarChip extends StatelessWidget {
  const AvatarChip({
    super.key,
    required this.emoji,
    this.size = 48,
  });

  final String emoji;
  final double size;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: AppColors.levelGradient,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(
              alpha: isDark ? 0.28 : 0.18,
            ),
            blurRadius: 18,
            spreadRadius: -3,
            offset: const Offset(0, 7),
          ),
        ],
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.20),
          width: 1.4,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        emoji,
        style: TextStyle(
          fontSize: size * 0.42,
        ),
      ),
    );
  }
}

/// ─────────────────────────────────────────────────────────────
/// PremiumMetricIcon
/// Convenient predefined icons for Puffree screens.
/// ─────────────────────────────────────────────────────────────

class PremiumMetricIcon extends StatelessWidget {
  const PremiumMetricIcon({
    super.key,
    required this.type,
    this.size = 44,
  });

  final PremiumMetricType type;
  final double size;

  @override
  Widget build(BuildContext context) {
    return PremiumIcon(
      icon: _icon,
      size: size,
      iconSize: size * 0.45,
      color: _color,
      strong: true,
    );
  }

  IconData get _icon {
    switch (type) {
      case PremiumMetricType.water:
        return Iconsax.drop;
      case PremiumMetricType.sleep:
        return Iconsax.moon;
      case PremiumMetricType.mood:
        return Iconsax.heart;
      case PremiumMetricType.energy:
        return Iconsax.flash_15;
      case PremiumMetricType.calendar:
        return Iconsax.calendar_1;
      case PremiumMetricType.trend:
        return Iconsax.chart_success;
      case PremiumMetricType.journal:
        return Iconsax.edit_2;
      case PremiumMetricType.settings:
        return Iconsax.setting_2;
      case PremiumMetricType.profile:
        return Iconsax.user;
      case PremiumMetricType.notification:
        return Iconsax.notification;
    }
  }

  Color get _color {
    switch (type) {
      case PremiumMetricType.water:
        return AppColors.primary;
      case PremiumMetricType.sleep:
        return AppColors.accent;
      case PremiumMetricType.mood:
        return AppColors.coral;
      case PremiumMetricType.energy:
        return AppColors.amber;
      case PremiumMetricType.calendar:
        return AppColors.orange;
      case PremiumMetricType.trend:
        return AppColors.success;
      case PremiumMetricType.journal:
        return AppColors.primary;
      case PremiumMetricType.settings:
        return AppColors.primary;
      case PremiumMetricType.profile:
        return AppColors.orange;
      case PremiumMetricType.notification:
        return AppColors.accent;
    }
  }
}

/// ─────────────────────────────────────────────────────────────
/// PremiumMetricType
/// ─────────────────────────────────────────────────────────────

enum PremiumMetricType {
  water,
  sleep,
  mood,
  energy,
  calendar,
  trend,
  journal,
  settings,
  profile,
  notification,
}

/// ─────────────────────────────────────────────────────────────
/// App avatars
/// ─────────────────────────────────────────────────────────────

class AppAvatars {
  static const presets = [
    '🌿',
    '🌊',
    '🔥',
    '🌙',
    '☀️',
    '🦊',
    '🦁',
    '🌸',
  ];
}