import 'package:citofony_dashboard/home/presentation/widgets/chat_screen.dart';
import 'package:citofony_dashboard/home/presentation/widgets/package_detail_screen.dart';
import 'package:citofony_dashboard/home/presentation/widgets/reservation_detail_screen.dart';
import 'package:flutter/material.dart';

enum NotificationType {
  water,
  electricity,
  internet,
  gas,
  package,
  reservation,
  securityMessage,
  food,
}

class AppNotification {
  final NotificationType type;
  final String title;
  final String body;
  final DateTime timestamp;
  final Map<String, dynamic>? data;

  AppNotification({
    required this.type,
    required this.title,
    required this.body,
    required this.timestamp,
    this.data,
  });
}

class NotificationCenterScreen extends StatelessWidget {
  final List<AppNotification> notifications;

  const NotificationCenterScreen({super.key, required this.notifications});

  Icon _getIcon(NotificationType type) {
    switch (type) {
      case NotificationType.food:
        return const Icon(Icons.restaurant, color: Colors.amber);
      case NotificationType.water:
        return const Icon(Icons.water_drop, color: Colors.blue);
      case NotificationType.electricity:
        return const Icon(Icons.electric_bolt, color: Colors.limeAccent);
      case NotificationType.gas:
        return const Icon(Icons.gas_meter, color: Colors.redAccent);
      case NotificationType.internet:
        return const Icon(
          Icons.signal_wifi_statusbar_connected_no_internet_4_outlined,
          color: Colors.tealAccent,
        );
      case NotificationType.package:
        return const Icon(Icons.local_shipping, color: Colors.teal);
      case NotificationType.reservation:
        return const Icon(Icons.event, color: Colors.deepPurple);
      case NotificationType.securityMessage:
        return const Icon(Icons.security, color: Colors.redAccent);
    }
  }

  void _openDetail(BuildContext context, AppNotification notification) {
    switch (notification.type) {
      case NotificationType.food:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => PackageDetailScreen(data: notification.data!),
          ),
        );
        break;
      case NotificationType.water:
      case NotificationType.gas:
      case NotificationType.internet:
      case NotificationType.electricity:
        break;
      case NotificationType.package:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => PackageDetailScreen(data: notification.data!),
          ),
        );
        break;
      case NotificationType.reservation:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ReservationDetailScreen(data: notification.data!),
          ),
        );
        break;
      case NotificationType.securityMessage:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ChatScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        final notification = notifications[index];
        return ListTile(
          leading: _getIcon(notification.type),
          title: Text(notification.title),
          subtitle: Text(notification.body),
          trailing: Text(
            TimeOfDay.fromDateTime(notification.timestamp).format(context),
          ),
          onTap: () => _openDetail(context, notification),
        );
      },
    );
  }
}
