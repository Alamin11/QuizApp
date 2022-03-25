import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

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
  // ignore: prefer_typing_uninitialized_variables
  //var _numOfQuestions;
  var questions = const [
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
        body: _questionIndex < questions.length
            ? Column(
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
              )
            : Center(
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
                      onPressed: () {
                        setState(() {
                          _questionIndex = 0;
                        });
                      },
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
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
