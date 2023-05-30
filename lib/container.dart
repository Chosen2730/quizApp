import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.contained, {super.key});
  final Widget contained;
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 88, 6, 103),
          Color.fromARGB(255, 40, 6, 119),
        ], begin: Alignment.topRight, end: Alignment.bottomLeft),
      ),
      child: Center(child: contained),
    );
  }
}
