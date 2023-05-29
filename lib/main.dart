import 'package:flutter/material.dart';
import 'package:quiz_app/text.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 88, 6, 103),
            Color.fromARGB(255, 40, 6, 119),
          ], begin: Alignment.topRight, end: Alignment.bottomLeft),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 350,
            ),
            const SizedBox(
              height: 60,
            ),
            const TextClass('This Flutter the fun way', 24),
            const SizedBox(
              height: 60,
            ),
            TextButton(
                onPressed: () {}, child: const TextClass("Start Quiz", 16))
          ],
        )),
      ),
    ),
  ));
}
