import 'package:get_it/get_it.dart';
import '../Features/Question/presenation/viewmodel.dart/cubit/cubit.dart';

final instance = GetIt.instance;

initQuestionCubit() {
  if (!GetIt.I.isRegistered<QuestionCubit>()) {
    instance.registerLazySingleton<QuestionCubit>(() => QuestionCubit());
  }
}