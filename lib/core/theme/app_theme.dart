
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
static const primary = Color(0xFF0F9D8E);
static const primaryLight = Color(0xFF3BC4B5);
static const primaryDark = Color(0xFF0A7368);

static const accent = Color(0xFF7B6CDB);
static const coral = Color(0xFFE86B5A);
static const amber = Color(0xFFE8A838);

static const backgroundLight = Color(0xFFF6F3EC);
static const backgroundDark = Color(0xFF0C1419);

static const surfaceLight = Color(0xFFFFFFFF);
static const surfaceDark = Color(0xFF152028);

static const cardLight = Color(0xFFFFFFFF);
static const cardDark = Color(0xFF1A2830);

static const textPrimaryLight = Color(0xFF1C2A33);
static const textPrimaryDark = Color(0xFFF3F6F4);

static const textSecondaryLight = Color(0xFF66747C);
static const textSecondaryDark = Color(0xFF9AABAD);

static const success = Color(0xFF2BB673);
static const warning = Color(0xFFE8A838);
static const error = Color(0xFFE86B5A);

static const levelGradient = [
Color(0xFF0F9D8E),
Color(0xFF3BC4B5),
];

static const sosGradient = [
Color(0xFFE86B5A),
Color(0xFFF08A6A),
];

static const journalGradient = [
Color(0xFF7B6CDB),
Color(0xFF9B8FF0),
];
}

class AppRadii {
static const card = 24.0;
static const button = 18.0;
static const pill = 999.0;
}

class AppTheme {
static ThemeData get light {
return ThemeData(
useMaterial3: true,
brightness: Brightness.light,

scaffoldBackgroundColor: AppColors.backgroundLight,

primaryColor: AppColors.primary,

colorScheme: const ColorScheme.light(
primary: AppColors.primary,
secondary: AppColors.accent,
tertiary: AppColors.coral,
surface: AppColors.surfaceLight,
error: AppColors.error,
),

textTheme: _textTheme(
AppColors.textPrimaryLight,
AppColors.textSecondaryLight,
),

appBarTheme: AppBarTheme(
backgroundColor: Colors.transparent,
elevation: 0,
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
contentPadding: const EdgeInsets.symmetric(
horizontal: 20,
vertical: 18,
),
),
);
}

static ThemeData get dark {
return ThemeData(
useMaterial3: true,
brightness: Brightness.dark,

scaffoldBackgroundColor: AppColors.backgroundDark,

primaryColor: AppColors.primaryLight,

colorScheme: const ColorScheme.dark(
primary: AppColors.primaryLight,
secondary: AppColors.accent,
tertiary: AppColors.coral,
surface: AppColors.surfaceDark,
error: AppColors.error,
),

textTheme: _textTheme(
AppColors.textPrimaryDark,
AppColors.textSecondaryDark,
),

appBarTheme: AppBarTheme(
backgroundColor: Colors.transparent,
elevation: 0,
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
contentPadding: const EdgeInsets.symmetric(
horizontal: 20,
vertical: 18,
),
),
);
}

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

