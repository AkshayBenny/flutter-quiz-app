import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/questions_screen.dart';
import 'package:flutter_quiz_app/results_screen.dart';
import 'package:flutter_quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<Color> colors = [
    const Color.fromARGB(255, 67, 0, 148),
    const Color.fromARGB(255, 165, 6, 224),
  ];

  List<String> selectedAnswers = [];
  var activeScreen = "start-screen";

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = "results-screen";
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  void switchToStartScreen() {
    setState(() {
      activeScreen = "start-screen";
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: colors,
            ),
          ),
          child: activeScreen == "start-screen"
              ? StartScreen(switchScreen)
              : activeScreen == 'results-screen'
                  ? ResultsScreen(
                      switchToStartScreen: switchToStartScreen,
                      selectedAnswers: selectedAnswers,
                    )
                  : QuestionsScreen(
                      onSelectAnswer: chooseAnswer,
                    ),
        ),
      ),
    );
  }
}
