import 'package:flutter/material.dart';

class ResultContainer extends StatelessWidget {
  const ResultContainer({super.key, required this.data});
  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    final Color bgColor = data["user_answer"] == data["answer"]
        ? const Color.fromARGB(255, 33, 203, 70)
        : Colors.pinkAccent;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: bgColor,
                borderRadius: const BorderRadius.all(Radius.circular(100))),
            child: Text(
              ((data["question_index"] as int) + 1).toString(),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  data["question"] as String,
                  style: const TextStyle(color: Colors.white),
                ),
                Text(
                  data["user_answer"] as String,
                  style: const TextStyle(color: Colors.pinkAccent),
                ),
                Text(
                  data["answer"] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 33, 203, 70),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
