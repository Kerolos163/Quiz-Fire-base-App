import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiztaskwithfirebase/Features/Question/presenation/viewmodel.dart/cubit/cubit.dart';
import 'package:quiztaskwithfirebase/Features/Question/presenation/viewmodel.dart/cubit/state.dart';

class QuestionViewBody extends StatelessWidget {
  const QuestionViewBody({super.key});

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
                          QuestionCubit.get(context).questionList.length-1]]["word"],
                  style: const TextStyle(fontSize: 40),
                ),
                const Spacer(flex: 6),
                myButton(
                  txt: "verb",
                  func: () {
                    QuestionCubit.get(context).changeQuestion(answer: "verb");
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                myButton(
                  txt: "noun",
                  func: () {
                    QuestionCubit.get(context).changeQuestion(answer: "noun");
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                myButton(
                  txt: "adverb",
                  func: () {
                    QuestionCubit.get(context).changeQuestion(answer: "adverb");
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                myButton(
                  txt: "adjective",
                  func: () {
                    QuestionCubit.get(context)
                        .changeQuestion(answer: "adjective");
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
