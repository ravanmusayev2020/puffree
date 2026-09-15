import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/theme/app_theme.dart';
import 'core/theme/theme_controller.dart';
import 'data/bloc/daily/daily_bloc.dart';
import 'data/bloc/premium/premium_bloc.dart';
import 'data/bloc/progress/progress_bloc.dart';
import 'data/bloc/progress/progress_event.dart';
import 'l10n/app_localizations.dart';
import 'presentation/screens/splash/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final themeController = ThemeController();

  await themeController.load();

  runApp(
    PuffreeApp(
      themeController: themeController,
    ),
  );
}

class PuffreeApp extends StatelessWidget {
  const PuffreeApp({
    super.key,
    required this.themeController,
  });

  final ThemeController themeController;

  @override
  Widget build(BuildContext context) {
    return ThemeControllerScope(
      controller: themeController,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<ProgressBloc>(
            create: (_) => ProgressBloc()..add(LoadProgress()),
          ),
          BlocProvider<PremiumBloc>(
            create: (_) => PremiumBloc(),
          ),
          BlocProvider<DailyBloc>(
            create: (_) => DailyBloc(),
          ),
        ],
        child: AnimatedBuilder(
          animation: themeController,
          builder: (context, _) {
            return MaterialApp(
              title: 'Puffree',
              debugShowCheckedModeBanner: false,
              theme: AppTheme.light,
              darkTheme: AppTheme.dark,
              themeMode: themeController.themeMode,
              localeResolutionCallback: (locale, supportedLocales) {
                if (locale == null) return const Locale('ru');
                for (final supportedLocale in supportedLocales) {
                  if (supportedLocale.languageCode == locale.languageCode) {
                    return supportedLocale;
                  }
                }
                return const Locale('en');
              },
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              builder: (context, child) {
                final isDark = Theme.of(context).brightness == Brightness.dark;

                return AnnotatedRegion<SystemUiOverlayStyle>(
                  value: SystemUiOverlayStyle(
                    statusBarColor: Colors.transparent,
                    statusBarIconBrightness:
                    isDark ? Brightness.light : Brightness.dark,
                    statusBarBrightness:
                    isDark ? Brightness.dark : Brightness.light,
                    systemNavigationBarColor: isDark
                        ? AppColors.backgroundDark
                        : AppColors.backgroundLight,
                    systemNavigationBarIconBrightness:
                    isDark ? Brightness.light : Brightness.dark,
                  ),
                  child: child ?? const SizedBox.shrink(),
                );
              },
              home: const SplashScreen(),
            );
          },
        ),
      ),
    );
  }
}