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
    const questions = [
      {
        'questionText': 'What\'s your favorite color ?',
        'answers': ['Red', 'Green', 'Blue', 'White', 'Pink', 'Ash']
      },
      {
        'questionText': 'What\'s your favorite pet animal?',
        'answers': ['Cat', 'Dog', 'Cow', 'Goat']
      },
      {
        'questionText': 'What\'s your favorite game ?',
        'answers': [
          'Cricket',
          'Football',
          'Ha-Du-Du',
          'Kabadi',
          'Tenis',
          'Badminton'
        ]
      },
      {
        'questionText': 'What\'s your favorite book?',
        'answers': [
          'The Al-Quran',
          'The Alchemist',
          'Theory of Everything',
          'Evolution of History'
        ]
      },
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
                questions[_questionIndex]['questionText'] as String,
              ),

              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
              // Answer(_answerQuestion),
              // Answer(_answerQuestion),
              // Answer(_answerQuestion),
            ],
          )),
    );
  }
}
