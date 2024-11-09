import 'package:flutter/material.dart';

class WhatsAppTextButton extends StatelessWidget {
  const WhatsAppTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
      ),
    );
  }
}
