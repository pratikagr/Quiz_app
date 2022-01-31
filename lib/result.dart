import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore < 10) {
      resultText = 'You are awesome arent you?';
    } else if (resultScore < 8) {
      resultText = 'you are Very pathetic ';
    } else {
resultText = 'ewww how can you score like that? please retry';
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
              fontSize:24, 
              fontWeight: FontWeight.bold )
          ),
          FlatButton(onPressed: resetHandler, 
          child: 
          Text('Reset'),
          textColor: Colors.blue,)
        ],
      )
    );
  }
}
