import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';

//created widget
// import './question.dart';
// import './answer.dart';
import './quiz.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {
          'option': 'Red',
          'score': 5,
        },
        {
          'option': 'Green',
          'score': 3,
        },
        {
          'option': 'Blue',
          'score': 6,
        },
        {
          'option': 'White',
          'score': 3,
        },
        {
          'option': 'Pink',
          'score': 7,
        },
        {
          'option': 'Black',
          'score': 8,
        },
      ]
    },
    {
      'questionText': 'What\'s your favorite pet animal?',
      'answers': [
        {
          'option': 'Cat',
          'score': 5,
        },
        {
          'option': 'Dog',
          'score': 6,
        },
        {
          'option': 'Cow',
          'score': 5,
        },
        {
          'option': 'Goat',
          'score': 7,
        },
        {
          'option': 'Lion',
          'score': 8,
        },
        {
          'option': 'Tiger',
          'score': 9,
        },
      ]
    },
    {
      'questionText': 'What\'s your favorite game ?',
      'answers': [
        {
          'Option': 'Cricket',
          'score': 3,
        },
        {
          'Option': 'Football',
          'score': 4,
        },
        {
          'Option': 'Ha-Du-Du',
          'score': 8,
        },
        {
          'Option': 'Kabadi',
          'score': 8,
        },
        {
          'Option': 'Tenis',
          'score': 7,
        },
        {
          'Option': 'Badminton',
          'score': 6,
        },
        {
          'option': 'Card',
          'score': 8,
        },
        {
          'option': 'Ludo',
          'score': 5,
        },
      ]
    },
    {
      'questionText': 'What\'s your favorite book?',
      'answers': [
        {
          'option': 'The Al-Quran',
          'score': 3,
        },
        {
          'option': 'The Alchemist',
          'score': 8,
        },
        {
          'option': 'Theory of Everything',
          'score': 9,
        },
        {
          'option': 'Evolution of History',
          'score': 10,
        },
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  //final _numberOfQuestions = questions.length;

  void _answerQuestion(int? score) {
    _totalScore += score!;
    setState(() {
      _questionIndex = (_questionIndex + 1);
      //_totalScore = 0;
      //print(_questionIndex);
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('You have more questions.');
    } else {
      print('No more questions');
    }
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
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
