import 'package:flutter/material.dart';

class TextClass extends StatelessWidget {
  const TextClass(this.text, this.size, {super.key});
  final String text;
  final double size;

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: size),
    );
  }
}
