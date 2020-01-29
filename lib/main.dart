import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  final questions = const [
    {
      'questionText': 'What\'s your fav color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your fav animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your fav instructor?',
      'answers': ['Ajju', 'Paddo', 'Chotu', 'Rajjo'],
    },
  ];

  void answerQuestion() {
    if (questionIndex < questions.length) {}

    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(),
      ),
    );
  }
}
