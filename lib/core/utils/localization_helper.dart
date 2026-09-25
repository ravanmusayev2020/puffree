import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

class LocalizationHelper {
  LocalizationHelper._();

  static AppLocalizations? _localizations;

  /// Инициализация локализации.
  ///
  /// Вызывается один раз после того, как MaterialApp
  /// уже находится внутри Localizations.
  static void initialize(BuildContext context) {
    _localizations = AppLocalizations.of(context);
  }

  /// Текущая локализация приложения.
  static AppLocalizations get l10n {
    final localizations = _localizations;

    if (localizations == null) {
      throw StateError(
        'LocalizationHelper is not initialized. '
            'Call LocalizationHelper.initialize(context) first.',
      );
    }

    return localizations;
  }

  static bool get isInitialized =>
      _localizations != null;

  /// Сброс локализации.
  static void clear() {
    _localizations = null;
  }
}