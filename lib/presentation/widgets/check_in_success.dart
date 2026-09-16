import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../core/theme/app_theme.dart';

class CheckInSuccessDialog extends StatelessWidget {
  final int streak;
  final int days;

  const CheckInSuccessDialog({
    super.key,
    required this.streak,
    required this.days,
  });

  static Future<void> show(
      BuildContext context, {
        required int streak,
        required int days,
      }) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      barrierColor: Colors.black.withValues(alpha: 0.60),
      builder: (_) => CheckInSuccessDialog(
        streak: streak,
        days: days,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final backgroundColor =
    isDark ? AppColors.cardDark : AppColors.surfaceLight;

    final primaryText =
    isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight;

    final secondaryText =
    isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight;

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 22),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: backgroundColor,
          border: Border.all(
            color: isDark
                ? Colors.white.withValues(alpha: 0.08)
                : AppColors.primary.withValues(alpha: 0.08),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(
                alpha: isDark ? 0.48 : 0.14,
              ),
              blurRadius: 40,
              spreadRadius: -6,
              offset: const Offset(0, 18),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: Stack(
            children: [
              // Soft success glow
              Positioned(
                top: -90,
                left: -50,
                right: -50,
                child: IgnorePointer(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        colors: [
                          AppColors.success.withValues(
                            alpha: isDark ? 0.16 : 0.10,
                          ),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Warm accent glow
              Positioned(
                bottom: -80,
                right: -40,
                child: IgnorePointer(
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: RadialGradient(
                        colors: [
                          AppColors.primary.withValues(
                            alpha: isDark ? 0.08 : 0.05,
                          ),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const _SuccessIcon()
                        .animate()
                        .scale(
                      duration: 520.ms,
                      curve: Curves.easeOutBack,
                    )
                        .fadeIn(duration: 280.ms),

                    const SizedBox(height: 22),

                    Text(
                      'Отлично!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.outfit(
                        fontSize: 28,
                        height: 1.05,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.8,
                        color: primaryText,
                      ),
                    )
                        .animate()
                        .fadeIn(delay: 120.ms, duration: 320.ms)
                        .slideY(
                      begin: 0.16,
                      end: 0,
                      curve: Curves.easeOutCubic,
                    ),

                    const SizedBox(height: 8),

                    Text(
                      'Ещё один день без сигарет',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontSize: 14.5,
                        height: 1.4,
                        fontWeight: FontWeight.w500,
                        color: secondaryText,
                      ),
                    ).animate().fadeIn(delay: 200.ms, duration: 300.ms),

                    const SizedBox(height: 24),

                    Row(
                      children: [
                        Expanded(
                          child: _MiniStat(
                            icon: Iconsax.flash_15,
                            label: 'Стрик',
                            value: '$streak',
                            color: AppColors.amber,
                            isDark: isDark,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: _MiniStat(
                            icon: Iconsax.calendar_1,
                            label: 'Всего дней',
                            value: '$days',
                            color: AppColors.success,
                            isDark: isDark,
                          ),
                        ),
                      ],
                    )
                        .animate()
                        .fadeIn(delay: 280.ms, duration: 340.ms)
                        .slideY(
                      begin: 0.10,
                      end: 0,
                      curve: Curves.easeOutCubic,
                    ),

                    const SizedBox(height: 24),

                    SizedBox(
                      width: double.infinity,
                      height: 54,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () => Navigator.pop(context),
                          borderRadius: BorderRadius.circular(18),
                          splashColor: Colors.white.withValues(alpha: 0.12),
                          highlightColor:
                          Colors.white.withValues(alpha: 0.05),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  AppColors.success,
                                  Color(0xFF2BB87E),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.success.withValues(
                                    alpha: 0.28,
                                  ),
                                  blurRadius: 18,
                                  spreadRadius: -3,
                                  offset: const Offset(0, 8),
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Продолжить',
                                  style: GoogleFonts.inter(
                                    fontSize: 15.5,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const Icon(
                                  Iconsax.arrow_right_3,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                        .animate()
                        .fadeIn(delay: 380.ms, duration: 300.ms)
                        .slideY(
                      begin: 0.08,
                      end: 0,
                      curve: Curves.easeOutCubic,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
          .animate()
          .fadeIn(duration: 220.ms)
          .scale(
        begin: const Offset(0.94, 0.94),
        end: const Offset(1, 1),
        duration: 420.ms,
        curve: Curves.easeOutBack,
      ),
    );
  }
}

class _SuccessIcon extends StatelessWidget {
  const _SuccessIcon();

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return SizedBox(
      width: 96,
      height: 96,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Outer soft ring
          Container(
            width: 96,
            height: 96,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.success.withValues(
                alpha: isDark ? 0.10 : 0.08,
              ),
            ),
          ),

          // Middle ring
          Container(
            width: 78,
            height: 78,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.success.withValues(alpha: 0.18),
                width: 1.2,
              ),
              gradient: RadialGradient(
                colors: [
                  AppColors.success.withValues(alpha: 0.18),
                  AppColors.success.withValues(alpha: 0.05),
                ],
              ),
            ),
          ),

          // Core
          Container(
            width: 62,
            height: 62,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.success,
                  Color(0xFF2BB87E),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.success.withValues(alpha: 0.30),
                  blurRadius: 16,
                  spreadRadius: -2,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: const Icon(
              Iconsax.tick_circle5,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class _MiniStat extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color color;
  final bool isDark;

  const _MiniStat({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    final textColor =
    isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight;

    final secondaryColor =
    isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight;

    return Container(
      padding: const EdgeInsets.fromLTRB(12, 14, 12, 13),
      decoration: BoxDecoration(
        color: isDark
            ? Colors.white.withValues(alpha: 0.045)
            : color.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: isDark
              ? Colors.white.withValues(alpha: 0.06)
              : color.withValues(alpha: 0.10),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: color.withValues(alpha: isDark ? 0.14 : 0.12),
              borderRadius: BorderRadius.circular(11),
            ),
            child: Icon(
              icon,
              size: 16,
              color: color,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            value,
            style: GoogleFonts.outfit(
              fontSize: 22,
              height: 1,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.5,
              color: textColor,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.inter(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: secondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}