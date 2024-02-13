import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key,
      required this.switchToStartScreen,
      required this.selectedAnswers});

  final void Function() switchToStartScreen;
  final List<String> selectedAnswers;

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "You answered 3 out of 6 questions correctly!",
              style: GoogleFonts.lato(
                color: const Color.fromARGB(168, 255, 255, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "List of answers and questions...",
              style: GoogleFonts.lato(
                color: const Color.fromARGB(168, 255, 255, 255),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: switchToStartScreen,
              child: const Text(
                "Restart quiz",
              ),
            )
          ],
        ),
      ),
    );
  }
}
