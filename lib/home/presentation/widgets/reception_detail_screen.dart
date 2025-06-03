import 'package:flutter/material.dart';

class ReceptionDetailScreen extends StatelessWidget {
  final Map<String, dynamic> data;

  const ReceptionDetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Reception Message")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Type: ${data['type']}"),
            Text("Message: ${data['message']}"),
            Text("Time: ${data['time']}"),
            const SizedBox(height: 12),
            if (data['image'] != null)
              Image.network(data['image'], height: 200),
          ],
        ),
      ),
    );
  }
}
