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
        {'options': 'Red', 'score': 1},
        {'options': 'Green', 'score': 2},
        {'options': 'White', 'score': 4},
        {'options': 'Pink', 'score': 3},
        {'options': 'Black', 'score': 5},
        {'options': 'Others', 'score': 6},
      ]
    },
    {
      'questionText': 'What\'s your favorite pet animal?',
      'answers': [

        {'options': 'Cat', 'score': 1},
        {'options': 'Dog', 'score': 2},
        {'options': 'Lion', 'score': 5},
        {'options': 'Rabbit', 'score': 3},
        {'options': 'Tiger', 'score': 4},
        {'options': 'Platipus', 'score': 6},
        {'options': 'Others', 'score': 7},

      ]
    },
    {
      'questionText': 'What\'s your favorite game ?',
      'answers': [

        {'options': 'Cricket', 'score': 1},
        {'options': 'Football', 'score': 2},
        {'options': 'Tenis', 'score': 4},
        {'options': 'Badminton', 'score': 3},
        {'options': 'Others', 'score': 5},
      ]
    },
    {
      'questionText':
          'There is an argument of political opinions between your colleagues. One of them is speaking the same way you feel, you will - ',
      'answers': [
        {'options': 'Feel happy they are arguing', 'score': 3},
        {'options': 'Support but not join', 'score': 2},
        {'options': 'Support and join to win', 'score': 1},
        {'options': 'not give your opinion', 'score': 4},
        {'options': 'Others', 'score': 5},
        
      ]
    },
    {
      'questionText': 'What\'s your favorite book?',
      'answers': [

        {'options': 'The Al-Quran', 'score': 1},
        {'options': 'The Alchemist', 'score': 2},
        {'options': 'Theory of Everything', 'score': 3},
        {'options': 'Evolution of History', 'score': 4},
        {'options': 'Others', 'score': 5},

        
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


  void _answerQuestion(int score) {
    _totalScore += score;
    // print("TotalScore = $_totalScore");
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // print("QuestionIndex: $_questionIndex");
    // if (_questionIndex < _questions.length) {
    //   print("You have more questions.");
    // } else {
    //   print('no more questions');
    // }
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

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: _questionIndex < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questions: _questions,
                    questionIndex: _questionIndex,
                  )
                : Result(
                    _totalScore,
                    resetQuiz: _resetQuiz,
                  ),
          ),
        ),
      ),
    );
  }
}
