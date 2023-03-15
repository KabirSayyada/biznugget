import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart';
import 'package:timezone/timezone.dart';

import 'statics.dart';

enum NotificationChannel {
  messages,
}

class NotificationService {
  static final _plugin = FlutterLocalNotificationsPlugin();

  static Future<void> setup() async {
    const initSettings = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );

    await _plugin.initialize(initSettings).then((_) {
      logger.d("setup success");
    }).catchError((Object error) {
      logger.e("setup failed", error);
    });
  }

  static Future<void> add({
    required String title,
    required String body,
    Duration delay = const Duration(seconds: 1),
    required NotificationChannel channel,
  }) async {
    initializeTimeZones();

    final scheduledTime = TZDateTime.fromMillisecondsSinceEpoch(
      local,
      DateTime.now().millisecondsSinceEpoch + delay.inMilliseconds,
    );

    final details = NotificationDetails(
      iOS: const DarwinNotificationDetails(),
      android: AndroidNotificationDetails(
        channel.name, // channel Id
        channel.name, // channel Name
      ),
    );

    await _plugin.zonedSchedule(
      0,
      title,
      body,
      scheduledTime,
      details,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidAllowWhileIdle: true,
    );
  }
}
