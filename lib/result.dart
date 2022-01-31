import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore < 10) {
      resultText = 'awesome';
    } else if (resultScore < 8) {
      resultText = 'very good';
    } else {
      resultText = 'awful';
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
