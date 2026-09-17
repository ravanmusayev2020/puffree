import 'dart:math';

import 'package:flutter/material.dart';
import 'package:puffree/l10n/app_localizations.dart';

class NotificationContent {
  const NotificationContent({
    required this.title,
    required this.body,
    required this.payload,
  });

  final String title;
  final String body;
  final String payload;
}

class NotificationContentService {
  NotificationContentService._();

  static final Random _random = Random();

  /// Загружает AppLocalizations без BuildContext.
  ///
  /// Это важно, потому что локальные уведомления планируются
  /// из service layer, где у нас нет BuildContext.
  static Future<AppLocalizations> _localizations(
      String languageCode,
      ) async {
    final normalized = languageCode.toLowerCase();

    final locale = switch (normalized) {
      'ru' => const Locale('ru'),
      'az' => const Locale('az'),
      _ => const Locale('en'),
    };

    return AppLocalizations.delegate.load(locale);
  }

  // ============================================================
  // MORNING
  // ============================================================

  static Future<NotificationContent> morning({
    required String languageCode,
    required int currentDay,
  }) async {
    final l10n = await _localizations(languageCode);

    final messages = [
      NotificationContent(
        title: l10n.notificationMorningTitle1,
        body: l10n.notificationMorningBody1(
          currentDay,
        ),
        payload: 'morning',
      ),
      NotificationContent(
        title: l10n.notificationMorningTitle2,
        body: l10n.notificationMorningBody2,
        payload: 'morning',
      ),
      NotificationContent(
        title: l10n.notificationMorningTitle3,
        body: l10n.notificationMorningBody3,
        payload: 'morning',
      ),
      NotificationContent(
        title: l10n.notificationMorningTitle4,
        body: l10n.notificationMorningBody4,
        payload: 'morning',
      ),
      NotificationContent(
        title: l10n.notificationMorningTitle5,
        body: l10n.notificationMorningBody5,
        payload: 'morning',
      ),
    ];

    return messages[_random.nextInt(messages.length)];
  }

  // ============================================================
  // DAILY CHECK-IN
  // ============================================================

  static Future<NotificationContent> checkIn({
    required String languageCode,
  }) async {
    final l10n = await _localizations(languageCode);

    final messages = [
      NotificationContent(
        title: l10n.notificationCheckInTitle1,
        body: l10n.notificationCheckInBody1,
        payload: 'daily_checkin',
      ),
      NotificationContent(
        title: l10n.notificationCheckInTitle2,
        body: l10n.notificationCheckInBody2,
        payload: 'daily_checkin',
      ),
      NotificationContent(
        title: l10n.notificationCheckInTitle3,
        body: l10n.notificationCheckInBody3,
        payload: 'daily_checkin',
      ),
      NotificationContent(
        title: l10n.notificationCheckInTitle4,
        body: l10n.notificationCheckInBody4,
        payload: 'daily_checkin',
      ),
    ];

    return messages[_random.nextInt(messages.length)];
  }

  // ============================================================
  // EVENING / MOOD
  // ============================================================

  static Future<NotificationContent> evening({
    required String languageCode,
  }) async {
    final l10n = await _localizations(languageCode);

    final messages = [
      NotificationContent(
        title: l10n.notificationEveningTitle1,
        body: l10n.notificationEveningBody1,
        payload: 'evening_mood',
      ),
      NotificationContent(
        title: l10n.notificationEveningTitle2,
        body: l10n.notificationEveningBody2,
        payload: 'evening_mood',
      ),
      NotificationContent(
        title: l10n.notificationEveningTitle3,
        body: l10n.notificationEveningBody3,
        payload: 'evening_mood',
      ),
      NotificationContent(
        title: l10n.notificationEveningTitle4,
        body: l10n.notificationEveningBody4,
        payload: 'evening_mood',
      ),
    ];

    return messages[_random.nextInt(messages.length)];
  }

  // ============================================================
  // MILESTONE
  // ============================================================

  static Future<NotificationContent> milestone({
    required String languageCode,
    required int days,
  }) async {
    final l10n = await _localizations(languageCode);

    switch (days) {
      case 1:
        return NotificationContent(
          title: l10n.notificationMilestone1Title,
          body: l10n.notificationMilestone1Body,
          payload: 'milestone_1',
        );

      case 3:
        return NotificationContent(
          title: l10n.notificationMilestone3Title,
          body: l10n.notificationMilestone3Body,
          payload: 'milestone_3',
        );

      case 7:
        return NotificationContent(
          title: l10n.notificationMilestone7Title,
          body: l10n.notificationMilestone7Body,
          payload: 'milestone_7',
        );

      case 14:
        return NotificationContent(
          title: l10n.notificationMilestone14Title,
          body: l10n.notificationMilestone14Body,
          payload: 'milestone_14',
        );

      case 21:
        return NotificationContent(
          title: l10n.notificationMilestone21Title,
          body: l10n.notificationMilestone21Body,
          payload: 'milestone_21',
        );

      case 30:
        return NotificationContent(
          title: l10n.notificationMilestone30Title,
          body: l10n.notificationMilestone30Body,
          payload: 'milestone_30',
        );

      case 60:
        return NotificationContent(
          title: l10n.notificationMilestone60Title,
          body: l10n.notificationMilestone60Body,
          payload: 'milestone_60',
        );

      case 90:
        return NotificationContent(
          title: l10n.notificationMilestone90Title,
          body: l10n.notificationMilestone90Body,
          payload: 'milestone_90',
        );

      case 180:
        return NotificationContent(
          title: l10n.notificationMilestone180Title,
          body: l10n.notificationMilestone180Body,
          payload: 'milestone_180',
        );

      case 365:
        return NotificationContent(
          title: l10n.notificationMilestone365Title,
          body: l10n.notificationMilestone365Body,
          payload: 'milestone_365',
        );

      default:
        return NotificationContent(
          title: l10n.notificationMilestoneGenericTitle,
          body: l10n.notificationMilestoneGenericBody(days),
          payload: 'milestone_$days',
        );
    }
  }

  // ============================================================
  // RELAPSE
  // ============================================================

  static Future<NotificationContent> relapse({
    required String languageCode,
  }) async {
    final l10n = await _localizations(languageCode);

    final messages = [
      NotificationContent(
        title: l10n.notificationRelapseTitle1,
        body: l10n.notificationRelapseBody1,
        payload: 'relapse',
      ),
      NotificationContent(
        title: l10n.notificationRelapseTitle2,
        body: l10n.notificationRelapseBody2,
        payload: 'relapse',
      ),
      NotificationContent(
        title: l10n.notificationRelapseTitle3,
        body: l10n.notificationRelapseBody3,
        payload: 'relapse',
      ),
    ];

    return messages[_random.nextInt(messages.length)];
  }

  // ============================================================
  // INACTIVITY
  // ============================================================

  static Future<NotificationContent> inactivity({
    required String languageCode,
    required int inactiveDays,
  }) async {
    final l10n = await _localizations(languageCode);

    if (inactiveDays >= 3) {
      return NotificationContent(
        title: l10n.notificationInactive3Title,
        body: l10n.notificationInactive3Body,
        payload: 'inactivity_3',
      );
    }

    if (inactiveDays >= 2) {
      return NotificationContent(
        title: l10n.notificationInactive2Title,
        body: l10n.notificationInactive2Body,
        payload: 'inactivity_2',
      );
    }

    return NotificationContent(
      title: l10n.notificationInactive1Title,
      body: l10n.notificationInactive1Body,
      payload: 'inactivity_1',
    );
  }
}