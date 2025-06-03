import 'package:flutter/material.dart';

class Message {
  final String text;
  final bool isMe;
  final bool isAudio;

  Message({required this.text, required this.isMe, this.isAudio = false});
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Message> _messages = [
    Message(text: "¡Hola! En la recepción esta Andrés", isMe: false),
    Message(text: "Vale, por favor que siga", isMe: true),
    Message(text: "🎤 Mensaje de voz", isMe: false, isAudio: true),
    Message(text: "Autoriza, Julian Molina", isMe: true),
  ];

  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _isRecording = false;

  void _sendMessage({bool isAudio = false}) {
    final text = _controller.text.trim();
    if (isAudio || text.isNotEmpty) {
      setState(() {
        _messages.add(
          Message(
            text: isAudio ? "🎤 Audio enviado" : text,
            isMe: true,
            isAudio: isAudio,
          ),
        );
      });
      _controller.clear();
      _scrollToBottom();
    }
  }

  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Widget _buildMessage(Message msg) {
    return Align(
      alignment: msg.isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          color:
              msg.isMe
                  ? Theme.of(context).colorScheme.primary.withOpacity(0.85)
                  : Colors.grey[300],
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(12),
            topRight: const Radius.circular(12),
            bottomLeft: msg.isMe ? const Radius.circular(12) : Radius.zero,
            bottomRight: msg.isMe ? Radius.zero : const Radius.circular(12),
          ),
        ),
        child:
            msg.isAudio
                ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.play_arrow, color: Colors.white),
                    const SizedBox(width: 8),
                    Text(
                      "Mensaje de voz",
                      style: TextStyle(
                        color: msg.isMe ? Colors.white : Colors.black,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                )
                : Text(
                  msg.text,
                  style: TextStyle(
                    color: msg.isMe ? Colors.white : Colors.black,
                    fontSize: 16,
                  ),
                ),
      ),
    );
  }

  void _handleMicTap() {
    setState(() {
      _isRecording = !_isRecording;
    });

    // Aquí puedes conectar con un plugin como `flutter_sound` para grabar audio real.
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isRecording = false;
      });
      _sendMessage(isAudio: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final isTextTyped = _controller.text.trim().isNotEmpty;

    return Scaffold(
      appBar: AppBar(title: const Text('Chat con Soporte'), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(12),
              itemCount: _messages.length,
              itemBuilder: (context, index) => _buildMessage(_messages[index]),
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    onChanged: (_) => setState(() {}),
                    decoration: const InputDecoration(
                      hintText: "Escribe un mensaje...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: IconButton(
                    icon: Icon(
                      isTextTyped
                          ? Icons.send
                          : _isRecording
                          ? Icons.stop
                          : Icons.mic,
                      color: Colors.white,
                    ),
                    onPressed: isTextTyped ? _sendMessage : _handleMicTap,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
