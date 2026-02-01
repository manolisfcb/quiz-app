import 'package:flutter/material.dart';
import 'package:quizapp/answer_button.dart';
import 'package:quizapp/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.chooseAnswer});

  final void Function(String) chooseAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  final List<String> selectedAnswers = [];

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                currentQuestion.questionText,
                style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            }),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
    // Botones de next and previous question
  }

  void answerQuestion(String selectedAnswer) {
    widget.chooseAnswer(selectedAnswer);
    print('Answer chosen: $selectedAnswer');
    setState(() {
        currentQuestionIndex++;
    });
  }
}
