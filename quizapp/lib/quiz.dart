import 'package:flutter/material.dart';

import 'package:quizapp/start_screen.dart';
import 'package:quizapp/question_screen.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/result_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();

}

class _QuizState extends State<Quiz>{

  final List<String> selectedAnswers = [];
  var activeScreen = "start-screen";

  void switchScreen(){
    setState(() {
      activeScreen = "question-screen";
    });
  }

  void chooseAnswer(String answer){
    selectedAnswers.add(answer);
    print(selectedAnswers);

    if(selectedAnswers.length ==  questions.length){
      setState(() {
        activeScreen = "result-screen";
        selectedAnswers.clear();
      });
    }

  }

  @override
  Widget build(BuildContext context) {

    Widget screenWidget = StartScreen(switchScreen);

    if(activeScreen == "question-screen"){
      screenWidget = QuestionScreen(chooseAnswer: chooseAnswer) ;
    }

    if(activeScreen == "result-screen"){
      screenWidget = ResultScreen(chooseAnswer: selectedAnswers,);
    }


    return MaterialApp(
    home: Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        )
    ),
  );
  }
}