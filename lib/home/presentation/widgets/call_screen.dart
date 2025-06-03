import 'package:flutter/material.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class CallPage extends StatefulWidget {
  final String username;
  const CallPage({super.key, required this.username});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  late IO.Socket socket;
  RTCPeerConnection? _peerConnection;
  final _localRenderer = RTCVideoRenderer();
  MediaStream? _localStream;

  @override
  void initState() {
    super.initState();
    initSocket();
    initRenderers();
    createStream();
  }

  void initSocket() {
    socket = IO.io(
      'http://34.57.140.65:3000',
      IO.OptionBuilder().setTransports(['websocket']).build(),
    );

    socket.onConnect((_) {
      print('Connected');
      socket.emit('join', widget.username);
    });

    socket.on('offer', (data) async {
      await _createPeerConnection();
      await _peerConnection?.setRemoteDescription(
        RTCSessionDescription(data['sdp'], 'offer'),
      );
      RTCSessionDescription answer = await _peerConnection!.createAnswer();
      await _peerConnection!.setLocalDescription(answer);
      socket.emit('answer', {'sdp': answer.sdp, 'target': data['caller']});
    });

    socket.on('answer', (data) async {
      await _peerConnection?.setRemoteDescription(
        RTCSessionDescription(data['sdp'], 'answer'),
      );
    });

    socket.on('ice-candidate', (data) async {
      _peerConnection?.addCandidate(
        RTCIceCandidate(
          data['candidate']['candidate'],
          data['candidate']['sdpMid'],
          data['candidate']['sdpMLineIndex'],
        ),
      );
    });
  }

  Future<void> initRenderers() async {
    await _localRenderer.initialize();
  }

  Future<void> createStream() async {
    final stream = await navigator.mediaDevices.getUserMedia({'audio': true});
    _localStream = stream;
  }

  Future<void> _createPeerConnection() async {
    final config = {
      'iceServers': [
        {'urls': 'stun:stun.l.google.com:19302'},
      ],
    };

    _peerConnection = await createPeerConnection(config);

    _localStream = await navigator.mediaDevices.getUserMedia({'audio': true});

    // ✅ El código correcto con Unified Plan
    for (var track in _localStream!.getTracks()) {
      _peerConnection!.addTrack(track, _localStream!);
    }

    _peerConnection!.onIceCandidate = (candidate) {
      socket.emit('ice-candidate', {
        'target': "VXdj3dfs3tKwnbvuAAAH",
        'candidate': {
          'candidate': candidate.candidate,
          'sdpMid': candidate.sdpMid,
          'sdpMLineIndex': candidate.sdpMLineIndex,
        },
      });
    };
  }

  Future<void> makeCall(String targetId) async {
    await _createPeerConnection();
    RTCSessionDescription offer = await _peerConnection!.createOffer();
    await _peerConnection!.setLocalDescription(offer);
    socket.emit('offer', {'sdp': offer.sdp, 'target': targetId});
  }

  @override
  void dispose() {
    _localRenderer.dispose();
    socket.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Voice Call')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => makeCall('VXdj3dfs3tKwnbvuAAAH'),
            child: const Text("Call"),
          ),
        ],
      ),
    );
  }
}
