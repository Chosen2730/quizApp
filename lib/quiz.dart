import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  List<String> selectedAnswers = [];

  void saveAnswers(answer, questionIndex, questions) {
    selectedAnswers.add(answer);
    if (questions.length - 1 == questionIndex) {
      setState(() {
        activeScreen = ResultsScreen(
          chosenAnswers: selectedAnswers,
          reset: resetQuestion,
        );
      });
    }
  }

  void resetQuestion() {
    selectedAnswers = [];
    setState(() {
      activeScreen = StartScreen(switchScreen);
    });
  }

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionScreen(
        onSelectAnswer: saveAnswers,
      );
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 88, 6, 103),
          Color.fromARGB(255, 40, 6, 119),
        ], begin: Alignment.topRight, end: Alignment.bottomLeft),
      ),
      child: Center(child: activeScreen),
    )));
  }
}
