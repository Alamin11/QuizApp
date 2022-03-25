import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuiz;
  const Result({Key? key, required this.resetQuiz}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text(
          //   'Congratulations!!! You\'ve done it.',
          //   style: TextStyle(
          //     fontSize: 20,
          //     fontWeight: FontWeight.w400,
          //     color: Colors.teal,
          //   ),
          // ),
          GradientText(
            'Congratulations!!! You\'ve done it.',
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
            onPressed: resetQuiz,
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
