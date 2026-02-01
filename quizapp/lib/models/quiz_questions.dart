class QuizQuestions {
  const QuizQuestions({
    required this.questionText,
    required this.answers,
  }); 
  
  final String questionText;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuf_list = List.of(answers);
    shuf_list.shuffle();
    return shuf_list;
  }

}