import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'state.dart';

class QuestionCubit extends Cubit<QuestionState> {
  QuestionCubit() : super(CubitInitial());
  static QuestionCubit get(context) => BlocProvider.of(context);
  Map data = {
    "wordList": [
      {"id": 1, "word": "slowly", "pos": "adverb"},
      {"id": 2, "word": "ride", "pos": "verb"},
      {"id": 3, "word": "bus", "pos": "noun"},
      {"id": 4, "word": "commute", "pos": "verb"},
      {"id": 5, "word": "emissions", "pos": "noun"},
      {"id": 6, "word": "walk", "pos": "verb"},
      {"id": 7, "word": "fast", "pos": "adjective"},
      {"id": 8, "word": "car", "pos": "noun"},
      {"id": 9, "word": "crowded", "pos": "adjective"},
      {"id": 10, "word": "arrival", "pos": "noun"},
      {"id": 11, "word": "emit", "pos": "verb"},
      {"id": 12, "word": "independent", "pos": "adjective"},
      {"id": 13, "word": "convenient", "pos": "adjective"},
      {"id": 14, "word": "lane", "pos": "noun"},
      {"id": 15, "word": "heavily", "pos": "adverb"}
    ]
  };

  List questionList = [];
  int questionNumber = 0;
  changeQuestion({required String answer}) {
    if (questionNumber < 5) {
      checkQuestion(
          answer: answer,
          studentAnswer: data["wordList"][questionList[questionNumber]]["pos"]);
      questionNumber = ++questionNumber;

      getRandomvariable();
      emit(ChangeQuestionState());
    }
    print(studentPoint);
  }

//we can get all
  void getRandomvariable() {
    print("getRandomvariable");
    int randomNumber = Random().nextInt(data["wordList"].length - 1) + 0;
    while (questionList.contains(randomNumber)) {
      randomNumber = Random().nextInt(data["wordList"].length - 1) + 0;
    }

    if (questionList.length < 5) {
      questionList.add(randomNumber);
    }
    print(questionList);
  }

  int studentPoint = 0;
  checkQuestion({required String answer, required String studentAnswer}) {
    if (answer == studentAnswer) {
      studentPoint += 10;
    }
  }
}
