import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> initializeNotifications() async {
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('@mipmap/ic_launcher');
  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );
  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
}

Future<void> displayAndroidNotification(RemoteMessage message) async {
  // Initialize channels on Android
  await initializeNotifications();
  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
        '1',
        'julian',
        channelDescription: 'citofony',
        importance: Importance.max,
        priority: Priority.high,
        ticker: 'ticker',
        icon: 'mipmap/ic_launcher',
      );
  const NotificationDetails platformChannelSpecifics = NotificationDetails(
    android: androidPlatformChannelSpecifics,
  );
  await flutterLocalNotificationsPlugin.show(
    0, // Notification ID
    message.notification?.title ?? "no llego",
    message.notification?.body ?? "no llego cuerpo",
    platformChannelSpecifics,
    payload: 'item x',
  );
}
