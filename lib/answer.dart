import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerHandler;
  //Answer(this.answerHandler);
  const Answer(this.answerHandler, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: answerHandler,
        child: Text('Answer 1'),
      ),
    );
  }
}
