import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/questions_summary.dart';
class ResultScreen extends StatelessWidget {
 const ResultScreen({super.key, required this.chooseAnswer});

  final List<String> chooseAnswer;


  @override
  Widget build(BuildContext context) {
    final sumaryData = getSumaryData();
    final int numberTotalQuestions = questions.length;
    final int numberCorrectQuestions = sumaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('You ansewered $numberCorrectQuestions out of $numberTotalQuestions questions correctly!'),
            SizedBox(height: 30),
           QuestionsSummary(sumaryData),
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
