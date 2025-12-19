import 'package:flutter/material.dart';
import 'package:quizapp/start_screen.dart';
void main() {
  runApp( MaterialApp(
    home: Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 49, 22, 145),
                Color.fromARGB(255, 68, 57, 135),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        child: StartScreen()
        )
    ),
  ));
}
