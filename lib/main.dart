import 'package:flutter/material.dart';

import './question.dart';
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

class _MyAppState extends State<MyApp>{
  var questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      questionIndex++;
    });
  }

  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          centerTitle: true,
          backgroundColor: Color(0xff00BCD1),
        ),
        body: Column(
          children: [
            Question(questionIndex),
            ElevatedButton(child: Text('Option 1'), onPressed: _answerQuestion),
            ElevatedButton(child: Text('Option 2'), onPressed: _answerQuestion),
            ElevatedButton(child: Text('Option 3'), onPressed: _answerQuestion),
          ],
        ),
      ),
    );
  }
}
