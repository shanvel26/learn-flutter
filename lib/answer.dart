import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answer;
  Function answerFunction;
  Answer(this.answerFunction, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answer),
        onPressed: answerFunction,
      ),
    );
  }
}
