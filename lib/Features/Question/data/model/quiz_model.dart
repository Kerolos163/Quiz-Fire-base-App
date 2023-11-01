class QuizModel {
  late String name;
  late int score;
  late List<int> solved;

  QuizModel(this.solved, {required this.name, required this.score});
  QuizModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    score = json['score'];
    solved = json['solved'];
  }
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'score': score,
      'solved': solved,
    };
  }
}
