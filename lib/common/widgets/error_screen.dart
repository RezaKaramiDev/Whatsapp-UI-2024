import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  final String errorText;

  const ErrorScreen({super.key, required this.errorText});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text(errorText),
          ),
        ],
      ),
    );
  }
}
