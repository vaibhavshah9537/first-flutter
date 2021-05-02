import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s divya nick name?',
      'answers': [
        {'text': 'Motu', 'score': 3},
        {'text': 'Chottu', 'score': 10},
        {'text': 'Khotu', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s kevin nick name?',
      'answers': [
        {'text': 'Liti', 'score': 10},
        {'text': 'Jadiyo', 'score': 20},
        {'text': 'Padiyo', 'score': 7}
      ]
    },
    {
      'questionText': 'What\'s maitri nick name?',
      'answers': [
        {'text': 'Chokdi', 'score': 8},
        {'text': 'Mota Manso', 'score': 2},
        {'text': 'Neelu', 'score': 15}
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz(){
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  Widget build(BuildContext context) {
    // var questions = ['What\'s divya nick name?', 'What\'s kevin nick name?'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          centerTitle: true,
          backgroundColor: Color(0xff00BCD1),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                questions: _questions,
                answerQuestion: _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
