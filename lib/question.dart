import 'package:flutter/material.dart';

class Question extends StatelessWidget{
  var questions = ['What\'s divya nick name?', 'What\'s kevin nick name?'];
  // final String questionText;
  final int index;
  Question(this.index);

  Widget build(BuildContext context){
    return Text(questions[index]);
  }
}