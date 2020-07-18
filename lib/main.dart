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
  var _totalScore=0;


  final _questions = [
    {
      'questionModel': 'What\'s your favourite color?',
      'answerModel': [{'option':"Yellow",'score':5},{'option':"Pink",'score':7}, {'option':"Red",'score':3},{'option':"White",'score':10}]
    },
    {
      'questionModel': 'What\'s your favourite Animal?',
      'answerModel': [{'option':"Lion",'score':3},{'option':"Rabbit",'score':10}, {'option':"Elephant",'score':9},{'option':"Snake",'score':0}]
    },
    {
      'questionModel': 'What\'s your favourite Dish?',
      'answerModel': [{'option':"Wheat",'score':7},{'option':"Leafy Veg.",'score':10}, {'option':"Rice",'score':9},{'option':"Carrot",'score':10}]
    },
  ];

  void _answerQuestions(int optionScore) {
    _totalScore +=optionScore;
    print(_totalScore);
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
          : Result(_totalScore)
    );
  }
}
