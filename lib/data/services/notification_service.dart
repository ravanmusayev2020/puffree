    import 'dart:convert';

    import 'package:flutter_local_notifications/flutter_local_notifications.dart';
    import 'package:shared_preferences/shared_preferences.dart';
    import 'package:timezone/data/latest_all.dart' as tz_data;
    import 'package:timezone/timezone.dart' as tz;

    import 'notification_content_service.dart';

    class NotificationPrefs {
      final bool enabled;
      final int checkInHour;
      final int checkInMinute;
      final bool morningMotivation;
      final bool eveningMood;
      final bool milestoneNotifications;
      final bool relapseSupport;
      final bool inactivityReminders;

      const NotificationPrefs({
        this.enabled = false,
        this.checkInHour = 20,
        this.checkInMinute = 0,
        this.morningMotivation = true,
        this.eveningMood = false,
        this.milestoneNotifications = true,
        this.relapseSupport = true,
        this.inactivityReminders = true,
      });

      NotificationPrefs copyWith({
        bool? enabled,
        int? checkInHour,
        int? checkInMinute,
        bool? morningMotivation,
        bool? eveningMood,
        bool? milestoneNotifications,
        bool? relapseSupport,
        bool? inactivityReminders,
      }) {
        return NotificationPrefs(
          enabled: enabled ?? this.enabled,
          checkInHour: checkInHour ?? this.checkInHour,
          checkInMinute: checkInMinute ?? this.checkInMinute,
          morningMotivation:
          morningMotivation ?? this.morningMotivation,
          eveningMood: eveningMood ?? this.eveningMood,
          milestoneNotifications:
          milestoneNotifications ?? this.milestoneNotifications,
          relapseSupport:
          relapseSupport ?? this.relapseSupport,
          inactivityReminders:
          inactivityReminders ?? this.inactivityReminders,
        );
      }

      Map<String, dynamic> toJson() {
        return {
          'enabled': enabled,
          'checkInHour': checkInHour,
          'checkInMinute': checkInMinute,
          'morningMotivation': morningMotivation,
          'eveningMood': eveningMood,
          'milestoneNotifications': milestoneNotifications,
          'relapseSupport': relapseSupport,
          'inactivityReminders': inactivityReminders,
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
          morningMotivation:
          json['morningMotivation'] is bool
              ? json['morningMotivation'] as bool
              : true,
          eveningMood:
          json['eveningMood'] is bool
              ? json['eveningMood'] as bool
              : false,
          milestoneNotifications:
          json['milestoneNotifications'] is bool
              ? json['milestoneNotifications'] as bool
              : true,
          relapseSupport:
          json['relapseSupport'] is bool
              ? json['relapseSupport'] as bool
              : true,
          inactivityReminders:
          json['inactivityReminders'] is bool
              ? json['inactivityReminders'] as bool
              : true,
        );
      }
    }

    class NotificationService {
      NotificationService._();

      static const String _prefsKey =
          'puffree_notification_prefs';

      // ============================================================
      // IDs
      // ============================================================

      static const int _morningNotificationId = 1001;
      static const int _checkInNotificationId = 1002;
      static const int _eveningNotificationId = 1003;

      static const int _milestoneBaseId = 2000;

      static const int _inactivity1Id = 3001;
      static const int _inactivity2Id = 3002;
      static const int _inactivity3Id = 3003;

      static const int _relapseId = 4001;

      // ============================================================
      // Channel
      // ============================================================

      static const String _channelId = 'puffree_reminders';

      static const String _channelName =
          'Puffree reminders';

      static const String _channelDescription =
          'Motivation, progress and helpful reminders';

      // ============================================================
      // Plugin
      // ============================================================

      static final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();

      static bool _ready = false;

      // ============================================================
      // Initialization
      // ============================================================

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

          await _plugin.initialize(
            settings: settings,
            onDidReceiveNotificationResponse: _onNotificationTap,
          );

          await _createAndroidChannel();

          _ready = true;
        } catch (e) {
          _ready = false;
        }
      }

      static void _onNotificationTap(
          NotificationResponse response,
          ) {
        final payload = response.payload;

        if (payload == null || payload.isEmpty) {
          return;
        }

        // Здесь позже подключим навигацию.
        //
        // Например:
        //
        // milestone_7     -> ProgressScreen
        // daily_checkin   -> DailyScreen
        // evening_mood    -> JournalScreen
        // relapse         -> Home/SOS
      }

      static Future<void> _createAndroidChannel() async {
        final android =
        _plugin.resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>();

        if (android == null) return;

        const channel = AndroidNotificationChannel(
          _channelId,
          _channelName,
          description: _channelDescription,
          importance: Importance.defaultImportance,
        );

        await android.createNotificationChannel(
          channel,
        );
      }

      // ============================================================
      // Permissions
      // ============================================================

      static Future<bool> requestPermission() async {
        if (!_ready) {
          await init();
        }

        if (!_ready) return false;

        try {
          bool granted = true;

          final android =
          _plugin.resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>();

          if (android != null) {
            granted =
                await android.requestNotificationsPermission() ??
                    false;
          }

          final ios =
          _plugin.resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>();

          if (ios != null) {
            granted =
                await ios.requestPermissions(
                  alert: true,
                  badge: true,
                  sound: true,
                ) ??
                    false;
          }

          return granted;
        } catch (_) {
          return false;
        }
      }

      // ============================================================
      // Preferences
      // ============================================================

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
          NotificationPrefs value, {
            String languageCode = 'en',
            DateTime? quitDate,
            int currentDay = 0,
          }) async {
        final prefs =
        await SharedPreferences.getInstance();

        await prefs.setString(
          _prefsKey,
          jsonEncode(value.toJson()),
        );

        await applySchedule(
          value,
          languageCode: languageCode,
          quitDate: quitDate,
          currentDay: currentDay,
        );
      }

      // ============================================================
      // Main scheduler
      // ============================================================

      static Future<void> applySchedule(
          NotificationPrefs prefs, {
            String languageCode = 'en',
            DateTime? quitDate,
            int currentDay = 0,
          }) async {
        if (!_ready) {
          await init();
        }

        if (!_ready) return;

        await cancelDailyNotifications();
        await cancelMilestones();
        await cancelInactivity();
        await cancelRelapse();

        if (!prefs.enabled) return;

        // ----------------------------------------------------------
        // Morning
        // ----------------------------------------------------------

        if (prefs.morningMotivation) {
          final content =
          await NotificationContentService.morning(
            languageCode: languageCode,
            currentDay: currentDay,
          );

          await _daily(
            id: _morningNotificationId,
            hour: 9,
            minute: 0,
            title: content.title,
            body: content.body,
            payload: content.payload,
          );
        }

        // ----------------------------------------------------------
        // Check-in
        // ----------------------------------------------------------

        final checkIn =
        await NotificationContentService.checkIn(
          languageCode: languageCode,
        );

        await _daily(
          id: _checkInNotificationId,
          hour: prefs.checkInHour,
          minute: prefs.checkInMinute,
          title: checkIn.title,
          body: checkIn.body,
          payload: checkIn.payload,
        );

        // ----------------------------------------------------------
        // Evening mood
        // ----------------------------------------------------------

        if (prefs.eveningMood) {
          final content =
          await NotificationContentService.evening(
            languageCode: languageCode,
          );

          await _daily(
            id: _eveningNotificationId,
            hour: 21,
            minute: 30,
            title: content.title,
            body: content.body,
            payload: content.payload,
          );
        }

        // ----------------------------------------------------------
        // Milestones
        // ----------------------------------------------------------

        if (prefs.milestoneNotifications &&
            quitDate != null) {
          await scheduleMilestones(
            quitDate: quitDate,
            languageCode: languageCode,
          );
        }
      }

      // ============================================================
      // Daily
      // ============================================================

      static Future<void> _daily({
        required int id,
        required int hour,
        required int minute,
        required String title,
        required String body,
        String? payload,
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

        await _plugin.zonedSchedule(
          id: id,
          title: title,
          body: body,
          scheduledDate: scheduled,
          notificationDetails: _notificationDetails(),
          androidScheduleMode:
          AndroidScheduleMode.inexactAllowWhileIdle,
          payload: payload,
          matchDateTimeComponents:
          DateTimeComponents.time,
        );
      }

      // ============================================================
      // Milestones
      // ============================================================

      static const List<int> milestoneDays = [
        1,
        3,
        7,
        14,
        21,
        30,
        60,
        90,
        180,
        365,
      ];

      static Future<void> scheduleMilestones({
        required DateTime quitDate,
        required String languageCode,
      }) async {
        if (!_ready) {
          await init();
        }

        if (!_ready) return;

        final now = tz.TZDateTime.now(tz.local);

        for (final days in milestoneDays) {
          final milestoneDate = DateTime(
            quitDate.year,
            quitDate.month,
            quitDate.day,
          ).add(
            Duration(days: days),
          );

          var scheduled = tz.TZDateTime(
            tz.local,
            milestoneDate.year,
            milestoneDate.month,
            milestoneDate.day,
            10,
            0,
          );

          // Если сегодня уже наступил milestone,
          // его не планируем заново.
          if (!scheduled.isAfter(now)) {
            continue;
          }

          final content =
          await NotificationContentService.milestone(
            languageCode: languageCode,
            days: days,
          );

          await _plugin.zonedSchedule(
            id: _milestoneBaseId + days,
            title: content.title,
            body: content.body,
            scheduledDate: scheduled,
            notificationDetails: _notificationDetails(),
            androidScheduleMode:
            AndroidScheduleMode.inexactAllowWhileIdle,
            payload: content.payload,
          );
        }
      }

      // ============================================================
      // Immediate notification
      // ============================================================

      static Future<void> showNow({
        required String title,
        required String body,
        String? payload,
      }) async {
        if (!_ready) {
          await init();
        }

        if (!_ready) return;

        await _plugin.show(
          id: DateTime.now().millisecondsSinceEpoch %
              2147483647,
          title: title,
          body: body,
          notificationDetails: _notificationDetails(),
          payload: payload,
        );
      }

      // ============================================================
      // Details
      // ============================================================

      static NotificationDetails _notificationDetails() {
        return const NotificationDetails(
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
      }

      // ============================================================
      // Cancel
      // ============================================================

      static Future<void> cancelDailyNotifications() async {
        if (!_ready) return;

        await _plugin.cancel(
          id: _morningNotificationId,
        );

        await _plugin.cancel(
          id: _checkInNotificationId,
        );

        await _plugin.cancel(
          id: _eveningNotificationId,
        );
      }

      static Future<void> cancelMilestones() async {
        if (!_ready) return;

        for (final days in milestoneDays) {
          await _plugin.cancel(
            id: _milestoneBaseId + days,
          );
        }
      }

      static Future<void> cancelInactivity() async {
        if (!_ready) return;

        await _plugin.cancel(
          id: _inactivity1Id,
        );

        await _plugin.cancel(
          id: _inactivity2Id,
        );

        await _plugin.cancel(
          id: _inactivity3Id,
        );
      }

      static Future<void> cancelRelapse() async {
        if (!_ready) return;

        await _plugin.cancel(
          id: _relapseId,
        );
      }

      static Future<void> cancelAll() async {
        if (!_ready) return;

        await _plugin.cancelAll();
      }
    }