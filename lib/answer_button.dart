import 'package:flutter/material.dart';

class OptionBtn extends StatelessWidget {
  const OptionBtn({super.key, required this.text, required this.func});

  final String text;
  final void Function() func;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: func,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromARGB(255, 42, 2, 76)),
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
