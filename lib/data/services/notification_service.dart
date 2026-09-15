
import 'dart:convert';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/data/latest.dart' as tz_data;
import 'package:timezone/timezone.dart' as tz;

import 'motivation_service.dart';

class NotificationPrefs {
final bool enabled;
final int checkInHour;
final int checkInMinute;
final bool morningMotivation;
final bool eveningMood;

const NotificationPrefs({
this.enabled = false,
this.checkInHour = 20,
this.checkInMinute = 0,
this.morningMotivation = true,
this.eveningMood = false,
});

NotificationPrefs copyWith({
bool? enabled,
int? checkInHour,
int? checkInMinute,
bool? morningMotivation,
bool? eveningMood,
}) {
return NotificationPrefs(
enabled: enabled ?? this.enabled,
checkInHour: checkInHour ?? this.checkInHour,
checkInMinute: checkInMinute ?? this.checkInMinute,
morningMotivation:
morningMotivation ?? this.morningMotivation,
eveningMood: eveningMood ?? this.eveningMood,
);
}

Map<String, dynamic> toJson() {
return {
'enabled': enabled,
'checkInHour': checkInHour,
'checkInMinute': checkInMinute,
'morningMotivation': morningMotivation,
'eveningMood': eveningMood,
};
}

factory NotificationPrefs.fromJson(
Map<String, dynamic> json,
) {
return NotificationPrefs(
enabled: json['enabled'] is bool
? json['enabled'] as bool
    : false,
checkInHour: json['checkInHour'] is int
? json['checkInHour'] as int
    : 20,
checkInMinute: json['checkInMinute'] is int
? json['checkInMinute'] as int
    : 0,
morningMotivation: json['morningMotivation'] is bool
? json['morningMotivation'] as bool
    : true,
eveningMood: json['eveningMood'] is bool
? json['eveningMood'] as bool
    : false,
);
}
}

class NotificationService {
NotificationService._();

// ─────────────────────────────────────────────────────────────
// Storage
// ─────────────────────────────────────────────────────────────

static const String _prefsKey =
'puffree_notification_prefs';

// ─────────────────────────────────────────────────────────────
// Notification IDs
// ─────────────────────────────────────────────────────────────

static const int _morningNotificationId = 1001;
static const int _checkInNotificationId = 1002;
static const int _eveningNotificationId = 1003;

// ─────────────────────────────────────────────────────────────
// Channel
// ─────────────────────────────────────────────────────────────

static const String _channelId = 'puffree_reminders';
static const String _channelName = 'Puffree reminders';
static const String _channelDescription =
'Daily motivation, check-ins and journal reminders';

// ─────────────────────────────────────────────────────────────
// Plugin
// ─────────────────────────────────────────────────────────────

static final FlutterLocalNotificationsPlugin _plugin =
FlutterLocalNotificationsPlugin();

static bool _ready = false;

// ─────────────────────────────────────────────────────────────
// Initialization
// ─────────────────────────────────────────────────────────────

static Future<void> init() async {
if (_ready) return;

try {
tz_data.initializeTimeZones();

tz.setLocalLocation(
tz.getLocation('Asia/Baku'),
);

const androidSettings =
AndroidInitializationSettings(
'@mipmap/ic_launcher',
);

const iosSettings =
DarwinInitializationSettings();

const settings = InitializationSettings(
android: androidSettings,
iOS: iosSettings,
);

await _plugin.initialize(settings);

await _createAndroidChannel();

_ready = true;
} catch (_) {
_ready = false;
}
}

static Future<void> _createAndroidChannel() async {
final android = _plugin
    .resolvePlatformSpecificImplementation<
AndroidFlutterLocalNotificationsPlugin>();

if (android == null) return;

const channel = AndroidNotificationChannel(
_channelId,
_channelName,
description: _channelDescription,
importance: Importance.defaultImportance,
);

await android.createNotificationChannel(channel);
}

// ─────────────────────────────────────────────────────────────
// Preferences
// ─────────────────────────────────────────────────────────────

static Future<NotificationPrefs> loadPrefs() async {
try {
final prefs =
await SharedPreferences.getInstance();

final raw = prefs.getString(_prefsKey);

if (raw == null || raw.trim().isEmpty) {
return const NotificationPrefs();
}

final decoded = jsonDecode(raw);

if (decoded is! Map<String, dynamic>) {
return const NotificationPrefs();
}

return NotificationPrefs.fromJson(decoded);
} catch (_) {
return const NotificationPrefs();
}
}

static Future<void> savePrefs(
NotificationPrefs value,
) async {
final prefs =
await SharedPreferences.getInstance();

await prefs.setString(
_prefsKey,
jsonEncode(value.toJson()),
);

await applySchedule(value);
}

// ─────────────────────────────────────────────────────────────
// Permissions
// ─────────────────────────────────────────────────────────────

static Future<bool> requestPermission() async {
if (!_ready) {
await init();
}

try {
bool androidGranted = true;
bool iosGranted = true;

final android = _plugin
    .resolvePlatformSpecificImplementation<
AndroidFlutterLocalNotificationsPlugin>();

if (android != null) {
androidGranted =
await android.requestNotificationsPermission() ??
false;
}

final ios = _plugin
    .resolvePlatformSpecificImplementation<
IOSFlutterLocalNotificationsPlugin>();

if (ios != null) {
iosGranted =
await ios.requestPermissions(
alert: true,
badge: true,
sound: true,
) ??
false;
}

return androidGranted && iosGranted;
} catch (_) {
return false;
}
}

// ─────────────────────────────────────────────────────────────
// Schedule
// ─────────────────────────────────────────────────────────────

static Future<void> applySchedule(
NotificationPrefs prefs, {
String languageCode = 'ru',
int currentDay = 1,
}) async {
if (!_ready) {
await init();
}

if (!_ready) return;

await _plugin.cancelAll();

if (!prefs.enabled) return;

// ─────────────────────────────────────────────────────────
// Morning motivation
// ─────────────────────────────────────────────────────────

if (prefs.morningMotivation) {
final body =
MotivationService.getMotivationForDay(
currentDay,
languageCode: languageCode,
);

await _daily(
id: _morningNotificationId,
hour: 9,
minute: 0,
title: languageCode.startsWith('ru')
? 'Доброе утро ☀️'
    : 'Good morning ☀️',
body: body,
);
}

// ─────────────────────────────────────────────────────────
// Daily check-in
// ─────────────────────────────────────────────────────────

await _daily(
id: _checkInNotificationId,
hour: prefs.checkInHour,
minute: prefs.checkInMinute,
title: languageCode.startsWith('ru')
? 'Puffree'
    : 'Puffree',
body: languageCode.startsWith('ru')
? 'Как прошёл твой день? Отметь свой прогресс.'
    : 'How was your day? Check in and track your progress.',
);

// ─────────────────────────────────────────────────────────
// Evening mood
// ─────────────────────────────────────────────────────────

if (prefs.eveningMood) {
await _daily(
id: _eveningNotificationId,
hour: 21,
minute: 30,
title: languageCode.startsWith('ru')
? 'Вечерний check-in 🌙'
    : 'Evening check-in 🌙',
body: languageCode.startsWith('ru')
? 'Как ты сегодня? Загляни в дневник и отметь настроение.'
    : 'How are you feeling today? Open your journal and check in.',
);
}
}

// ─────────────────────────────────────────────────────────────
// Daily notification
// ─────────────────────────────────────────────────────────────

static Future<void> _daily({
required int id,
required int hour,
required int minute,
required String title,
required String body,
}) async {
final now = tz.TZDateTime.now(tz.local);

var scheduled = tz.TZDateTime(
tz.local,
now.year,
now.month,
now.day,
hour,
minute,
);

if (!scheduled.isAfter(now)) {
scheduled = scheduled.add(
const Duration(days: 1),
);
}

const details = NotificationDetails(
android: AndroidNotificationDetails(
_channelId,
_channelName,
channelDescription: _channelDescription,
importance: Importance.defaultImportance,
priority: Priority.defaultPriority,
icon: '@mipmap/ic_launcher',
),
iOS: DarwinNotificationDetails(
presentAlert: true,
presentBadge: true,
presentSound: true,
),
);

await _plugin.zonedSchedule(
id,
title,
body,
scheduled,
details,
androidScheduleMode:
AndroidScheduleMode.inexactAllowWhileIdle,
uiLocalNotificationDateInterpretation:
UILocalNotificationDateInterpretation.absoluteTime,
matchDateTimeComponents:
DateTimeComponents.time,
);
}

// ─────────────────────────────────────────────────────────────
// Cancel
// ─────────────────────────────────────────────────────────────

static Future<void> cancelAll() async {
if (!_ready) return;

await _plugin.cancelAll();
}

static Future<void> cancelMorning() async {
if (!_ready) return;

await _plugin.cancel(
_morningNotificationId,
);
}

static Future<void> cancelCheckIn() async {
if (!_ready) return;

await _plugin.cancel(
_checkInNotificationId,
);
}

static Future<void> cancelEvening() async {
if (!_ready) return;

await _plugin.cancel(
_eveningNotificationId,
);
}
}

