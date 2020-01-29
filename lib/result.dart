import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore < 10) {
      resultText = 'You are awesome & innocent!';
    } else if (resultScore <= 15) {
      resultText = 'Pretty likebale!';
    } else {
      resultText = 'You are strange!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart Quiz'),
          onPressed: resetHandler,
          textColor: Colors.green,
        ),
      ]),
    );
  }
}
