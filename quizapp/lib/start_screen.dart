import 'package:flutter/material.dart';
class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300),
          SizedBox(height: 80),
          Text('Learn Flutter the fun way!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              )),
          SizedBox(height: 30),
          OutlinedButton(onPressed: () {}, child: Text("Start Quiz", style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ))),
        ],
      ),
    );
  }
}