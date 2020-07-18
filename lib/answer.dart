import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        textColor: Colors.white,
        child: Text(answerText),
        //pointer of answerQuestions is passed
        color: Colors.blue,
        onPressed:selectHandler,
      ),
    );
  }
}
