import 'package:flutter/material.dart';

import 'package:quizapp/start_screen.dart';
import 'package:quizapp/question_screen.dart';


class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();

}

class _QuizState extends State<Quiz>{

  Widget? activeScreen;

  @override
  void initState() {
    activeScreen =  StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen(){
    setState(() {
      activeScreen =  const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
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
        child: activeScreen
        )
    ),
  );
  }
}