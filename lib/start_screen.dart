import 'package:flutter/material.dart';
import 'package:quiz_app/text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 350,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),

        // Opacity(
        //   opacity: 0.5,
        //   child: Image.asset(
        //     'assets/images/quiz-logo.png',
        //     width: 350,
        //   ),
        // ),
        const SizedBox(
          height: 60,
        ),
        const TextClass('Learn Flutter the fun way', 24),
        const SizedBox(
          height: 60,
        ),
        OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const TextClass("Start Quiz", 16)),
        // TextButton(onPressed: () {}, child: const TextClass("Start Quiz", 16))
      ],
    );
  }
}
