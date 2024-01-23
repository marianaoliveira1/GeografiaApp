// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:geografia/datasrouce/list_questios.dart';
import 'package:geografia/pages/quiz/widgtes/quiz_widget.dart';

class QuestionsQuiz extends StatelessWidget {
  QuestionsQuiz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
      body: QuizCard(
        question: questions[index].title,
        indexAction: index,
        totalQuestion: questions.length,
      ),
    );
  }
}
