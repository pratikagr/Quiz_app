import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String QuestionText;

  Questions(this.QuestionText);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        QuestionText,
        style: TextStyle(
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
