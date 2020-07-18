import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function quizReset;

  Result(this.resultScore, this.quizReset);

  //creating a getter as it does not take any parameters it does not have ()
  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore >= 25) {
      resultText = "You are awesome!";
    } else if (resultScore >= 15) {
      resultText = "Pretty Likable!";
    } else if (resultScore >= 5) {
      resultText = "You Are Strange!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Your Score is $resultScore",
        ),
        Center(
          child: Text(
            "You did it! \n$resultPhrase",
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
        ),

        Padding(

          padding: const EdgeInsets.all(15.0),
          child: FlatButton(
            onPressed: quizReset,
            color: Colors.blue.shade300,
            child: Text(
              "Restart Quiz",
              style: TextStyle(fontSize: 18),
            ),
          ),
        )
      ],
    );
  }
}
