import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex = questionIndex + 1;
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['What\'s your fav color?', 'What\'s your fav food?'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions.elementAt(questionIndex)),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 choosen'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => {print('Answer 3 choosen')},
            ),
          ],
        ),
      ),
    );
  }
}
