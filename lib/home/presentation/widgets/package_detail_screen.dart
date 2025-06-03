import 'package:flutter/material.dart';

class PackageDetailScreen extends StatelessWidget {
  final Map<String, dynamic> data;

  const PackageDetailScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final imageUrls = List<String>.from(data['images'] ?? []);
    return Scaffold(
      appBar: AppBar(title: const Text("Package Details")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Carrier: ${data['carrier']}"),
            Text("Received by: ${data['guard']}"),
            Text("Time: ${data['time']}"),
            const SizedBox(height: 12),
            const Text("Photos:"),
            const SizedBox(height: 8),
            SizedBox(
              height: 120,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: imageUrls.length,
                separatorBuilder: (_, __) => const SizedBox(width: 8),
                itemBuilder: (_, i) => Image.network(imageUrls[i]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
