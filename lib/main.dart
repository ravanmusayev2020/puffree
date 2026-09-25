import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puffree/presentation/widgets/soft_paywall_sheet.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:puffree/data/bloc/journal/journal_bloc.dart';
import 'package:puffree/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:puffree/presentation/widgets/bottom_nav.dart';

import 'core/theme/app_theme.dart';
import 'core/theme/locale_controller.dart';
import 'core/theme/theme_controller.dart';

import 'data/bloc/auth/auth_bloc.dart';
import 'data/bloc/auth/auth_event.dart';
import 'data/bloc/daily/daily_bloc.dart';
import 'data/bloc/premium/premium_bloc.dart';
import 'data/bloc/progress/progress_bloc.dart';
import 'data/bloc/progress/progress_event.dart';
import 'data/bloc/progress/progress_state.dart';

import 'data/services/auth_service.dart';
import 'data/services/notification_service.dart';

import 'firebase_options.dart';
import 'l10n/app_localizations.dart';

import 'presentation/screens/splash/splash_screen.dart';

Future<void> main() async {
WidgetsFlutterBinding.ensureInitialized();

// ─────────────────────────────────────────────
// FIREBASE
// ─────────────────────────────────────────────

await Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform,
);

// ─────────────────────────────────────────────
// NOTIFICATIONS
// ─────────────────────────────────────────────

await NotificationService.init();

// ─────────────────────────────────────────────
// CONTROLLERS
// ─────────────────────────────────────────────

final themeController = ThemeController();
final localeController = LocaleController();

await Future.wait([
themeController.load(),
localeController.load(),
]);

// ─────────────────────────────────────────────
// APP
// ─────────────────────────────────────────────

runApp(
PuffreeApp(
themeController: themeController,
localeController: localeController,
),
);
}

class PuffreeApp extends StatelessWidget {
const PuffreeApp({
super.key,
required this.themeController,
required this.localeController,
});

final ThemeController themeController;
final LocaleController localeController;

@override
Widget build(BuildContext context) {
return ThemeControllerScope(
controller: themeController,
child: LocaleControllerScope(
controller: localeController,
child: RepositoryProvider<AuthService>(
create: (_) => AuthService(),
child: MultiBlocProvider(
providers: [
// ─────────────────────────────────────────
// AUTH
// ─────────────────────────────────────────

BlocProvider<AuthBloc>(
create: (context) => AuthBloc(
authService: context.read<AuthService>(),
)..add(
AuthCheckRequested(),
),
),

// ─────────────────────────────────────────
// PROGRESS
// ─────────────────────────────────────────

BlocProvider<ProgressBloc>(
create: (_) => ProgressBloc()
..add(
LoadProgress(),
),
),

// ─────────────────────────────────────────
// PREMIUM
// ─────────────────────────────────────────

BlocProvider<PremiumBloc>(
create: (_) => PremiumBloc(),
),

// ─────────────────────────────────────────
// JOURNAL
// ─────────────────────────────────────────

BlocProvider<JournalBloc>(
create: (_) => JournalBloc(),
),

// ─────────────────────────────────────────
// DAILY
// ─────────────────────────────────────────

BlocProvider<DailyBloc>(
create: (_) => DailyBloc(),
),
],
child: AnimatedBuilder(
animation: Listenable.merge([
themeController,
localeController,
]),
builder: (context, _) {
return MaterialApp(
title: 'Puffree',
debugShowCheckedModeBanner: false,

// ─────────────────────────────────────
// THEME
// ─────────────────────────────────────

theme: AppTheme.light,
darkTheme: AppTheme.dark,
themeMode: themeController.themeMode,

// ─────────────────────────────────────
// LOCALIZATION
// ─────────────────────────────────────

locale: localeController.locale,

localizationsDelegates:
AppLocalizations.localizationsDelegates,

supportedLocales:
AppLocalizations.supportedLocales,

localeResolutionCallback: (
locale,
supportedLocales,
) {
final selected =
localeController.locale;

for (final supported in supportedLocales) {
if (supported.languageCode ==
selected.languageCode) {
return selected;
}
}

return const Locale('en');
},

// ─────────────────────────────────────
// SYSTEM UI
// ─────────────────────────────────────

builder: (context, child) {
final isDark =
Theme.of(context).brightness ==
Brightness.dark;

return AnnotatedRegion<
SystemUiOverlayStyle>(
value: SystemUiOverlayStyle(
statusBarColor: Colors.transparent,

statusBarIconBrightness: isDark
? Brightness.light
    : Brightness.dark,

statusBarBrightness: isDark
? Brightness.dark
    : Brightness.light,

systemNavigationBarColor: isDark
? AppColors.backgroundDark
    : AppColors.backgroundLight,

systemNavigationBarIconBrightness: isDark
? Brightness.light
    : Brightness.dark,
),
child: child ??
const SizedBox.shrink(),
);
},

// ─────────────────────────────────────
// ROOT
// ─────────────────────────────────────

home: const _AppRoot(),
);
},
),
),
),
),
);
}
}

class _AppRoot extends StatefulWidget {
const _AppRoot();

@override
State<_AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<_AppRoot> {
bool _showSplash = true;
bool _softPaywallShowing = false;

@override
void initState() {
super.initState();
_startApp();
}

// ─────────────────────────────────────────────
// SPLASH
// ─────────────────────────────────────────────

Future<void> _startApp() async {
await Future.delayed(
const Duration(
milliseconds: 1800,
),
);

if (!mounted) {
return;
}

setState(() {
_showSplash = false;
});
}

// ─────────────────────────────────────────────
// ONBOARDING PAYWALL
// ─────────────────────────────────────────────

Future<void> _showOnboardingPaywall() async {
if (_softPaywallShowing || !mounted) {
return;
}

final prefs = await SharedPreferences.getInstance();

final alreadyShown =
prefs.getBool('onboarding_paywall_shown') ?? false;

if (alreadyShown || !mounted) {
return;
}

_softPaywallShowing = true;

await showModalBottomSheet<void>(
context: context,
isScrollControlled: true,
useSafeArea: true,
backgroundColor: Colors.transparent,
barrierColor: Colors.black.withValues(
alpha: 0.55,
),
isDismissible: false,
enableDrag: false,
builder: (_) {
return const SoftPaywallSheet();
},
);

// Пользователь закрыл Soft Paywall.
// Больше после onboarding его не показываем.
await prefs.setBool(
'onboarding_paywall_shown',
true,
);

_softPaywallShowing = false;
}

// ─────────────────────────────────────────────
// BUILD
// ─────────────────────────────────────────────

@override
Widget build(BuildContext context) {
if (_showSplash) {
return const SplashScreen();
}

return BlocBuilder<ProgressBloc, ProgressState>(
builder: (context, state) {
// ─────────────────────────────────────────
// LOADING
// ─────────────────────────────────────────

if (state is ProgressInitial ||
state is ProgressLoading) {
return const _AppLoadingScreen();
}

// ─────────────────────────────────────────
// ERROR
// ─────────────────────────────────────────

if (state is ProgressError) {
return _AppErrorScreen(
message: state.message,
);
}

// ─────────────────────────────────────────
// LOADED
// ─────────────────────────────────────────

if (state is ProgressLoaded) {
final progress = state.progress;

// Onboarding ещё не закончен.
if (!progress.isOnboardingCompleted) {
return const OnboardingScreen();
}

// Onboarding закончен.
// Показываем основной интерфейс сразу.
//
// После первого кадра открываем Soft Paywall.
WidgetsBinding.instance.addPostFrameCallback((_) {
_showOnboardingPaywall();
});

return const MainShell();
}

return const _AppLoadingScreen();
},
);
}
}

// ─────────────────────────────────────────────────
// LOADING SCREEN
// ─────────────────────────────────────────────────

class _AppLoadingScreen extends StatelessWidget {
const _AppLoadingScreen();

@override
Widget build(BuildContext context) {
final isDark =
Theme.of(context).brightness == Brightness.dark;

return Scaffold(
backgroundColor: isDark
? AppColors.backgroundDark
    : AppColors.backgroundLight,
body: const Center(
child: SizedBox(
width: 28,
height: 28,
child: CircularProgressIndicator(
strokeWidth: 2.4,
color: AppColors.primary,
),
),
),
);
}
}

// ─────────────────────────────────────────────────
// ERROR SCREEN
// ─────────────────────────────────────────────────

class _AppErrorScreen extends StatelessWidget {
const _AppErrorScreen({
required this.message,
});

final String message;

@override
Widget build(BuildContext context) {
return Scaffold(
body: Center(
child: Padding(
padding: const EdgeInsets.all(24),
child: Text(
message,
textAlign: TextAlign.center,
),
),
),
);
}
}
