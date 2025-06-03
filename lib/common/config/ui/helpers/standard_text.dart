import 'package:flutter/material.dart';

enum TextSize { small, normal, big }

class StandardText extends StatelessWidget {
  final String text;
  final TextSize size;
  final bool isBold;
  final void Function()? onPressed;
  const StandardText({
    required this.text,
    this.size = TextSize.normal,
    this.isBold = false,
    this.onPressed,
  });

  Widget build(BuildContext context) {
    final double textSize = switch (size) {
      TextSize.big => 24,
      TextSize.normal => 18,
      TextSize.small => 14,
    };
    final Text textWidget = Text(text, style: TextStyle(fontSize: textSize));
    if (onPressed is Function) {
      return TextButton(onPressed: onPressed, child: textWidget);
    }
    return textWidget;
  }
}
