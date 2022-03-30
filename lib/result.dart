import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Result extends StatelessWidget {

  final VoidCallback resetQuiz;
  final int resultScore;
  const Result(this.resultScore, {Key? key, required this.resetQuiz})
      : super(key: key);
  String get resultPhrase {
    String resultText = 'Congratulations, You have no match!!!';
    if (resultScore <= 14) {
      resultText = 'You are awesome and innocent!!!';
    } else if (resultScore <= 19) {
      resultText = 'You are a leader';
    } else if (resultScore <= 25) {
      resultText = 'You have incredible personality';
    } else {
      resultText = 'You are mysterious!!!';

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

            resultPhrase,

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
