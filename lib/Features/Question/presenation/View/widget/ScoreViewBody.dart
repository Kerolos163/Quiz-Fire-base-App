import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:quiztaskwithfirebase/Features/Question/presenation/View/name_view.dart';

import '../../viewmodel.dart/cubit/cubit.dart';
import '../../viewmodel.dart/cubit/state.dart';

class ScoreViewBody extends StatelessWidget {
  const ScoreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            const Text(
              "Score",
              style: TextStyle(fontSize: 30, color: Colors.deepPurple),
            ),
            const SizedBox(
              height: 16,
            ),
            Lottie.asset("asset/img/score.json",
                width: MediaQuery.of(context).size.width * .7,
                fit: BoxFit.fill),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<QuestionCubit, QuestionState>(
              builder: (context, state) {
                return Text(
                  "${QuestionCubit.get(context).studentPoint}",
                  style:
                      const TextStyle(fontSize: 30, color: Colors.deepPurple),
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                QuestionCubit.get(context).resetQuiz();
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const NameView(),
                ));
              },
              child: const Text("Reset"),
            )
          ],
        ),
      ),
    );
  }
}
