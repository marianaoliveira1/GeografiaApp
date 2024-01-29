// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'package:geografia/pages/quiz/widgtes/quiz_widget.dart';

class QuestionsQuiz extends StatelessWidget {
  QuestionsQuiz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QuizCard(),
    );
  }
}
