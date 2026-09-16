import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/theme/app_theme.dart';
import '../../../core/theme/locale_controller.dart';
import '../../../l10n/app_localizations.dart';

class LanguageTile extends StatelessWidget {
  const LanguageTile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LocaleControllerScope.of(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        return Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => showLanguageSheet(context, controller),
            splashColor: AppColors.primary.withValues(alpha: 0.055),
            highlightColor: AppColors.primary.withValues(alpha: 0.02),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 13, 14, 13),
                  child: Row(
                    children: [
                      Container(
                        width: 43,
                        height: 43,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primary.withValues(
                            alpha: isDark ? 0.11 : 0.065,
                          ),
                        ),
                        child: const Icon(
                          Iconsax.language_circle,
                          size: 19,
                          color: AppColors.primary,
                        ),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppLocalizations.of(context).language,
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: isDark
                                    ? AppColors.textPrimaryDark
                                    : AppColors.textPrimaryLight,
                              ),
                            ),
                            const SizedBox(height: 3),
                            Text(
                              controller.languageLabel,
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
                      Icon(
                        Iconsax.arrow_right_3,
                        size: 17,
                        color: isDark
                            ? Colors.white.withValues(alpha: 0.20)
                            : AppColors.textSecondaryLight
                            .withValues(alpha: 0.50),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 72),
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
      },
    );
  }
}

void showLanguageSheet(
    BuildContext context,
    LocaleController controller,
    ) {
  final isDark = Theme.of(context).brightness == Brightness.dark;

  final languages = <(Locale, String)>[
    (const Locale('ru'), 'Русский'),
    (const Locale('en'), 'English'),
    (const Locale('az'), 'Azərbaycan'),
    (const Locale('de'), 'Deutsch'),
    (const Locale('es'), 'Español'),
    (const Locale('fr'), 'Français'),
    (const Locale('it'), 'Italiano'),
    (const Locale('pt'), 'Português'),
    (const Locale('tr'), 'Türkçe'),
    (const Locale('ar'), 'العربية'),
    (const Locale('ja'), '日本語'),
    (const Locale('ko'), '한국어'),
    (const Locale('zh'), '中文'),
  ];

  showModalBottomSheet<void>(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (ctx) {
      return SafeArea(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.72,
          ),
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
          decoration: BoxDecoration(
            color: isDark ? AppColors.surfaceDark : AppColors.surfaceLight,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(28),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: isDark
                      ? Colors.white.withValues(alpha: 0.15)
                      : Colors.black.withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(99),
                ),
              ),
              const SizedBox(height: 18),
              Text(
                AppLocalizations.of(context).language,
                style: GoogleFonts.outfit(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: isDark
                      ? AppColors.textPrimaryDark
                      : AppColors.textPrimaryLight,
                ),
              ),
              const SizedBox(height: 16),
              Flexible(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: languages.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 4),
                  itemBuilder: (context, index) {
                    final item = languages[index];
                    final locale = item.$1;
                    final name = item.$2;
                    final selected =
                        controller.locale.languageCode == locale.languageCode;

                    return Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () async {
                          await controller.setLocale(locale);
                          if (ctx.mounted) Navigator.pop(ctx);
                        },
                        borderRadius: BorderRadius.circular(14),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            color: selected
                                ? AppColors.primary.withValues(alpha: 0.10)
                                : null,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  name,
                                  style: GoogleFonts.inter(
                                    fontSize: 15,
                                    fontWeight: selected
                                        ? FontWeight.w700
                                        : FontWeight.w500,
                                    color: selected
                                        ? AppColors.primary
                                        : (isDark
                                        ? AppColors.textPrimaryDark
                                        : AppColors.textPrimaryLight),
                                  ),
                                ),
                              ),
                              if (selected)
                                const Icon(
                                  Icons.check_rounded,
                                  color: AppColors.primary,
                                  size: 20,
                                ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}