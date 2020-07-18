import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  //creating a getter as it does not take any parameters it does not have ()
  String get resultPhrase{
    var resultText='You did it!';
    if(resultScore >=25){
      resultText="You are awesome and innocent!";
    }
    else if(resultScore >=15){
      resultText="Pretty Likable!";
    }
    else if(resultScore >=5){
      resultText="You Are Strange!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Your Score is $resultScore",),
        Center(
          child: Text("You did it! \n$resultPhrase",style: TextStyle(fontSize: 38,fontWeight: FontWeight.w300),),
        ),
      ],
    );
  }
}
