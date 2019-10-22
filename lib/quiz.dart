import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerFunction;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz({
    @required this.answerFunction,
    @required this.questions,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["questionText"]),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerFunction(answer['score']), answer['text']);
        }).toList(),
        // Answer(_answerQuestion),
      ],
    );
  }
}
