import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var totalScore = 0;
  var questions = [
    {
      "questionText": "What is your Month of Birth ?",
      "answers": [
        {"text": "Sep", "score": 2},
        {"text": "Oct", "score": 5},
        {"text": "Nov", "score": 10},
        {"text": "Dec", "score": 5}
      ]
    },
    {
      "questionText": "What is your Name",
      "answers": [
        {"text": "Shan", "score": 29},
        {"text": "Dev", "score": 2},
        {"text": "Ram", "score": 8}
      ]
    }
  ];

  void reset() {
    setState(() {
      totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("FashionStyle..."),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                answerFunction: _answerQuestion,
                questions: questions,
                questionIndex: _questionIndex,
              )
            : Result(reset, totalScore),
      ),
    );
  }
}
