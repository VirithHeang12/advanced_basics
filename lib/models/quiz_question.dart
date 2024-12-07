class QuizQuestion {
  final String question;
  final List<String> options;
  final int answerIndex;

  const QuizQuestion(this.question, this.options, this.answerIndex);

  List<String> get suffledOptions {
    final List<String> shuffledOptions = List.from(options);
    shuffledOptions.shuffle();
    return shuffledOptions;
  }
}
