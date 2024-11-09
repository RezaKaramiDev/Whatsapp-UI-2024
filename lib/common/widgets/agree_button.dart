import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/new_colors.dart';

class WhatsAppButton extends StatelessWidget {
  const WhatsAppButton(
      {super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 48,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: const ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(floatingActionButtonColor)),
        child: Text(
          text,
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    );
  }
}
