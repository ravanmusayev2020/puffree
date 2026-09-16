import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  // ─────────────────────────────────────────────
  // PRIMARY — VIBRANT ORANGE / RED
  // ─────────────────────────────────────────────

  static const primary = Color(0xFFFF5A36);
  static const primaryLight = Color(0xFFFF7654);
  static const primaryDark = Color(0xFFE63F24);

  // ─────────────────────────────────────────────
  // ACCENTS
  // ─────────────────────────────────────────────

  static const accent = Color(0xFFFF4965);
  static const accentLight = Color(0xFFFF7187);

  // Secondary warm orange
  static const orange = Color(0xFFFF8A3D);
  static const orangeLight = Color(0xFFFFA45F);
  static const orangeDark = Color(0xFFE96A20);

  // ─────────────────────────────────────────────
  // SEMANTIC COLORS
  // ─────────────────────────────────────────────

  // SOS / urgent actions
  static const coral = Color(0xFFFF4655);
  static const coralLight = Color(0xFFFF6875);

  // Warning / attention
  static const amber = Color(0xFFFFB547);
  static const amberLight = Color(0xFFFFC766);

  // Success / completed
  static const success = Color(0xFF35C98A);
  static const successLight = Color(0xFF5DE0A6);

  static const error = Color(0xFFFF4655);

  // ─────────────────────────────────────────────
  // LIGHT BACKGROUND
  // ─────────────────────────────────────────────

  static const backgroundLight = Color(0xFFF8F7F4);

  static const surfaceLight = Color(0xFFFFFFFF);

  static const cardLight = Color(0xFFFFFFFF);

  // Warm tinted surface
  static const softLight = Color(0xFFFFF1EC);

  // ─────────────────────────────────────────────
  // DARK BACKGROUND
  // ─────────────────────────────────────────────

  static const backgroundDark = Color(0xFF0D0D12);

  static const surfaceDark = Color(0xFF141419);

  static const cardDark = Color(0xFF1B1B22);

  static const softDark = Color(0xFF222229);

  // ─────────────────────────────────────────────
  // TEXT — LIGHT
  // ─────────────────────────────────────────────

  static const textPrimaryLight = Color(0xFF17151A);

  static const textSecondaryLight = Color(0xFF77727A);

  // ─────────────────────────────────────────────
  // TEXT — DARK
  // ─────────────────────────────────────────────

  static const textPrimaryDark = Color(0xFFF8F6F4);

  static const textSecondaryDark = Color(0xFFA9A5AA);

  // ─────────────────────────────────────────────
  // GRADIENTS
  // ─────────────────────────────────────────────

  static const levelGradient = [
    Color(0xFFFF5A36),
    Color(0xFFFF8A3D),
  ];

  static const premiumGradient = [
    Color(0xFFFF5A36),
    Color(0xFFFF4965),
  ];

  static const primaryGradient = [
    Color(0xFFFF4655),
    Color(0xFFFF6A3D),
  ];

  static const sunsetGradient = [
    Color(0xFFFF4655),
    Color(0xFFFF6A3D),
    Color(0xFFFFA13D),
  ];

  static const sosGradient = [
    Color(0xFFFF4655),
    Color(0xFFE92F42),
  ];

  static const journalGradient = [
    Color(0xFFFF6B5B),
    Color(0xFFFF4965),
  ];
}

class AppRadii {
  static const card = 24.0;
  static const button = 18.0;
  static const pill = 999.0;
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
        onPrimary: Color(0xFF2A0C05),

        secondary: AppColors.accentLight,
        onSecondary: Colors.white,

        tertiary: AppColors.orangeLight,
        onTertiary: Color(0xFF2A1105),

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

          foregroundColor: const Color(0xFF2A0C05),

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