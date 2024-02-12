class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnsers() {
    final shuffledAnsers = List.of(answers);
    shuffledAnsers.shuffle();
    return shuffledAnsers;
  }
}
