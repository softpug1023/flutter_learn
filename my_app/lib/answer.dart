import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback answerQuestion;
  final String answerText;
  Answer({
    @required this.answerQuestion,
    @required this.answerText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          this.answerText,
          style: TextStyle(color: Color.fromARGB(255, 39, 39, 195)),
        ),
        onPressed: answerQuestion,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 246, 100, 32),
        ),
      ),
    );
  }
}
