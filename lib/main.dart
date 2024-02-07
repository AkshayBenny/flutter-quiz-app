import "package:flutter/material.dart";
import 'package:flutter_quiz_app/start_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: StartScreen(
          colors: [
            Color.fromARGB(255, 67, 0, 148),
            Color.fromARGB(255, 165, 6, 224),
          ],
        ),
      ),
    ),
  );
}
