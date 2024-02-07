import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key, required this.buttonText});

  final String buttonText;

  @override
  Widget build(context) {
    return TextButton(
      onPressed: null,
      child: Text(
        buttonText,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.white,
        ),
      ),
    );
  }
}
