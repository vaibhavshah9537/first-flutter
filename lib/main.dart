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
  final _questions = const [
    {
      'questionText': 'What\'s divya nick name?',
      'answers': ['Motu', 'Chottu', 'Khotu']
    },
    {
      'questionText': 'What\'s kevin nick name?',
      'answers': ['Liti', 'Jadiyo', 'Padiyo']
    },
    {
      'questionText': 'What\'s maitri nick name?',
      'answers': ['Chokdi', 'Mota manso', 'Neelu']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
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
            ? Quiz(questionIndex: _questionIndex, questions: _questions, answerQuestion: _answerQuestion)
            : Result(),
      ),
    );
  }
}
