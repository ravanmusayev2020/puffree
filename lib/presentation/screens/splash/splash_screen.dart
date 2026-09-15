
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

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

class _SplashScreenState extends State<SplashScreen> {
bool _navigated = false;

@override
void initState() {
super.initState();

WidgetsBinding.instance.addPostFrameCallback((_) {
_navigate();
});
}

Future<void> _navigate() async {
// Даём Flutter сначала нормально отрисовать Splash.
await Future.delayed(const Duration(milliseconds: 1200));

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
transitionDuration: const Duration(milliseconds: 350),
reverseTransitionDuration: const Duration(milliseconds: 250),
transitionsBuilder: (_, animation, __, child) {
return FadeTransition(
opacity: CurvedAnimation(
parent: animation,
curve: Curves.easeOut,
),
child: child,
);
},
),
);
}

@override
Widget build(BuildContext context) {
final isDark = Theme.of(context).brightness == Brightness.dark;

final backgroundColor = isDark
? AppColors.backgroundDark
    : AppColors.backgroundLight;

final titleColor = isDark
? AppColors.textPrimaryDark
    : AppColors.textPrimaryLight;

final subtitleColor = isDark
? AppColors.textSecondaryDark
    : AppColors.textSecondaryLight;

return Scaffold(
backgroundColor: backgroundColor,
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Container(
width: 88,
height: 88,
decoration: BoxDecoration(
gradient: const LinearGradient(
colors: [
AppColors.primary,
AppColors.primaryLight,
],
begin: Alignment.topLeft,
end: Alignment.bottomRight,
),
borderRadius: BorderRadius.circular(28),
boxShadow: [
BoxShadow(
color: AppColors.primary.withValues(alpha: 0.25),
blurRadius: 24,
offset: const Offset(0, 10),
),
],
),
child: const Center(
child: Text(
'🌿',
style: TextStyle(
fontSize: 42,
),
),
),
),
const SizedBox(height: 28),
Text(
'Puffree',
style: GoogleFonts.inter(
fontSize: 36,
fontWeight: FontWeight.w700,
letterSpacing: -1.2,
color: titleColor,
),
),
const SizedBox(height: 8),
Text(
'Свобода от курения',
style: GoogleFonts.inter(
fontSize: 15,
fontWeight: FontWeight.w400,
color: subtitleColor,
),
),
],
),
),
);
}
}

