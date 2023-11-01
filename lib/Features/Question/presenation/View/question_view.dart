import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/git_it.dart';
import 'widget/question_view_body.dart';
import '../viewmodel.dart/cubit/cubit.dart';

class QuestionView extends StatelessWidget {
  const QuestionView({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => instance.get<QuestionCubit>()..getRandomvariable(),
      child: QuestionViewBody(name: name),
    );
  }
}
