import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Result(this.totalScore, this.resetHandler);

  String get answerPhrase {
    if (totalScore <= 10) {
      return 'You are Bad!!';
    } else if (totalScore <= 20) {
      return 'You are Good';
    } else {
      return 'You are Awesome!!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return
        Center(
          child:
          Column(
            children: [
              Text(answerPhrase,
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center),
              TextButton(child: Text('Restart Quiz'), onPressed: resetHandler,style: TextButton.styleFrom(primary: Colors.lightBlueAccent),)
            ],
          ),
    );
  }
}
