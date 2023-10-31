import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiztaskwithfirebase/Features/Question/viewmodel.dart/cubit/cubit.dart';
import 'package:quiztaskwithfirebase/core/get_it.dart';

import 'widget/score_view_body.dart';

class ScoreView extends StatelessWidget {
  const ScoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BlocProvider.value(
        value: instance.get<QuestionCubit>(),
      
        child:const  ScoreViewBody(),
        
      ),
    );
  }
}
