import 'package:flutter/material.dart';
import '../constans.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key, required this.nextQuestion}) : super(key: key);
  final VoidCallback nextQuestion;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextQuestion,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: neutral,
          borderRadius: BorderRadius.circular(10.0),
        ), // BoxDecoration
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: const Text(
          'Câu hỏi tiếp theo',
          textAlign: TextAlign.center,
        ),
      ), // Container
    ); // GestureDetector
  }
}
