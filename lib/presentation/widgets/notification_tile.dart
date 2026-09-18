import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../core/theme/app_theme.dart';
import '../../data/services/notification_service.dart';
import '../../l10n/app_localizations.dart';

class NotificationTile extends StatefulWidget {
  const NotificationTile({super.key});

  @override
  State<NotificationTile> createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
  NotificationPrefs _prefs = const NotificationPrefs();
  bool _loading = true;
  bool _changing = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final prefs = await NotificationService.loadPrefs();

    if (!mounted) return;

    setState(() {
      _prefs = prefs;
      _loading = false;
    });
  }

  Future<void> _toggle(bool value) async {
    if (_changing) return;

    setState(() {
      _changing = true;
    });

    try {
      if (value) {
        final granted =
        await NotificationService.requestPermission();

        if (!granted) {
          if (mounted) {
            setState(() {
              _changing = false;
            });

            _showPermissionMessage();
          }

          return;
        }
      }

      final updated = _prefs.copyWith(
        enabled: value,
      );

      final locale =
          Localizations.localeOf(context).languageCode;

      await NotificationService.savePrefs(
        updated,
        languageCode: locale,
      );

      if (!mounted) return;

      setState(() {
        _prefs = updated;
        _changing = false;
      });
    } catch (_) {
      if (!mounted) return;

      setState(() {
        _changing = false;
      });
    }
  }

  void _showPermissionMessage() {
    final isDark =
        Theme.of(context).brightness == Brightness.dark;

    final l10n = AppLocalizations.of(context)!;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: isDark
            ? AppColors.surfaceDark
            : AppColors.surfaceLight,
        content: Text(
          l10n.notificationsHint,
          style: GoogleFonts.inter(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: isDark
                ? AppColors.textPrimaryDark
                : AppColors.textPrimaryLight,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark =
        Theme.of(context).brightness == Brightness.dark;

    final l10n = AppLocalizations.of(context)!;

    final titleColor = isDark
        ? AppColors.textPrimaryDark
        : AppColors.textPrimaryLight;

    final subtitleColor = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    final accent = AppColors.primary;

    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          15,
          13,
          14,
          13,
        ),
        child: Row(
          children: [
            // ─────────────────────────────────────────────
            // ICON
            // ─────────────────────────────────────────────

            AnimatedContainer(
              duration: const Duration(milliseconds: 220),
              width: 43,
              height: 43,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _prefs.enabled
                    ? accent.withValues(
                  alpha: isDark ? 0.14 : 0.075,
                )
                    : isDark
                    ? Colors.white.withValues(
                  alpha: 0.045,
                )
                    : Colors.black.withValues(
                  alpha: 0.025,
                ),
              ),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 180),
                child: Icon(
                  _prefs.enabled
                      ? Iconsax.notification
                      : Iconsax.notification_status,
                  key: ValueKey(_prefs.enabled),
                  size: 19,
                  color: _prefs.enabled
                      ? accent
                      : isDark
                      ? Colors.white.withValues(
                    alpha: 0.35,
                  )
                      : Colors.black.withValues(
                    alpha: 0.35,
                  ),
                ),
              ),
            ),

            const SizedBox(width: 14),

            // ─────────────────────────────────────────────
            // TEXT
            // ─────────────────────────────────────────────

            Expanded(
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.notifications,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: titleColor,
                    ),
                  ),
                  const SizedBox(height: 3),
                  AnimatedSwitcher(
                    duration:
                    const Duration(milliseconds: 180),
                    child: Text(
                      _prefs.enabled
                          ? 'Уведомления включены'
                          : 'Уведомления отключены',
                      key: ValueKey(_prefs.enabled),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.inter(
                        fontSize: 11.5,
                        fontWeight: FontWeight.w500,
                        color: subtitleColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 12),

            // ─────────────────────────────────────────────
            // SWITCH
            // ─────────────────────────────────────────────

            AnimatedOpacity(
              duration: const Duration(milliseconds: 180),
              opacity: _changing ? 0.55 : 1,
              child: Switch.adaptive(
                value: _prefs.enabled,
                onChanged: _changing ? null : _toggle,
                activeColor: accent,
                activeTrackColor: accent.withValues(
                  alpha: 0.32,
                ),
                inactiveThumbColor: isDark
                    ? Colors.white.withValues(alpha: 0.72)
                    : Colors.white,
                inactiveTrackColor: isDark
                    ? Colors.white.withValues(alpha: 0.10)
                    : Colors.black.withValues(alpha: 0.08),
                materialTapTargetSize:
                MaterialTapTargetSize.shrinkWrap,
              ),
            ),
          ],
        ),
      ),
    );
  }
}