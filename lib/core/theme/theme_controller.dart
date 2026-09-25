import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AppThemeMode {
  system,
  light,
  dark,
}

class ThemeController extends ChangeNotifier {
  static const String _storageKey = 'puffree_theme_mode';

  AppThemeMode _mode = AppThemeMode.system;

  AppThemeMode get mode => _mode;

  ThemeMode get themeMode {
    switch (_mode) {
      case AppThemeMode.system:
        return ThemeMode.system;
      case AppThemeMode.light:
        return ThemeMode.light;
      case AppThemeMode.dark:
        return ThemeMode.dark;
    }
  }

  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();

    final raw = prefs.getString(_storageKey);

    if (raw == null || raw.isEmpty) {
      _mode = AppThemeMode.system;
      return;
    }

    switch (raw) {
      case 'system':
        _mode = AppThemeMode.system;
        break;
      case 'light':
        _mode = AppThemeMode.light;
        break;
      case 'dark':
        _mode = AppThemeMode.dark;
        break;
      default:
        _mode = AppThemeMode.system;
    }
  }

  Future<void> setMode(AppThemeMode mode) async {
    if (_mode == mode) {
      return;
    }

    _mode = mode;

    notifyListeners();

    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(
      _storageKey,
      mode.name,
    );
  }
}

class ThemeControllerScope extends InheritedNotifier<ThemeController> {
  const ThemeControllerScope({
    super.key,
    required ThemeController controller,
    required super.child,
  }) : super(
    notifier: controller,
  );

  ThemeController get controller => notifier!;
}