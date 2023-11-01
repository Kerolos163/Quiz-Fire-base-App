import 'package:flutter/material.dart';
import 'widget/name_view_body.dart';

class NameView extends StatelessWidget {
  const NameView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NameViewBody(),
    );
  }
}