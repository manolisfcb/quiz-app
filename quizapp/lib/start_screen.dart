import 'package:flutter/material.dart';
class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', 
            width: 300,
            color: Color.fromARGB(150, 255, 255, 255)
          ),
          SizedBox(height: 80),
          Text('Learn Flutter the fun way!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              )),
          SizedBox(height: 30),
          OutlinedButton.icon(onPressed: () {
            
          },
           
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: const Color.fromARGB(255, 248, 225, 255)),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                ),
                icon: Icon(Icons.arrow_right_alt, color: Colors.white),
                label: Text("Start Quiz", style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                
              ))),
        ],
      ),
    );
  }
}