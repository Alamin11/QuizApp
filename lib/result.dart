import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Result extends StatelessWidget {
  //final VoidCallback resetQuiz;
  int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPharase {
    String? resultText = 'You did it!!!';
    if (resultScore <= 12) {
      resultText = 'You have decent personality';
    } else if (resultScore <= 16) {
      resultText = 'You have a charming personality';
    } else if (resultScore <= 20) {
      resultText = 'You have a rare personality';
    } else {
      resultText = 'You have a unliked personality';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GradientText(
            // 'Congratulations!!! You\'ve done it.',
            resultPharase,
            style: const TextStyle(
              fontSize: 20.0,
            ),
            colors: const [
              Colors.blue,
              Colors.red,
              Colors.teal,
            ],
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: GradientText(
              'Restart',
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              colors: const [
                Colors.white,
                Colors.yellow,
                Colors.white,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
