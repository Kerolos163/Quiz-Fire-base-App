import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiztaskwithfirebase/Features/Question/presenation/View/ScoreView.dart';
import '../../viewmodel.dart/cubit/cubit.dart';
import '../../viewmodel.dart/cubit/state.dart';

class QuestionViewBody extends StatelessWidget {
  const QuestionViewBody({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("practice categorising"),
      ),
      body: BlocBuilder<QuestionCubit, QuestionState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  QuestionCubit.get(context).data["wordList"][
                      QuestionCubit.get(context).questionList[
                          QuestionCubit.get(context).questionList.length -
                              1]]["word"],
                  style: const TextStyle(fontSize: 40),
                ),
                const Spacer(flex: 6),
                myButton(
                  txt: "verb",
                  func: () {
                    QuestionCubit.get(context).changeQuestion(answer: "verb");
                    if (QuestionCubit.get(context).questionNumber == 5) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ScoreView()));
                    }
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                myButton(
                  txt: "noun",
                  func: () {
                    QuestionCubit.get(context).changeQuestion(answer: "noun");
                    if (QuestionCubit.get(context).questionNumber == 5) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ScoreView()));
                    }
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                myButton(
                  txt: "adverb",
                  func: () {
                    QuestionCubit.get(context).changeQuestion(answer: "adverb");
                    if (QuestionCubit.get(context).questionNumber == 5) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ScoreView()));
                    }
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                myButton(
                  txt: "adjective",
                  func: () {
                    QuestionCubit.get(context).changeQuestion(answer: "adjective");
                    if (QuestionCubit.get(context).questionNumber == 5) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ScoreView()));
                    }
                  },
                ),
                const Spacer(),
              ],
            ),
          );
        },
      ),
    );
  }

  ElevatedButton myButton({required String txt, void Function()? func}) {
    return ElevatedButton(
      onPressed: func,
      child: Text(
        txt,
        style: const TextStyle(fontSize: 25),
      ),
    );
  }
}

// changeQuestion(context, {required String answer}) {
//     if (questionNumber < 4) {
//       checkQuestion(
//           answer: answer,
//           studentAnswer: data["wordList"][questionList[questionNumber]]["pos"]);
//       questionNumber = ++questionNumber;

//       getRandomvariable();
//       emit(ChangeQuestionState());
//     } else {
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => const ScoreView()));
//     }
//   }