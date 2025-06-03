import 'package:flutter/material.dart';

class IncomingCallScreen extends StatelessWidget {
  final VoidCallback onAccept;
  final VoidCallback onReject;

  const IncomingCallScreen({
    super.key,
    required this.onAccept,
    required this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.phone_in_talk_rounded,
              size: 100,
              color: Colors.greenAccent,
            ),
            const SizedBox(height: 20),
            const Text(
              'Incoming call',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _button(Icons.call_end, Colors.red, onReject),
                const SizedBox(width: 60),
                _button(Icons.call, Colors.green, onAccept),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _button(IconData icon, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 35,
        backgroundColor: color,
        child: Icon(icon, color: Colors.white, size: 30),
      ),
    );
  }
}
