import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String AnswerText;

  Answer(this.selectHandler, this.AnswerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          onPressed: 
          selectHandler,             //why we have added a annonymus function here?
          child: Text(AnswerText),
          color: Colors.blue,
          textColor: Colors.white,
        )
        );
  }
}
