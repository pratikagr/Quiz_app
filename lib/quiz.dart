
import 'package:flutter/material.dart';
import './question.dart';
import './raisedbutton.dart';


class Quiz extends StatelessWidget {
  
final List<Map<String, Object>> questions;
final Function answerQuestion;
final int questionIndex;


Quiz({
  required this.questions,
   required this.answerQuestion,
    required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Questions(
              questions[questionIndex]['questionText'].toString()
                  , //the argument type object cannot be passed to the parameter type string in dart issue
              //i have copied this fix from github still have doubt tho how it fixed
            ),
            ...(questions[questionIndex]['Answer'] as List<Map<String, Object>>)
                  .map((answer) {
                return Answer(() => answerQuestion(answer['score']),answer['text'].toString());
              }).toList()
          ],
        );
  }
}