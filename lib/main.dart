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
  var totalScore = 0;

  final questions = const [
    {
      'questionText': 'What\'s your fav color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your fav animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 4},
        {'text': 'Snake', 'score': 15},
        {'text': 'Elephant', 'score': 7},
        {'text': 'lion', 'score': 11}
      ],
    },
    {
      'questionText': 'Who\'s your fav instructor?',
      'answers': [
        {'text': 'John', 'score': 9},
        {'text': 'Max', 'score': 1},
        {'text': 'Clark', 'score': 13},
        {'text': 'Steve', 'score': 5}
      ],
    },
  ];

  void resetQuizz(){
    setState(() {
      questionIndex=0;
    totalScore=0;
    });
  }

  void answerQuestion(int score) {
    //totalScore = totalScore + score;   //Old Convention
    totalScore += score; //New Dart way to do the same.

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
            : Result(totalScore, resetQuizz),
      ),
    );
  }
}
