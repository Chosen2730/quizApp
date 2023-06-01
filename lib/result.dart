import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/result_container.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.reset});
  final Function() reset;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summaryData = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summaryData.add(
        {
          'question_index': i,
          'question': questions[i].question,
          'answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }

    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final rightAnswers = summaryData
        .where((data) => data["answer"] == data["user_answer"])
        .length;

    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Quiz Results, you answered $rightAnswers out of $totalQuestions questions correctly",
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 400,
            child: SingleChildScrollView(
              child: Column(
                children: summaryData.map(
                  (data) {
                    return ResultContainer(data: data);
                  },
                ).toList(),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              icon: const Icon(Icons.refresh, color: Colors.white),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              onPressed: reset,
              label: const Text("Restart Quiz"))
        ],
      ),
    );
  }
}
