class QuestionModel {
  const QuestionModel(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> getShuffled() {
    final shuffelList = List.of(answers);
    shuffelList.shuffle();
    return shuffelList;
  }
}
