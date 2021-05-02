import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  // final int index;
  Question(this.questionText);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        this.questionText,
        style: TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
