import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = [
    {
      'questionModel': 'What\'s your favourite color?',
      'answerModel': ["Yellow", "Pink", "White", "Red"]
    },
    {
      'questionModel': 'What\'s your favourite Animal?',
      'answerModel': ["Lion", "Rabbit", "Elephant", "Snake"]
    },
    {
      'questionModel': 'What\'s your favourite Dish?',
      'answerModel': ["Wheat", "Leaf", "Rice", "Carrot"]
    },
  ];

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz App"),
      ),
      body: _questionIndex < _questions.length ?
      Quiz(
        answerQuestions: _answerQuestions,
        questionIndex: _questionIndex,
        questions: _questions,)
          : Result()
    );
  }
}
