import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../l10n/app_localizations.dart';

import '../../../core/theme/app_theme.dart';
import '../../../data/bloc/progress/progress_bloc.dart';
import '../../../data/bloc/progress/progress_state.dart';
import '../../widgets/bottom_nav.dart';
import '../onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  bool _navigated = false;

  late final AnimationController _ambientController;
  late final AnimationController _logoController;
  late final AnimationController _particleController;
  late final AnimationController _contentController;
  late final AnimationController _pulseController;

  @override
  void initState() {
    super.initState();

    _ambientController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat(reverse: true);

    _logoController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..forward();

    _particleController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    )..repeat();

    _contentController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    );

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2400),
    )..repeat(reverse: true);

    Future.delayed(
      const Duration(milliseconds: 260),
          () {
        if (!mounted) return;
        _contentController.forward();
      },
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _navigate();
    });
  }

  @override
  void dispose() {
    _ambientController.dispose();
    _logoController.dispose();
    _particleController.dispose();
    _contentController.dispose();
    _pulseController.dispose();
    super.dispose();
  }

  Future<void> _navigate() async {
    // Даём анимации нормально раскрыться.
    await Future.delayed(const Duration(milliseconds: 2600));

    if (!mounted || _navigated) return;

    final progressState = context.read<ProgressBloc>().state;

    bool onboardingCompleted = false;

    if (progressState is ProgressLoaded) {
      onboardingCompleted =
          progressState.progress.isOnboardingCompleted;
    }

    _navigated = true;

    final Widget destination = onboardingCompleted
        ? const MainShell()
        : const OnboardingScreen();

    if (!mounted) return;

    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => destination,
        transitionDuration: const Duration(milliseconds: 700),
        reverseTransitionDuration: const Duration(milliseconds: 300),
        transitionsBuilder: (_, animation, __, child) {
          final curved = CurvedAnimation(
            parent: animation,
            curve: Curves.easeOutCubic,
          );

          return FadeTransition(
            opacity: curved,
            child: child,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark =
        Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark
          ? AppColors.backgroundDark
          : AppColors.backgroundLight,
      body: AnimatedBuilder(
        animation: Listenable.merge([
          _ambientController,
          _logoController,
          _particleController,
          _contentController,
          _pulseController,
        ]),
        builder: (context, _) {
          return Stack(
            children: [
              _buildAmbientBackground(isDark),
              _buildParticles(isDark),
              _buildCenterContent(isDark),
              _buildBottomCaption(isDark),
            ],
          );
        },
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // BACKGROUND
  // ---------------------------------------------------------------------------

  Widget _buildAmbientBackground(bool isDark) {
    final t = _ambientController.value;

    return Positioned.fill(
      child: IgnorePointer(
        child: Stack(
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: isDark
                      ? const [
                    Color(0xFF071313),
                    Color(0xFF0A1B1B),
                    Color(0xFF0A1018),
                  ]
                      : const [
                    Color(0xFFF1FFF9),
                    Color(0xFFF5FAFF),
                    Color(0xFFFAFCFC),
                  ],
                ),
              ),
              child: const SizedBox.expand(),
            ),

            Positioned(
              top: -170 + t * 50,
              right: -100,
              child: _blurOrb(
                size: 420,
                color: AppColors.primary.withValues(
                  alpha: isDark ? 0.19 : 0.09,
                ),
              ),
            ),

            Positioned(
              bottom: -190 - t * 35,
              left: -120,
              child: _blurOrb(
                size: 440,
                color: AppColors.accent.withValues(
                  alpha: isDark ? 0.13 : 0.065,
                ),
              ),
            ),

            Positioned(
              top: 220 - t * 25,
              left: -90,
              child: _blurOrb(
                size: 210,
                color: AppColors.primaryLight.withValues(
                  alpha: isDark ? 0.07 : 0.045,
                ),
              ),
            ),

            Positioned(
              bottom: 100 + t * 30,
              right: -100,
              child: _blurOrb(
                size: 190,
                color: AppColors.primary.withValues(
                  alpha: isDark ? 0.055 : 0.035,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _blurOrb({
    required double size,
    required Color color,
  }) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(
        sigmaX: 50,
        sigmaY: 50,
      ),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // PARTICLES
  // ---------------------------------------------------------------------------

  Widget _buildParticles(bool isDark) {
    return Positioned.fill(
      child: IgnorePointer(
        child: CustomPaint(
          painter: _SplashParticlesPainter(
            progress: _particleController.value,
            primary: AppColors.primary,
            secondary: AppColors.primaryLight,
            dark: isDark,
          ),
        ),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // CENTER
  // ---------------------------------------------------------------------------

  Widget _buildCenterContent(bool isDark) {
    final contentProgress = Curves.easeOutCubic.transform(
      _contentController.value,
    );

    final logoProgress = Curves.easeOutBack.transform(
      _logoController.value.clamp(0.0, 1.0),
    );

    final pulse = 0.97 + (_pulseController.value * 0.035);

    return Positioned.fill(
      child: Center(
        child: Transform.translate(
          offset: Offset(
            0,
            18 * (1 - contentProgress),
          ),
          child: Opacity(
            opacity: contentProgress,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Transform.scale(
                  scale: logoProgress * pulse,
                  child: _buildLogo(isDark),
                ),

                const SizedBox(height: 28),

                Transform.translate(
                  offset: Offset(
                    0,
                    18 * (1 - contentProgress),
                  ),
                  child: _buildBrandText(isDark),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // LOGO
  // ---------------------------------------------------------------------------

  Widget _buildLogo(bool isDark) {
    return SizedBox(
      width: 164,
      height: 164,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Outer breathing glow.
          Container(
            width: 158,
            height: 158,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withValues(
                    alpha: isDark ? 0.12 : 0.08,
                  ),
                  blurRadius: 60,
                  spreadRadius: 12,
                ),
              ],
            ),
          ),

          // Animated orbital ring.
          Transform.rotate(
            angle: _particleController.value * math.pi * 2,
            child: CustomPaint(
              size: const Size(154, 154),
              painter: _SplashOrbitPainter(
                primary: AppColors.primary,
                secondary: AppColors.primaryLight,
                dark: isDark,
              ),
            ),
          ),

          // NEW PUFFREE LOGO
          ClipRRect(
            borderRadius: BorderRadius.circular(36),
            child: Container(
              width: 112,
              height: 112,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primary.withValues(
                      alpha: isDark ? 0.32 : 0.23,
                    ),
                    blurRadius: 38,
                    offset: const Offset(0, 16),
                  ),
                ],
              ),
              child: Image.asset(
                'assets/images/app_icon.png',
                width: 112,
                height: 112,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),

          // Small orbit dot.
          Transform.rotate(
            angle: -_particleController.value * math.pi * 2,
            child: SizedBox(
              width: 150,
              height: 150,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 7,
                  height: 7,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryLight,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primaryLight.withValues(
                          alpha: 0.65,
                        ),
                        blurRadius: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // BRAND TEXT
  // ---------------------------------------------------------------------------

  Widget _buildBrandText(bool isDark) {
    final l10n = AppLocalizations.of(context);
    return Column(
      children: [
        Text(
          'Puffree',
          style: GoogleFonts.outfit(
            fontSize: 42,
            fontWeight: FontWeight.w800,
            letterSpacing: -1.8,
            height: 1,
            color: isDark
                ? Colors.white
                : AppColors.textPrimaryLight,
          ),
        ),

        const SizedBox(height: 11),

        Text(
          l10n.tagline,
          style: GoogleFonts.inter(
            fontSize: 14.5,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.1,
            color: isDark
                ? Colors.white.withValues(alpha: 0.52)
                : AppColors.textSecondaryLight,
          ),
        ),

        const SizedBox(height: 22),

        _buildProgressLine(isDark),
      ],
    );
  }

  Widget _buildProgressLine(bool isDark) {
    return SizedBox(
      width: 100,
      height: 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              color: isDark
                  ? Colors.white.withValues(alpha: 0.07)
                  : Colors.black.withValues(alpha: 0.05),
            ),
            FractionallySizedBox(
              widthFactor: Curves.easeInOut.transform(
                _contentController.value,
              ),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.primary,
                      AppColors.primaryLight,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // BOTTOM
  // ---------------------------------------------------------------------------

  Widget _buildBottomCaption(bool isDark) {
    final l10n = AppLocalizations.of(context);
    final progress = Curves.easeOut.transform(
      _contentController.value,
    );

    return Positioned(
      left: 0,
      right: 0,
      bottom: 38,
      child: Opacity(
        opacity: progress,
        child: Column(
          children: [
            Text(
              l10n.splashCaption,
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: 10.5,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.1,
                color: isDark
                    ? Colors.white.withValues(alpha: 0.28)
                    : Colors.black.withValues(alpha: 0.30),
              ),
            ),
            const SizedBox(height: 9),
            Container(
              width: 34,
              height: 3,
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(
                  alpha: isDark ? 0.35 : 0.22,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// PUFFREE LOGO
// =============================================================================

class _PuffreeLogoPainter extends CustomPainter {
  final Color color;

  _PuffreeLogoPainter({
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(
      size.width / 2,
      size.height / 2,
    );

    final p = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.2
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    // Main flowing breeze.
    final path1 = Path()
      ..moveTo(size.width * 0.20, size.height * 0.43)
      ..cubicTo(
        size.width * 0.32,
        size.height * 0.30,
        size.width * 0.48,
        size.height * 0.34,
        size.width * 0.77,
        size.height * 0.22,
      );

    // Secondary flowing breeze.
    final path2 = Path()
      ..moveTo(size.width * 0.19, size.height * 0.60)
      ..cubicTo(
        size.width * 0.36,
        size.height * 0.48,
        size.width * 0.52,
        size.height * 0.55,
        size.width * 0.79,
        size.height * 0.42,
      );

    // Small lower wave.
    final path3 = Path()
      ..moveTo(size.width * 0.28, size.height * 0.72)
      ..cubicTo(
        size.width * 0.42,
        size.height * 0.64,
        size.width * 0.55,
        size.height * 0.72,
        size.width * 0.68,
        size.height * 0.64,
      );

    canvas.drawPath(path1, p);
    canvas.drawPath(path2, p);

    final smallPaint = Paint()
      ..color = color.withValues(alpha: 0.60)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.2
      ..strokeCap = StrokeCap.round;

    canvas.drawPath(path3, smallPaint);

    // Small breathing point.
    final dotPaint = Paint()
      ..color = color.withValues(alpha: 0.9);

    canvas.drawCircle(
      Offset(
        center.dx + size.width * 0.27,
        center.dy - size.height * 0.23,
      ),
      3,
      dotPaint,
    );
  }

  @override
  bool shouldRepaint(covariant _PuffreeLogoPainter oldDelegate) {
    return oldDelegate.color != color;
  }
}

// =============================================================================
// ORBIT
// =============================================================================

class _SplashOrbitPainter extends CustomPainter {
  final Color primary;
  final Color secondary;
  final bool dark;

  _SplashOrbitPainter({
    required this.primary,
    required this.secondary,
    required this.dark,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(
      size.width / 2,
      size.height / 2,
    );

    final radius = size.width * 0.43;

    final ring = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.1
      ..color = primary.withValues(
        alpha: dark ? 0.20 : 0.14,
      );

    canvas.drawCircle(
      center,
      radius,
      ring,
    );

    final ring2 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.8
      ..color = secondary.withValues(
        alpha: dark ? 0.12 : 0.09,
      );

    canvas.drawCircle(
      center,
      radius + 11,
      ring2,
    );

    // Small orbital points.
    for (var i = 0; i < 4; i++) {
      final angle = i * math.pi / 2;

      final point = Offset(
        center.dx + radius * math.cos(angle),
        center.dy + radius * math.sin(angle),
      );

      final dot = Paint()
        ..color = i.isEven
            ? primary.withValues(alpha: 0.75)
            : secondary.withValues(alpha: 0.55);

      canvas.drawCircle(
        point,
        i.isEven ? 2.8 : 2.1,
        dot,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _SplashOrbitPainter oldDelegate) {
    return oldDelegate.primary != primary ||
        oldDelegate.secondary != secondary ||
        oldDelegate.dark != dark;
  }
}

// =============================================================================
// PARTICLES
// =============================================================================

class _SplashParticlesPainter extends CustomPainter {
  final double progress;
  final Color primary;
  final Color secondary;
  final bool dark;

  _SplashParticlesPainter({
    required this.progress,
    required this.primary,
    required this.secondary,
    required this.dark,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final particles = <_SplashParticle>[
      _SplashParticle(
        x: 0.12,
        y: 0.25,
        radius: 2.2,
        speed: 0.8,
        phase: 0.1,
      ),
      _SplashParticle(
        x: 0.84,
        y: 0.22,
        radius: 1.8,
        speed: 0.65,
        phase: 0.32,
      ),
      _SplashParticle(
        x: 0.18,
        y: 0.67,
        radius: 1.6,
        speed: 0.55,
        phase: 0.52,
      ),
      _SplashParticle(
        x: 0.88,
        y: 0.72,
        radius: 2.4,
        speed: 0.75,
        phase: 0.75,
      ),
      _SplashParticle(
        x: 0.28,
        y: 0.16,
        radius: 1.4,
        speed: 0.9,
        phase: 0.21,
      ),
      _SplashParticle(
        x: 0.73,
        y: 0.82,
        radius: 1.5,
        speed: 0.62,
        phase: 0.61,
      ),
      _SplashParticle(
        x: 0.06,
        y: 0.46,
        radius: 1.2,
        speed: 0.48,
        phase: 0.42,
      ),
      _SplashParticle(
        x: 0.94,
        y: 0.48,
        radius: 1.3,
        speed: 0.58,
        phase: 0.18,
      ),
    ];

    for (var i = 0; i < particles.length; i++) {
      final particle = particles[i];

      final wave = math.sin(
        (progress * math.pi * 2 * particle.speed) +
            particle.phase * math.pi * 2,
      );

      final x = particle.x * size.width +
          math.sin(wave) * 7;

      final y = particle.y * size.height +
          math.cos(wave) * 10;

      final alphaBase = dark ? 0.28 : 0.18;

      final alpha = alphaBase +
          ((wave + 1) / 2) * 0.28;

      final paint = Paint()
        ..color = (i.isEven ? primary : secondary).withValues(
          alpha: alpha,
        );

      canvas.drawCircle(
        Offset(x, y),
        particle.radius,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _SplashParticlesPainter oldDelegate) {
    return oldDelegate.progress != progress ||
        oldDelegate.dark != dark;
  }
}

class _SplashParticle {
  final double x;
  final double y;
  final double radius;
  final double speed;
  final double phase;

  const _SplashParticle({
    required this.x,
    required this.y,
    required this.radius,
    required this.speed,
    required this.phase,
  });
}