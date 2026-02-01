import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';

class ResultScreen extends StatelessWidget {
 const ResultScreen({super.key, required this.chooseAnswer});

  final List<String> chooseAnswer;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('You did it!'),
            SizedBox(height: 30),
            Text("You answered 3 out of 5 questions correctly!"),
            SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: Text('Restart Quiz!'),
            ),
          ],
        ),
      ),
    );
  }

  List<Map<String, Object>> getSumaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chooseAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].questionText,
        'correct_answer': questions[i].answers[0],
        'user_answer': chooseAnswer[i],
      });
    }

    return summary;
  }

}
