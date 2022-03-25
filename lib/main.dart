import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';

//created widget
import './question.dart';
import './answer.dart';
import './quiz.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: prefer_typing_uninitialized_variables
  //var _numOfQuestions;
  final _questions = const [
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
  var _questionIndex = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  //final _numberOfQuestions = questions.length;
  void _answerQuestion() {
    //print(questionIndex);
    setState(() {
      _questionIndex = _questionIndex + 1;
      // if (_questionIndex >= questions.length) {
      //   //Text("Wow !!! You Made it.");
      //   _questionIndex = 0;
      // }
    });
    //print(_numOfQuestions);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuizApp',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Personality Calculator'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(
                resetQuiz: _resetQuiz,
              ),
      ),
    );
  }
}
