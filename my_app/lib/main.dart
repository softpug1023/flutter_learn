import 'package:flutter/material.dart';

import './quiz.dart';
import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'questionText': 'what\'s color?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'red', 'score': 2},
        {'text': 'blue', 'score': 3},
      ],
    },
    {
      'questionText': 'what\'s your animal?',
      'answers': [
        {'text': 'bird', 'score': 10},
        {'text': 'cat', 'score': 11},
        {'text': 'dog', 'score': 1},
        {'text': 'sheep', 'score': 2},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    _totalScore += score;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(
                resultScore: _totalScore,
                resetQuiz: _resetQuiz,
              ),
      ),
    );
  }
}
