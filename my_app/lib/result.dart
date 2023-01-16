import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result({@required this.resultScore, @required this.resetQuiz});

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 12) {
      resultText = "You are awesome";
    } else {
      resultText = "You are strange";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              color: Color.fromARGB(252, 52, 218, 49),
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(onPressed: resetQuiz, child: Text('Restart'))
        ],
      ),
    );
  }
}
