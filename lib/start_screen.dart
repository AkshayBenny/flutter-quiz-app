import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/start_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colors,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              height: 200,
            ),
            const SizedBox(
              height: 48,
            ),
            const Text(
              "Learn flutter the fun way!",
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const StartButton(
              buttonText: "Start Quiz",
            ),
          ],
        ),
      ),
    );
  }
}
