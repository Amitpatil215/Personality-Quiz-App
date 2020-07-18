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
        ...(questions[questionIndex]['answerModel'] as List<Map<String,Object>>).map((
            anyVariable) {
          //u can use any iterable like anyVariable which own each entry in list of answer Model
          return Answer(()=>answerQuestions(anyVariable['score']), anyVariable['option']);
          //we using void function in Answer() cause we want to get argument in answerQuestion() function
          //to solve this problem we using ()=> syntax as it only get pointer of that function
        }).toList()
      ],
    ) ;
  }
}
