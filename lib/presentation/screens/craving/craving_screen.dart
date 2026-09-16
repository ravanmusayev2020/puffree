import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/theme/app_theme.dart';
import '../../../l10n/app_localizations.dart';

class CravingScreen extends StatefulWidget {
  const CravingScreen({
    super.key,
    this.initialTab = 0,
  });

  final int initialTab;

  @override
  State<CravingScreen> createState() => _CravingScreenState();
}

class _CravingScreenState extends State<CravingScreen>
    with SingleTickerProviderStateMixin {
  late int _tab;

  int _secondsLeft = 180;
  Timer? _timer;
  bool _isRunning = false;

  int _tipIndex = 0;

  late AnimationController _breathe;
  int _phase = 0;

  final _chat = <_ChatLine>[];
  String? _scenario;

  @override
  void initState() {
    super.initState();

    _tab = widget.initialTab;

    _breathe = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 19),
    )..addListener(_onBreathingTick);
  }

  void _onBreathingTick() {
    if (!mounted) return;

    final t = _breathe.value * 19;

    final nextPhase = t < 4
        ? 0
        : t < 11
        ? 1
        : 2;

    if (nextPhase != _phase) {
      setState(() {
        _phase = nextPhase;
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _breathe.dispose();
    super.dispose();
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // TIMER
  // ═══════════════════════════════════════════════════════════════════════════

  void _startTimer() {
    if (_isRunning) return;

    setState(() {
      _isRunning = true;
    });

    _timer = Timer.periodic(
      const Duration(seconds: 1),
          (timer) {
        if (!mounted) {
          timer.cancel();
          return;
        }

        if (_secondsLeft > 0) {
          setState(() {
            _secondsLeft--;

            if (_secondsLeft % 20 == 0) {
              _tipIndex = (_tipIndex + 1) % 6;
            }
          });
        } else {
          timer.cancel();

          setState(() {
            _isRunning = false;
          });
        }
      },
    );
  }

  void _resetTimer() {
    _timer?.cancel();

    setState(() {
      _secondsLeft = 180;
      _isRunning = false;
      _tipIndex = 0;
    });
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // CHAT
  // ═══════════════════════════════════════════════════════════════════════════

  String _intro(
      String id,
      AppLocalizations l10n,
      ) {
    return switch (id) {
      'stress' => l10n.chatIntroStress,
      'boredom' => l10n.chatIntroBoredom,
      _ => l10n.chatIntroCraving,
    };
  }

  String _botReply(AppLocalizations l10n) {
    return switch (_scenario) {
      'stress' => l10n.chatReplyStress,
      'boredom' => l10n.chatReplyBoredom,
      _ => l10n.chatReplyCraving,
    };
  }

  void _pickScenario(
      String id,
      AppLocalizations l10n,
      ) {
    setState(() {
      _scenario = id;

      _chat
        ..clear()
        ..add(
          _ChatLine(
            false,
            _intro(id, l10n),
          ),
        );
    });
  }

  void _reply(
      String text,
      AppLocalizations l10n,
      ) {
    setState(() {
      _chat.add(
        _ChatLine(
          true,
          text,
        ),
      );

      _chat.add(
        _ChatLine(
          false,
          _botReply(l10n),
        ),
      );
    });
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // BUILD
  // ═══════════════════════════════════════════════════════════════════════════

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final isDark =
        Theme.of(context).brightness == Brightness.dark;

    final tips = [
      l10n.sosTip1,
      l10n.sosTip2,
      l10n.sosTip3,
      l10n.sosTip4,
      l10n.sosTip5,
      l10n.sosTip6,
    ];

    return Scaffold(
      backgroundColor: isDark
          ? AppColors.backgroundDark
          : AppColors.backgroundLight,
      body: SafeArea(
        child: Column(
          children: [
            _TopBar(
              title: l10n.sosTitle,
              isDark: isDark,
              onBack: () => Navigator.pop(context),
            ),

            const SizedBox(height: 14),

            _ModeSelector(
              selected: _tab,
              isDark: isDark,
              labels: [
                l10n.sosTimer,
                l10n.sosBreathe,
                l10n.sosChat,
              ],
              onChanged: (value) {
                setState(() {
                  _tab = value;
                });
              },
            ),

            const SizedBox(height: 12),

            Expanded(
              child: IndexedStack(
                index: _tab,
                children: [
                  _timerTab(
                    l10n,
                    tips,
                    isDark,
                  ),
                  _breatheTab(
                    l10n,
                    isDark,
                  ),
                  _chatTab(
                    l10n,
                    isDark,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // TIMER TAB
  // ═══════════════════════════════════════════════════════════════════════════

  Widget _timerTab(
      AppLocalizations l10n,
      List<String> tips,
      bool isDark,
      ) {
    final progress = 1 - (_secondsLeft / 180);
    final finished = _secondsLeft == 0;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(
        20,
        12,
        20,
        28,
      ),
      child: Column(
        children: [
          const SizedBox(height: 8),

          _EmergencyHeader(
            isDark: isDark,
            finished: finished,
          ).animate().fadeIn(),

          const SizedBox(height: 24),

          _TimerOrb(
            seconds: _secondsLeft,
            progress: progress,
            finished: finished,
            isDark: isDark,
          ).animate().scale(
            duration: 500.ms,
            curve: Curves.easeOutBack,
          ),

          const SizedBox(height: 25),

          _TipCard(
            text: finished
                ? l10n.sosDone
                : tips[_tipIndex],
            finished: finished,
            isDark: isDark,
          ).animate().fadeIn(
            delay: 120.ms,
          ),

          const SizedBox(height: 22),

          if (!_isRunning && !finished)
            _ActionButton(
              label: l10n.sosStart,
              icon: Iconsax.play,
              color: AppColors.coral,
              onPressed: _startTimer,
            )
          else if (_isRunning)
            _ActionButton(
              label: l10n.reset,
              icon: Iconsax.refresh,
              color: AppColors.primary,
              onPressed: _resetTimer,
            )
          else
            _ActionButton(
              label: l10n.sosManaged,
              icon: Iconsax.tick_circle5,
              color: AppColors.success,
              onPressed: () => Navigator.pop(context),
            ),

          const SizedBox(height: 16),

          _MicroHint(
            icon: Iconsax.clock,
            text: finished
                ? l10n.sosWon
                : l10n.sosLeft,
            isDark: isDark,
          ),
        ],
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // BREATHING TAB
  // ═══════════════════════════════════════════════════════════════════════════

  Widget _breatheTab(
      AppLocalizations l10n,
      bool isDark,
      ) {
    final labels = [
      l10n.breatheIn,
      l10n.breatheHold,
      l10n.breatheOut,
    ];

    final scale = _phase == 0
        ? 0.78 +
        (_breathe.value * 19)
            .clamp(0, 4) /
            4 *
            0.28
        : _phase == 1
        ? 1.06
        : 1.06 -
        ((_breathe.value * 19) - 11)
            .clamp(0, 8) /
            8 *
            0.28;

    final isActive = _breathe.isAnimating;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(
        20,
        14,
        20,
        30,
      ),
      child: Column(
        children: [
          _BreathingHeader(
            isDark: isDark,
          ).animate().fadeIn(),

          const SizedBox(height: 28),

          _BreathingOrb(
            label: labels[_phase],
            scale: isActive ? scale : 0.86,
            isActive: isActive,
            isDark: isDark,
          ),

          const SizedBox(height: 28),

          Text(
            l10n.breatheHint,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 13,
              height: 1.5,
              fontWeight: FontWeight.w500,
              color: isDark
                  ? AppColors.textSecondaryDark
                  : AppColors.textSecondaryLight,
            ),
          ),

          const SizedBox(height: 30),

          _BreathingSteps(
            labels: labels,
            active: _phase,
            isDark: isDark,
          ),

          const SizedBox(height: 26),

          _ActionButton(
            label: isActive
                ? l10n.reset
                : l10n.breatheStart,
            icon: isActive
                ? Iconsax.refresh
                : Iconsax.play,
            color: AppColors.primary,
            onPressed: () {
              if (_breathe.isAnimating) {
                _breathe.stop();
                _breathe.reset();
              } else {
                _breathe.repeat();
              }

              setState(() {});
            },
          ),
        ],
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════════════════
  // CHAT TAB
  // ═══════════════════════════════════════════════════════════════════════════

  Widget _chatTab(
      AppLocalizations l10n,
      bool isDark,
      ) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        20,
        14,
        20,
        24,
      ),
      child: Column(
        children: [
          if (_scenario == null)
            Expanded(
              child: _ScenarioPicker(
                l10n: l10n,
                isDark: isDark,
                onSelect: (id) {
                  _pickScenario(
                    id,
                    l10n,
                  );
                },
              ),
            )
          else ...[
            Expanded(
              child: ListView.builder(
                physics:
                const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(
                  top: 6,
                  bottom: 14,
                ),
                itemCount: _chat.length,
                itemBuilder: (context, index) {
                  final line = _chat[index];

                  return _ChatBubble(
                    line: line,
                    isDark: isDark,
                  ).animate().fadeIn(
                    duration: 220.ms,
                  );
                },
              ),
            ),

            const SizedBox(height: 8),

            _QuickReplies(
              l10n: l10n,
              isDark: isDark,
              onWalk: () => _reply(
                l10n.chatNeedWalk,
                l10n,
              ),
              onWater: () => _reply(
                l10n.chatNeedWater,
                l10n,
              ),
              onBreathe: () {
                _reply(
                  l10n.chatNeedBreathe,
                  l10n,
                );

                setState(() {
                  _tab = 1;
                });
              },
            ),
          ],
        ],
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// TOP BAR
// ═════════════════════════════════════════════════════════════════════════════

class _TopBar extends StatelessWidget {
  const _TopBar({
    required this.title,
    required this.isDark,
    required this.onBack,
  });

  final String title;
  final bool isDark;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    final titleColor = isDark
        ? AppColors.textPrimaryDark
        : AppColors.textPrimaryLight;

    final secondaryColor = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    return Padding(
      padding: const EdgeInsets.fromLTRB(
        10,
        10,
        18,
        0,
      ),
      child: Row(
        children: [
          _CircleButton(
            icon: Iconsax.arrow_left_2,
            isDark: isDark,
            onTap: onBack,
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.outfit(
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.8,
                    color: titleColor,
                  ),
                ),

                const SizedBox(height: 3),

                Text(
                  'Ты справишься. Один момент за раз.',
                  style: GoogleFonts.inter(
                    fontSize: 11.5,
                    fontWeight: FontWeight.w500,
                    color: secondaryColor,
                  ),
                ),
              ],
            ),
          ),

          _IconWell(
            icon: Iconsax.shield_tick,
            size: 42,
            iconSize: 19,
            color: AppColors.primary,
            isDark: isDark,
          ),
        ],
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// MODE SELECTOR
// ═════════════════════════════════════════════════════════════════════════════

class _ModeSelector extends StatelessWidget {
  const _ModeSelector({
    required this.selected,
    required this.labels,
    required this.isDark,
    required this.onChanged,
  });

  final int selected;
  final List<String> labels;
  final bool isDark;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final secondaryColor = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 18,
      ),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: isDark
            ? AppColors.surfaceDark
            : AppColors.surfaceLight,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: isDark
              ? Colors.white.withValues(alpha: 0.055)
              : Colors.black.withValues(alpha: 0.045),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(
              alpha: isDark ? 0.12 : 0.025,
            ),
            blurRadius: 18,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: List.generate(
          labels.length,
              (index) {
            final active = selected == index;

            return Expanded(
              child: GestureDetector(
                onTap: () => onChanged(index),
                child: AnimatedContainer(
                  duration:
                  const Duration(milliseconds: 220),
                  padding:
                  const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    gradient: active
                        ? LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.primary
                            .withValues(alpha: 0.18),
                        AppColors.primaryLight
                            .withValues(alpha: 0.08),
                      ],
                    )
                        : null,
                    borderRadius:
                    BorderRadius.circular(14),
                    border: Border.all(
                      color: active
                          ? AppColors.primary
                          .withValues(alpha: 0.13)
                          : Colors.transparent,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    labels[index],
                    maxLines: 1,
                    overflow:
                    TextOverflow.ellipsis,
                    style: GoogleFonts.inter(
                      fontSize: 11.5,
                      fontWeight: FontWeight.w700,
                      color: active
                          ? AppColors.primary
                          : secondaryColor,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// EMERGENCY HEADER
// ═════════════════════════════════════════════════════════════════════════════

class _EmergencyHeader extends StatelessWidget {
  const _EmergencyHeader({
    required this.isDark,
    required this.finished,
  });

  final bool isDark;
  final bool finished;

  @override
  Widget build(BuildContext context) {
    final color = finished
        ? AppColors.success
        : AppColors.coral;

    final titleColor = isDark
        ? AppColors.textPrimaryDark
        : AppColors.textPrimaryLight;

    final secondaryColor = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.065),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: color.withValues(alpha: 0.13),
        ),
      ),
      child: Row(
        children: [
          _IconWell(
            icon: finished
                ? Iconsax.tick_circle5
                : Iconsax.shield_tick,
            size: 40,
            iconSize: 18,
            color: color,
            isDark: isDark,
          ),

          const SizedBox(width: 11),

          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  finished
                      ? 'Ты прошёл этот момент'
                      : 'Пережди волну тяги',
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: titleColor,
                  ),
                ),

                const SizedBox(height: 3),

                Text(
                  finished
                      ? 'Отличная работа. Ты контролируешь ситуацию.'
                      : 'Дай себе несколько минут и сосредоточься на настоящем моменте.',
                  style: GoogleFonts.inter(
                    fontSize: 10.5,
                    height: 1.35,
                    color: secondaryColor,
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

// ═════════════════════════════════════════════════════════════════════════════
// TIMER ORB
// ═════════════════════════════════════════════════════════════════════════════

class _TimerOrb extends StatelessWidget {
  const _TimerOrb({
    required this.seconds,
    required this.progress,
    required this.finished,
    required this.isDark,
  });

  final int seconds;
  final double progress;
  final bool finished;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final color = finished
        ? AppColors.success
        : AppColors.coral;

    final textColor = isDark
        ? AppColors.textPrimaryDark
        : AppColors.textPrimaryLight;

    return SizedBox(
      width: 245,
      height: 245,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 245,
            height: 245,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: color.withValues(
                    alpha: isDark ? 0.10 : 0.055,
                  ),
                  blurRadius: 52,
                  spreadRadius: 2,
                ),
              ],
            ),
          ),

          SizedBox(
            width: 230,
            height: 230,
            child: CircularProgressIndicator(
              value: progress,
              strokeWidth: 8,
              strokeCap: StrokeCap.round,
              backgroundColor:
              color.withValues(alpha: 0.10),
              valueColor:
              AlwaysStoppedAnimation(color),
            ),
          ),

          Container(
            width: 192,
            height: 192,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: isDark
                    ? [
                  AppColors.cardDark,
                  color.withValues(alpha: 0.08),
                ]
                    : [
                  AppColors.surfaceLight,
                  color.withValues(alpha: 0.035),
                ],
              ),
              border: Border.all(
                color: color.withValues(alpha: 0.11),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(
                    alpha: isDark ? 0.16 : 0.035,
                  ),
                  blurRadius: 24,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment:
              MainAxisAlignment.center,
              children: [
                Icon(
                  finished
                      ? Iconsax.tick_circle5
                      : Iconsax.heart,
                  color: color,
                  size: 20,
                ),

                const SizedBox(height: 9),

                Text(
                  _format(seconds),
                  style: GoogleFonts.outfit(
                    fontSize: 44,
                    height: 0.95,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -1.5,
                    color: textColor,
                  ),
                ),

                const SizedBox(height: 7),

                Text(
                  finished
                      ? 'DONE'
                      : 'KEEP GOING',
                  style: GoogleFonts.inter(
                    fontSize: 9,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.4,
                    color: color,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static String _format(int seconds) {
    final minutes =
    (seconds ~/ 60).toString().padLeft(2, '0');

    final secs =
    (seconds % 60).toString().padLeft(2, '0');

    return '$minutes:$secs';
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// TIP CARD
// ═════════════════════════════════════════════════════════════════════════════

class _TipCard extends StatelessWidget {
  const _TipCard({
    required this.text,
    required this.finished,
    required this.isDark,
  });

  final String text;
  final bool finished;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final color = finished
        ? AppColors.success
        : AppColors.primary;

    final secondaryColor = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(
        18,
        18,
        18,
        19,
      ),
      decoration: BoxDecoration(
        color: isDark
            ? AppColors.cardDark
            : AppColors.cardLight,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: color.withValues(alpha: 0.10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(
              alpha: isDark ? 0.11 : 0.025,
            ),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          _IconWell(
            icon: finished
                ? Iconsax.tick_circle5
                : Iconsax.info_circle,
            size: 38,
            iconSize: 18,
            color: color,
            isDark: isDark,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              text,
              style: GoogleFonts.inter(
                fontSize: 13,
                height: 1.45,
                fontWeight: FontWeight.w500,
                color: secondaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// BREATHING HEADER
// ═════════════════════════════════════════════════════════════════════════════

class _BreathingHeader extends StatelessWidget {
  const _BreathingHeader({
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final titleColor = isDark
        ? AppColors.textPrimaryDark
        : AppColors.textPrimaryLight;

    final secondaryColor = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.primary,
                AppColors.primaryLight,
              ],
            ),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppColors.primary
                    .withValues(alpha: 0.20),
                blurRadius: 20,
                spreadRadius: -2,
              ),
            ],
          ),
          child: const Icon(
            Iconsax.wind_2,
            color: Colors.white,
            size: 22,
          ),
        ),

        const SizedBox(height: 12),

        Text(
          'Дыши медленно',
          style: GoogleFonts.outfit(
            fontSize: 22,
            fontWeight: FontWeight.w800,
            letterSpacing: -0.6,
            color: titleColor,
          ),
        ),

        const SizedBox(height: 4),

        Text(
          'Следуй ритму круга',
          style: GoogleFonts.inter(
            fontSize: 11.5,
            fontWeight: FontWeight.w500,
            color: secondaryColor,
          ),
        ),
      ],
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// BREATHING ORB
// ═════════════════════════════════════════════════════════════════════════════

class _BreathingOrb extends StatelessWidget {
  const _BreathingOrb({
    required this.label,
    required this.scale,
    required this.isActive,
    required this.isDark,
  });

  final String label;
  final double scale;
  final bool isActive;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      duration: const Duration(
        milliseconds: 450,
      ),
      curve: Curves.easeInOut,
      scale: scale,
      child: Container(
        width: 205,
        height: 205,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.primaryDark,
              AppColors.primary,
              AppColors.primaryLight,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withValues(
                alpha: isActive ? 0.24 : 0.12,
              ),
              blurRadius: isActive ? 42 : 25,
              spreadRadius: isActive ? 8 : 2,
            ),
          ],
        ),
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withValues(
              alpha: 0.07,
            ),
            border: Border.all(
              color: Colors.white.withValues(
                alpha: 0.16,
              ),
            ),
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Iconsax.wind_2,
                size: 22,
                color: Colors.white.withValues(
                  alpha: 0.88,
                ),
              ),

              const SizedBox(height: 9),

              Text(
                label,
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 21,
                  letterSpacing: -0.4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// BREATHING STEPS
// ═════════════════════════════════════════════════════════════════════════════

class _BreathingSteps extends StatelessWidget {
  const _BreathingSteps({
    required this.labels,
    required this.active,
    required this.isDark,
  });

  final List<String> labels;
  final int active;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final secondaryColor = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    return Row(
      children: List.generate(
        labels.length,
            (index) {
          final selected = index == active;

          return Expanded(
            child: Container(
              margin: EdgeInsets.only(
                right: index == labels.length - 1
                    ? 0
                    : 7,
              ),
              padding:
              const EdgeInsets.symmetric(
                vertical: 11,
                horizontal: 5,
              ),
              decoration: BoxDecoration(
                color: selected
                    ? AppColors.primary
                    .withValues(alpha: 0.09)
                    : isDark
                    ? Colors.white
                    .withValues(alpha: 0.035)
                    : Colors.black
                    .withValues(alpha: 0.025),
                borderRadius:
                BorderRadius.circular(14),
                border: Border.all(
                  color: selected
                      ? AppColors.primary
                      .withValues(alpha: 0.14)
                      : Colors.transparent,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: selected
                          ? AppColors.primary
                          : secondaryColor.withValues(
                        alpha: 0.35,
                      ),
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    labels[index],
                    maxLines: 1,
                    overflow:
                    TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: selected
                          ? AppColors.primary
                          : secondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// SCENARIO PICKER
// ═════════════════════════════════════════════════════════════════════════════

class _ScenarioPicker extends StatelessWidget {
  const _ScenarioPicker({
    required this.l10n,
    required this.isDark,
    required this.onSelect,
  });

  final AppLocalizations l10n;
  final bool isDark;
  final ValueChanged<String> onSelect;

  @override
  Widget build(BuildContext context) {
    final titleColor = isDark
        ? AppColors.textPrimaryDark
        : AppColors.textPrimaryLight;

    final secondaryColor = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          _IconWell(
            icon: Iconsax.message_text_1,
            size: 52,
            iconSize: 23,
            color: AppColors.primary,
            isDark: isDark,
            strong: true,
          ),

          const SizedBox(height: 15),

          Text(
            l10n.chatPick,
            style: GoogleFonts.outfit(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              letterSpacing: -0.7,
              color: titleColor,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            'Выбери то, что ближе к твоему состоянию сейчас.',
            style: GoogleFonts.inter(
              fontSize: 12,
              height: 1.4,
              color: secondaryColor,
            ),
          ),

          const SizedBox(height: 22),

          _ScenarioCard(
            icon: Iconsax.flash_1,
            title: l10n.chatCraving,
            isDark: isDark,
            onTap: () => onSelect('craving'),
          ),

          const SizedBox(height: 11),

          _ScenarioCard(
            icon: Iconsax.activity,
            title: l10n.chatStress,
            isDark: isDark,
            onTap: () => onSelect('stress'),
          ),

          const SizedBox(height: 11),

          _ScenarioCard(
            icon: Iconsax.clock,
            title: l10n.chatBoredom,
            isDark: isDark,
            onTap: () => onSelect('boredom'),
          ),
        ],
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// SCENARIO CARD
// ═════════════════════════════════════════════════════════════════════════════

class _ScenarioCard extends StatelessWidget {
  const _ScenarioCard({
    required this.icon,
    required this.title,
    required this.isDark,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final bool isDark;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final secondaryColor = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    final titleColor = isDark
        ? AppColors.textPrimaryDark
        : AppColors.textPrimaryLight;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius:
        BorderRadius.circular(22),
        splashColor: AppColors.primary
            .withValues(alpha: 0.055),
        highlightColor: AppColors.primary
            .withValues(alpha: 0.025),
        child: Ink(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isDark
                ? AppColors.cardDark
                : AppColors.cardLight,
            borderRadius:
            BorderRadius.circular(22),
            border: Border.all(
              color: isDark
                  ? Colors.white
                  .withValues(alpha: 0.055)
                  : Colors.black
                  .withValues(alpha: 0.045),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(
                  alpha: isDark ? 0.10 : 0.025,
                ),
                blurRadius: 18,
                offset: const Offset(0, 7),
              ),
            ],
          ),
          child: Row(
            children: [
              _IconWell(
                icon: icon,
                size: 48,
                iconSize: 21,
                color: AppColors.primary,
                isDark: isDark,
              ),

              const SizedBox(width: 13),

              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: titleColor,
                  ),
                ),
              ),

              Container(
                width: 31,
                height: 31,
                decoration: BoxDecoration(
                  color: AppColors.primary
                      .withValues(alpha: 0.065),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Iconsax.arrow_right_3,
                  size: 14,
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

// ═════════════════════════════════════════════════════════════════════════════
// CHAT BUBBLE
// ═════════════════════════════════════════════════════════════════════════════

class _ChatBubble extends StatelessWidget {
  const _ChatBubble({
    required this.line,
    required this.isDark,
  });

  final _ChatLine line;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final secondaryColor = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    return Align(
      alignment: line.mine
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        constraints:
        const BoxConstraints(
          maxWidth: 300,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          gradient: line.mine
              ? LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.primaryDark,
              AppColors.primary,
            ],
          )
              : null,
          color: line.mine
              ? null
              : isDark
              ? AppColors.cardDark
              : AppColors.cardLight,
          borderRadius:
          BorderRadius.only(
            topLeft: const Radius.circular(18),
            topRight:
            const Radius.circular(18),
            bottomLeft: Radius.circular(
              line.mine ? 18 : 5,
            ),
            bottomRight: Radius.circular(
              line.mine ? 5 : 18,
            ),
          ),
          border: line.mine
              ? null
              : Border.all(
            color: isDark
                ? Colors.white
                .withValues(alpha: 0.05)
                : Colors.black
                .withValues(alpha: 0.045),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(
                alpha: isDark ? 0.08 : 0.018,
              ),
              blurRadius: 14,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Text(
          line.text,
          style: GoogleFonts.inter(
            fontSize: 12.5,
            height: 1.4,
            fontWeight: FontWeight.w500,
            color: line.mine
                ? Colors.white
                : secondaryColor,
          ),
        ),
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// QUICK REPLIES
// ═════════════════════════════════════════════════════════════════════════════

class _QuickReplies extends StatelessWidget {
  const _QuickReplies({
    required this.l10n,
    required this.isDark,
    required this.onWalk,
    required this.onWater,
    required this.onBreathe,
  });

  final AppLocalizations l10n;
  final bool isDark;
  final VoidCallback onWalk;
  final VoidCallback onWater;
  final VoidCallback onBreathe;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics:
      const BouncingScrollPhysics(),
      child: Row(
        children: [
          _QuickChip(
            label: l10n.chatNeedWalk,
            icon: Iconsax.routing,
            isDark: isDark,
            onTap: onWalk,
          ),

          const SizedBox(width: 7),

          _QuickChip(
            label: l10n.chatNeedWater,
            icon: Iconsax.drop,
            isDark: isDark,
            onTap: onWater,
          ),

          const SizedBox(width: 7),

          _QuickChip(
            label: l10n.chatNeedBreathe,
            icon: Iconsax.wind_2,
            isDark: isDark,
            onTap: onBreathe,
          ),
        ],
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// QUICK CHIP
// ═════════════════════════════════════════════════════════════════════════════

class _QuickChip extends StatelessWidget {
  const _QuickChip({
    required this.label,
    required this.icon,
    required this.isDark,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final bool isDark;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final secondaryColor = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius:
        BorderRadius.circular(999),
        splashColor: AppColors.primary
            .withValues(alpha: 0.055),
        child: Ink(
          padding:
          const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 9,
          ),
          decoration: BoxDecoration(
            color: isDark
                ? AppColors.cardDark
                : AppColors.cardLight,
            borderRadius:
            BorderRadius.circular(999),
            border: Border.all(
              color: isDark
                  ? Colors.white
                  .withValues(alpha: 0.055)
                  : Colors.black
                  .withValues(alpha: 0.045),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 14,
                color: AppColors.primary,
              ),

              const SizedBox(width: 6),

              Text(
                label,
                style: GoogleFonts.inter(
                  fontSize: 10.5,
                  fontWeight: FontWeight.w600,
                  color: secondaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// ACTION BUTTON
// ═════════════════════════════════════════════════════════════════════════════

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.label,
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              color,
              color.withValues(alpha: 0.82),
            ],
          ),
          borderRadius:
          BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: color.withValues(
                alpha: 0.20,
              ),
              blurRadius: 20,
              spreadRadius: -5,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: ElevatedButton.icon(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 19,
          ),
          label: Text(
            label,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor:
            Colors.transparent,
            foregroundColor: Colors.white,
            shadowColor: Colors.transparent,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(18),
            ),
          ),
        ),
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// MICRO HINT
// ═════════════════════════════════════════════════════════════════════════════

class _MicroHint extends StatelessWidget {
  const _MicroHint({
    required this.icon,
    required this.text,
    required this.isDark,
  });

  final IconData icon;
  final String text;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    final color = isDark
        ? AppColors.textSecondaryDark
        : AppColors.textSecondaryLight;

    return Row(
      mainAxisAlignment:
      MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 13,
          color: color.withValues(alpha: 0.55),
        ),

        const SizedBox(width: 5),

        Flexible(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 10.5,
              fontWeight: FontWeight.w500,
              color: color.withValues(alpha: 0.65),
            ),
          ),
        ),
      ],
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// CIRCLE BUTTON
// ═════════════════════════════════════════════════════════════════════════════

class _CircleButton extends StatelessWidget {
  const _CircleButton({
    required this.icon,
    required this.isDark,
    required this.onTap,
  });

  final IconData icon;
  final bool isDark;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final iconColor = isDark
        ? AppColors.textPrimaryDark
        : AppColors.textPrimaryLight;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius:
        BorderRadius.circular(15),
        splashColor: AppColors.primary
            .withValues(alpha: 0.07),
        child: Ink(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: isDark
                ? AppColors.surfaceDark
                : AppColors.surfaceLight,
            borderRadius:
            BorderRadius.circular(15),
            border: Border.all(
              color: isDark
                  ? Colors.white
                  .withValues(alpha: 0.06)
                  : Colors.black
                  .withValues(alpha: 0.045),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(
                  alpha: isDark ? 0.10 : 0.02,
                ),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Icon(
            icon,
            size: 18,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// PREMIUM ICON WELL
// ═════════════════════════════════════════════════════════════════════════════

class _IconWell extends StatelessWidget {
  const _IconWell({
    required this.icon,
    required this.size,
    required this.iconSize,
    required this.color,
    required this.isDark,
    this.strong = false,
  });

  final IconData icon;
  final double size;
  final double iconSize;
  final Color color;
  final bool isDark;
  final bool strong;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            color.withValues(
              alpha: strong ? 0.18 : 0.12,
            ),
            color.withValues(
              alpha: strong ? 0.075 : 0.055,
            ),
          ],
        ),
        borderRadius:
        BorderRadius.circular(
          size * 0.30,
        ),
        border: Border.all(
          color: color.withValues(
            alpha: strong ? 0.15 : 0.09,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: color.withValues(
              alpha: strong ? 0.10 : 0.045,
            ),
            blurRadius: strong ? 18 : 10,
            spreadRadius: -3,
          ),
        ],
      ),
      child: Icon(
        icon,
        size: iconSize,
        color: color,
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// CHAT MODEL
// ═════════════════════════════════════════════════════════════════════════════

class _ChatLine {
  final bool mine;
  final String text;

  const _ChatLine(
      this.mine,
      this.text,
      );
}