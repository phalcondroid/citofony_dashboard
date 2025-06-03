import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';

class AudioCallScreen extends StatefulWidget {
  final RTCVideoRenderer localRenderer;
  final RTCPeerConnection peerConnection;
  final MediaStream localStream;

  const AudioCallScreen({
    super.key,
    required this.localRenderer,
    required this.peerConnection,
    required this.localStream,
  });

  @override
  State<AudioCallScreen> createState() => _AudioCallScreenState();
}

class _AudioCallScreenState extends State<AudioCallScreen> {
  bool _isMuted = false;

  void _toggleMute() {
    setState(() {
      _isMuted = !_isMuted;
      widget.localStream.getAudioTracks().first.enabled = !_isMuted;
    });
  }

  void _hangUp() {
    widget.peerConnection.close();
    widget.localStream.dispose();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("LLamando a recepcion...")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Icon(Icons.person, size: 50, color: Colors.indigo),
            ),
            const SizedBox(height: 20),
            const Text(
              "En llamada...",
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _button(
                  icon: _isMuted ? Icons.mic_off : Icons.mic,
                  onPressed: _toggleMute,
                  color: _isMuted ? Colors.red : Colors.white,
                ),
                const SizedBox(width: 40),
                _button(
                  icon: Icons.call_end,
                  onPressed: _hangUp,
                  color: Colors.redAccent,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _button({
    required IconData icon,
    required VoidCallback onPressed,
    required Color color,
  }) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: const CircleBorder(),
      fillColor: Colors.white24,
      padding: const EdgeInsets.all(20),
      child: Icon(icon, color: color, size: 30),
    );
  }
}
