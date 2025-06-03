import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  bool isMuted = false;
  bool isSpeakerOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  SizedBox(height: 30),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://i.pravatar.cc/300', // Puedes reemplazarlo
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Llamando a...',
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Julián Molina',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '00:45',
                    style: TextStyle(fontSize: 18, color: Colors.black38),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _CallButton(
                    icon: isMuted ? Icons.mic_off : Icons.mic,
                    label: isMuted ? 'Activar' : 'Silencio',
                    onPressed: () => setState(() => isMuted = !isMuted),
                  ),
                  _CallButton(
                    icon: (Icons.call_end_sharp),
                    label: 'Colgar',
                    color: Colors.red,
                    onPressed: () => Navigator.pop(context),
                  ),
                  _CallButton(
                    icon: isSpeakerOn ? Icons.volume_down : (Icons.volume_off),
                    label: isSpeakerOn ? 'Auricular' : 'Altavoz',
                    onPressed: () => setState(() => isSpeakerOn = !isSpeakerOn),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CallButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;
  final Color? color;

  const _CallButton({
    required this.icon,
    required this.label,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final primaryColor = color ?? Colors.purple;

    return Column(
      children: [
        FloatingActionButton(
          onPressed: onPressed,
          backgroundColor: primaryColor,
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(color: Colors.black87)),
      ],
    );
  }
}
