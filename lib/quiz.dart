import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answerQuestion;
  final questionIndex;
  const Quiz(
      {Key? key,
      required this.questions,
      required this.answerQuestion,
      this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),

        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
        // Answer(_answerQuestion),
      ],
    );
  }
}
