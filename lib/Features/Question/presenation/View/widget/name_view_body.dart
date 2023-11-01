import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiztaskwithfirebase/Core/git_it.dart';
import '../question_view.dart';

class NameViewBody extends StatelessWidget {
  const NameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    TextEditingController controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Lottie.asset("asset/img/Animation - 1698707245105.json"),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "please enter name";
                  }
                  return null;
                },
                controller: controller,
                autofocus: true,
                decoration: const InputDecoration(
                  hintText: "Please enter your name...",
                  label: Text("Name"),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    initQuestionCubit();
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => QuestionView(name: controller.text),
                    ));
                  }
                },
                child: const Text("Ok"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
