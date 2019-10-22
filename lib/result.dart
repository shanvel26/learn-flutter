import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function reset;
  final int totalScore;

  Result(this.reset, this.totalScore);

  String get totalValue {
    String result = "You are Bad";
    if (totalScore < 8) {
      result = "You are awesome";
    } else if (totalScore < 14) {
      result = "You are good";
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            totalValue,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            child: Text("Reset"),
            textColor: Colors.blue,
            onPressed: reset,
          )
        ],
      ),
    );
  }
}
