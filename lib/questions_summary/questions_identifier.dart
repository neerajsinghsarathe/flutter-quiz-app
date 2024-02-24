import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionsIndex,
  });

  final int questionsIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionAnswer = questionsIndex + 1;
    return Container(
      width: 30,
      height: 30,
        alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 150, 198, 241)
            : const Color.fromARGB(255, 249, 133, 241),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionAnswer.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56)
        ),
      ),
    );
  }
}
