import 'package:citofony_dashboard/common/config/ui/helpers/pagination_utils.dart';
import 'package:citofony_dashboard/common/config/ui/helpers/standard_text.dart';
import 'package:citofony_dashboard/home/presentation/widgets/chat_screen.dart';
import 'package:flutter/material.dart';

class NotificationHomeList extends StatelessWidget {
  const NotificationHomeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            iconColor: Colors.lightBlue,
            hoverColor: Colors.blueGrey,
            leading: Icon(Icons.policy_rounded, color: Colors.green),
            title: StandardText(text: "Mensaje portería"),
            subtitle: StandardText(
              text: "Mon 21 Apr 9 2025",
              size: TextSize.small,
            ),
            onTap: () {
              goPage(context: context, destination: ChatScreen());
            },
            trailing: Icon(Icons.check_circle, color: Colors.green),
          ),
          ListTile(
            iconColor: Colors.lightBlue,
            hoverColor: Colors.blueGrey,
            leading: Icon(Icons.water_drop_sharp),
            title: StandardText(text: "Servicio del agua"),
            subtitle: StandardText(
              text: "Mon 21 Apr 9 2025",
              size: TextSize.small,
            ),
            trailing: Icon(Icons.check_circle, color: Colors.green),
          ),
          ListTile(
            iconColor: Colors.lightBlue,
            hoverColor: Colors.blueGrey,
            leading: Icon(
              Icons.energy_savings_leaf_outlined,
              color: Colors.amber,
            ),
            title: StandardText(text: "Servicio de energía"),
            subtitle: StandardText(
              text: "Mon 21 Apr 9 2025",
              size: TextSize.small,
            ),
            trailing: Icon(Icons.check_circle, color: Colors.green),
          ),
          ListTile(
            iconColor: Colors.lightBlue,
            hoverColor: Colors.blueGrey,
            leading: Icon(
              Icons.signal_wifi_statusbar_connected_no_internet_4_outlined,
              color: Colors.lightGreenAccent,
            ),
            title: StandardText(text: "Servicio de internet"),
            subtitle: StandardText(
              text: "Mon 21 Apr 9 2025",
              size: TextSize.small,
            ),
            trailing: Icon(Icons.check_circle, color: Colors.green),
          ),
          ListTile(
            iconColor: Colors.lightBlue,
            hoverColor: Colors.blueGrey,
            leading: Icon(Icons.local_gas_station, color: Colors.orange),
            title: StandardText(text: "Servicio de Gas"),
            subtitle: StandardText(
              text: "Mon 21 Apr 9 2025",
              size: TextSize.small,
            ),
            trailing: Icon(Icons.check_circle, color: Colors.green),
          ),
          ListTile(
            iconColor: Colors.lightBlue,
            hoverColor: Colors.blueGrey,
            leading: Icon(Icons.warning, color: Colors.redAccent),
            title: StandardText(text: "Aviso de multa!"),
            subtitle: StandardText(
              text: "Mon 21 Apr 9 2025",
              size: TextSize.small,
            ),
            trailing: Icon(Icons.check_circle, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
