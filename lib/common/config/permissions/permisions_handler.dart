import 'package:permission_handler/permission_handler.dart';

Future<void> requestPermissions() async {
  final micStatus = await Permission.microphone.request();
  final camStatus =
      await Permission.camera.request(); // WebRTC a veces lo requiere

  if (micStatus != PermissionStatus.granted ||
      camStatus != PermissionStatus.granted) {
    throw Exception('Microphone and camera permissions not granted');
  }
}
