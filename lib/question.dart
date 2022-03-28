import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String? questionText;
  // ignore: use_key_in_widget_constructors
  Question(this.questionText);
  //const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          questionText!,
          //textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
