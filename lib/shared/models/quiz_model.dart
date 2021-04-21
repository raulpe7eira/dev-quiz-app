import 'package:dev_quiz/shared/models/question_model.dart';

enum Level { facil, medio, dificil, perito }

class QuizModel {
  final Level level;
  final String image;
  final String title;
  final int questionAnswered;
  final List<QuestionModel> questions;

  QuizModel({
    required this.level,
    required this.image,
    required this.title,
    this.questionAnswered = 0,
    required this.questions,
  });
}
