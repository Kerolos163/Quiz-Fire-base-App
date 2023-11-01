import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/git_it.dart';
import 'widget/ScoreViewBody.dart';
import '../viewmodel.dart/cubit/cubit.dart';

class ScoreView extends StatelessWidget {
  const ScoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: instance.get<QuestionCubit>(),
        child: const ScoreViewBody(),
      ),
    );
  }
}
