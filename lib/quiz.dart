import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestions;
  final int questionIndex;

  Quiz({this.questions, this.answerQuestions, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questions(
          questionText: questions[questionIndex]['questionModel'],
        ),

        //spread operator ... it converts into possible widgets individually
        ...(questions[questionIndex]['answerModel'] as List<String>).map((
            anyVariable) {
          //u can use any iterable like anyVariable which own each entry in list of answer Model
          return Answer(answerQuestions, anyVariable);
        }).toList()
      ],
    ) ;
  }
}
