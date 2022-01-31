import 'package:flutter/material.dart';
import './question.dart';
import './raisedbutton.dart';
import './quiz.dart';
import './result.dart';

// import 'dart:ui';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override

  final _questions = [
    {
      'questionText': 'What is your Favourite Color?',
      'Answer': [
        {'text':'Black', 'score': 10},
         {'text':'White' ,'score': 2},
         {'text':'Green' ,'score': 6}],
    },
    {
      'questionText': 'What is your Favourite Number?',
      'Answer': [
        {'text':'2' ,'score':2}, 
        {'text':'5' ,'score':6}, 
        {'text':'8' ,'score':6}],
    },

    {
      'questionText': 'Which type of person are you?',
      'Answer': [
        {'text':'introvert' , 'score':8},
         {'text':'Extrovert' , 'score':2},
          {'text':'Ambivert',  'score':2}],
    },
  ];

  var _questionIndex = 0;
var _totalScore = 0;

void _resetQuiz(){
  setState(() {
    _questionIndex=-0;
    _totalScore=0;
  });
}
  void _answerQuestion(int score) {

    _totalScore += score;
    
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

   if(_questionIndex < _questions.length){
     print('more questions imcoming!!!');
   }
   else{
     print('no more question');
   }
  }

 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

 


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('my first app'),
        ),
        body: _questionIndex < _questions.length ? 
        Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: _questions,)

            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
