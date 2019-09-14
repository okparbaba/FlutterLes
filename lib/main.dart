import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
    @override
  State<StatefulWidget> createState()=>_MyAppState(); 
}
class _MyAppState extends State<MyApp>{
  final questions = [
      {
        'questionText':'What\'s your favourite color?',
        'answer':['Black','Red','Green','White']
      },
      {
        'questionText':'What\'s your favourite animal?',
        'answer':['Rabbit','Snake','Elephant','Cat']
      },
      {
        'questionText':'What\'s your favourite People?',
        'answer':['General','Trump','Obama','Nay Win','Daw Su']
      },
    ];
  var _questionIndex = 0;
  void _answerQuestion(){
    setState((){
      _questionIndex = _questionIndex +1;
    });
    
  }
  @override
  Widget build(BuildContext context){
    
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Hello')
            ),
          ),
          body:_questionIndex < questions.length ? Column(
            children: <Widget>[
              Question(
                questions[_questionIndex]['questionText'],
                ),
                ...(questions[_questionIndex]['answer'] as List<String>).map((answer){
                  return Answer(answer,_answerQuestion );
                }).toList()
            ],
          ) : Center(child: Text('You dit it!'),) ,
        ),
      );
  }
}
//5:14 minutes