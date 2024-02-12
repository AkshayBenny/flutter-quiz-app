import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  final String buttonText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 48),
        backgroundColor: const Color.fromARGB(255, 72, 0, 120),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            24,
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Color.fromARGB(200, 255, 255, 255),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
