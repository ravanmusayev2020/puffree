import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  // ─────────────────────────────────────────────
  // PRIMARY — AURORA VIOLET
  // ─────────────────────────────────────────────

  static const primary = Color(0xFF8B5CF6);
  static const primaryLight = Color(0xFFA78BFA);
  static const primaryDark = Color(0xFF5B21F6);

  // ─────────────────────────────────────────────
  // ACCENTS
  // ─────────────────────────────────────────────

  static const accent = Color(0xFFFF6B9D);
  static const accentLight = Color(0xFFFF9CBF);

  // Secondary — electric cyan
  static const orange = Color(0xFF22D3EE);
  static const orangeLight = Color(0xFF67E8F9);
  static const orangeDark = Color(0xFF0E9BB5);

  // ─────────────────────────────────────────────
  // SEMANTIC COLORS
  // ─────────────────────────────────────────────

  // SOS / urgent actions
  static const coral = Color(0xFFFF6B9D);
  static const coralLight = Color(0xFFFF9CBF);

  // Warning / attention
  static const amber = Color(0xFFFFC65C);
  static const amberLight = Color(0xFFFFD68C);

  // Success / completed
  static const success = Color(0xFF2DE0A6);
  static const successLight = Color(0xFF5FEFC0);

  static const error = Color(0xFFE84C6E);

  // ─────────────────────────────────────────────
  // LIGHT BACKGROUND
  // ─────────────────────────────────────────────

  static const backgroundLight = Color(0xFFF7F5FC);

  static const surfaceLight = Color(0xFFFFFFFF);

  static const cardLight = Color(0xFFFFFFFF);

  // Cool tinted surface
  static const softLight = Color(0xFFF3EFFE);

  // ─────────────────────────────────────────────
  // DARK BACKGROUND
  // ─────────────────────────────────────────────

  static const backgroundDark = Color(0xFF0B0B1E);

  static const surfaceDark = Color(0xFF14121F);

  static const cardDark = Color(0xFF1B1830);

  static const softDark = Color(0xFF231F3D);

  // ─────────────────────────────────────────────
  // TEXT — LIGHT
  // ─────────────────────────────────────────────

  static const textPrimaryLight = Color(0xFF15131C);

  static const textSecondaryLight = Color(0xFF726D7A);

  // ─────────────────────────────────────────────
  // TEXT — DARK
  // ─────────────────────────────────────────────

  static const textPrimaryDark = Color(0xFFF5F3FA);

  static const textSecondaryDark = Color(0xFFA39DB0);

  // ─────────────────────────────────────────────
  // GRADIENTS
  // ─────────────────────────────────────────────

  static const levelGradient = [
    Color(0xFF8B5CF6),
    Color(0xFF22D3EE),
  ];

  static const premiumGradient = [
    Color(0xFFFFC65C),
    Color(0xFFFF8A3D),
  ];

  static const primaryGradient = [
    Color(0xFF8B5CF6),
    Color(0xFF22D3EE),
  ];

  static const sunsetGradient = [
    Color(0xFFFF6B9D),
    Color(0xFF8B5CF6),
    Color(0xFF22D3EE),
  ];

  static const sosGradient = [
    Color(0xFFFF6B9D),
    Color(0xFFE84C6E),
  ];

  static const journalGradient = [
    Color(0xFFFF6B9D),
    Color(0xFF5B21F6),
  ];

  // ─────────────────────────────────────────────
  // 2026 REDESIGN TOKENS — glass / glow / mesh
  // Purely additive: nothing above was touched, so
  // no other screen that reads AppColors can break.
  // ─────────────────────────────────────────────

  static const glassLight = Color(0xB3FFFFFF);
  static const glassDark = Color(0x991B1830);

  static const glowPrimary = Color(0xFFA78BFA);
  static const glowAmber = Color(0xFFFFD68C);

  static const blobOrange = Color(0xFF8B5CF6);
  static const blobPink = Color(0xFF22D3EE);
  static const blobAmber = Color(0xFFFF6B9D);
  static const blobMint = Color(0xFF2DE0A6);

  static const heroBorderGradientLight = [
    Color(0x338B5CF6),
    Color(0x1122D3EE),
  ];

  static const heroBorderGradientDark = [
    Color(0x40A78BFA),
    Color(0x1A67E8F9),
  ];

  static const auroraGradient = [
    Color(0xFF8B5CF6),
    Color(0xFFFF6B9D),
    Color(0xFFFFC65C),
  ];
}

class AppRadii {
  static const card = 24.0;
  static const button = 18.0;
  static const pill = 999.0;

  // Additive — used by the redesigned home screen only.
  static const hero = 32.0;
  static const glass = 28.0;
}

class AppTheme {
  // ─────────────────────────────────────────────
  // LIGHT THEME
  // ─────────────────────────────────────────────

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      scaffoldBackgroundColor: AppColors.backgroundLight,

      primaryColor: AppColors.primary,

      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        onPrimary: Colors.white,

        secondary: AppColors.accent,
        onSecondary: Colors.white,

        tertiary: AppColors.orange,
        onTertiary: Colors.white,

        surface: AppColors.surfaceLight,
        onSurface: AppColors.textPrimaryLight,

        error: AppColors.error,
        onError: Colors.white,
      ),

      textTheme: _textTheme(
        AppColors.textPrimaryLight,
        AppColors.textSecondaryLight,
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,

        titleTextStyle: GoogleFonts.outfit(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimaryLight,
        ),

        iconTheme: const IconThemeData(
          color: AppColors.textPrimaryLight,
        ),
      ),

      cardTheme: CardThemeData(
        color: AppColors.cardLight,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppRadii.card,
          ),
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,

          elevation: 0,
          shadowColor: Colors.transparent,

          padding: const EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 16,
          ),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppRadii.button,
            ),
          ),

          textStyle: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,

        fillColor: AppColors.cardLight,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: AppColors.primary,
            width: 1.5,
          ),
        ),

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
      ),

      dividerTheme: DividerThemeData(
        color: Colors.black.withValues(alpha: 0.06),
        thickness: 1,
        space: 1,
      ),

      iconTheme: const IconThemeData(
        color: AppColors.textPrimaryLight,
      ),
    );
  }

  // ─────────────────────────────────────────────
  // DARK THEME
  // ─────────────────────────────────────────────

  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,

      scaffoldBackgroundColor: AppColors.backgroundDark,

      primaryColor: AppColors.primaryLight,

      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryLight,
        onPrimary: Color(0xFF1A0F3D),

        secondary: AppColors.accentLight,
        onSecondary: Color(0xFF3D0F1F),

        tertiary: AppColors.orangeLight,
        onTertiary: Color(0xFF06313A),

        surface: AppColors.surfaceDark,
        onSurface: AppColors.textPrimaryDark,

        error: AppColors.error,
        onError: Colors.white,
      ),

      textTheme: _textTheme(
        AppColors.textPrimaryDark,
        AppColors.textSecondaryDark,
      ),

      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,

        titleTextStyle: GoogleFonts.outfit(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimaryDark,
        ),

        iconTheme: const IconThemeData(
          color: AppColors.textPrimaryDark,
        ),
      ),

      cardTheme: CardThemeData(
        color: AppColors.cardDark,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppRadii.card,
          ),
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryLight,

          foregroundColor: const Color(0xFF1A0F3D),

          elevation: 0,
          shadowColor: Colors.transparent,

          padding: const EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 16,
          ),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppRadii.button,
            ),
          ),

          textStyle: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,

        fillColor: AppColors.cardDark,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: AppColors.primaryLight,
            width: 1.5,
          ),
        ),

        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
      ),

      dividerTheme: DividerThemeData(
        color: Colors.white.withValues(alpha: 0.07),
        thickness: 1,
        space: 1,
      ),

      iconTheme: const IconThemeData(
        color: AppColors.textPrimaryDark,
      ),
    );
  }

  // ─────────────────────────────────────────────
  // TYPOGRAPHY
  // ─────────────────────────────────────────────

  static TextTheme _textTheme(
      Color primary,
      Color secondary,
      ) {
    return TextTheme(
      displayLarge: GoogleFonts.outfit(
        fontSize: 36,
        fontWeight: FontWeight.w700,
        color: primary,
        letterSpacing: -1.2,
      ),

      displayMedium: GoogleFonts.outfit(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        color: primary,
        letterSpacing: -0.8,
      ),

      displaySmall: GoogleFonts.outfit(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: primary,
      ),

      headlineMedium: GoogleFonts.outfit(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: primary,
      ),

      titleLarge: GoogleFonts.outfit(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: primary,
      ),

      titleMedium: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: primary,
      ),

      bodyLarge: GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: primary,
      ),

      bodyMedium: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: secondary,
      ),

      bodySmall: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: secondary,
      ),

      labelLarge: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: primary,
      ),
    );
  }
}