import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;

  Questions({this.questionText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      width: double.infinity,
      child: Text(
        questionText,
        style: TextStyle(fontSize: 29),
        textAlign: TextAlign.center,
      ),
    );
  }
}
