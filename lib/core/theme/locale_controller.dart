import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleController extends ChangeNotifier {
  static const _key = 'puffree_locale';

  // Инициализируем системным языком устройства по умолчанию вместо 'en'
  Locale _locale = Locale(PlatformDispatcher.instance.locale.languageCode);

  Locale get locale => _locale;

  String get languageLabel {
    switch (_locale.languageCode) {
      case 'en': return 'English';
      case 'ru': return 'Русский';
      case 'az': return 'Azərbaycan';
      case 'ja': return '日本語';
      case 'it': return 'Italiano';
      case 'ar': return 'العربية';
      case 'de': return 'Deutsch';
      case 'es': return 'Español';
      case 'fr': return 'Français';
      case 'ko': return '한국어';
      case 'pt': return 'Português';
      case 'tr': return 'Türkçe';
      case 'zh': return '中文';
      default: return _locale.languageCode;
    }
  }

  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString(_key);

    if (code != null && code.isNotEmpty) {
      // Если пользователь уже выбирал язык ранее — применяем его
      _locale = Locale(code);
    } else {
      // При первом запуске (когда в shared_preferences ничего нет) берем текущий системный язык
      _locale = Locale(PlatformDispatcher.instance.locale.languageCode);
    }
    notifyListeners();
  }

  Future<void> setLocale(Locale locale) async {
    _locale = locale;
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, locale.languageCode);
  }
}

class LocaleControllerScope extends InheritedWidget {
  const LocaleControllerScope({
    super.key,
    required this.controller,
    required super.child,
  });

  final LocaleController controller;

  static LocaleController of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<LocaleControllerScope>();
    assert(scope != null, 'LocaleControllerScope not found');
    return scope!.controller;
  }

  @override
  bool updateShouldNotify(LocaleControllerScope oldWidget) =>
      controller != oldWidget.controller;
}