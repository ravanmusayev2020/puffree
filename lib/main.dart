import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                  //
                  // AuthScreen здесь НЕ используется.
                  //
                  // Всегда:
                  //
                  // Splash → MainShell
                  //
                  // AuthScreen открывается только вручную
                  // из Settings.
                  //
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

  @override
  void initState() {
    super.initState();

    _startApp();
  }

  Future<void> _startApp() async {
    // Даём SplashScreen нормально показать
    // бренд/анимацию приложения.

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

  @override
  Widget build(BuildContext context) {
    if (_showSplash) {
      return const SplashScreen();
    }

    return const MainShell();
  }
}