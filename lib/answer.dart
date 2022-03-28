import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerHandler;
  final String? answerText;
  //Answer(this.answerHandler);
  const Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 20,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: answerHandler,
        child: Text(answerText!),
      ),
    );
  }
}
