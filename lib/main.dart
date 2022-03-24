// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

//created widget
import './question.dart';
import './answer.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _numOfQuestions;
  void _answerQuestion() {
    //print(questionIndex);
    setState(() {
      _questionIndex = _questionIndex + 1;
      if (_questionIndex >= _numOfQuestions) {
        //Text("Wow !!! You Made it.");
        _questionIndex = 0;
      }
    });
    print(_numOfQuestions);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color ?',
      'What\'s your favorite pet animal?',
    ];
    _numOfQuestions = questions.length;
    return MaterialApp(
      title: 'QuizApp',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Personality Calculator'),
          ),
          body: Column(
            children: [
              Question(
                questions[_questionIndex],
              ),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
            ],
          )),
    );
  }
}
