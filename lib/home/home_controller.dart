import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/home/home_state.dart';
import 'package:dev_quiz/shared/models/answer_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: "raulpe7eira",
      photoUrl: "https://avatars.githubusercontent.com/u/456260?s=60&v=4",
    );

    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    quizzes = [
      QuizModel(
        level: Level.facil,
        image: AppImages.blocks,
        title: "NLW#5 Flutter",
        questions: [
          QuestionModel(
            title: "O que o Flutter faz em sua totalidade?",
            answers: [
              AnswerModel(
                title: "Kit de desenvolvimento de interface de usuário",
              ),
              AnswerModel(
                title:
                    "Possibilita a criação de aplicativos compilados nativamente",
                isRight: true,
              ),
              AnswerModel(
                title: "Acho que é uma marca de café do Himalaia",
              ),
              AnswerModel(
                title:
                    "Possibilita a criação de desktops que são muito incríveis",
              ),
            ],
          ),
        ],
      ),
    ];

    state = HomeState.success;
  }
}
