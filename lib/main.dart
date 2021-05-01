import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
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
  var questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      questionIndex++;
    });
  }

  Widget build(BuildContext context) {
    // var questions = ['What\'s divya nick name?', 'What\'s kevin nick name?'];

    var questions = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          centerTitle: true,
          backgroundColor: Color(0xff00BCD1),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]['questionText']),
            ...(questions[questionIndex]['answers'] as List<String>).map((answer){
              return Answer(this._answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
