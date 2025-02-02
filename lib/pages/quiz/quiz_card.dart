// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/model/quiz.dart';

import 'package:geografia/pages/quiz/widgtes/result_quiz.dart';

import 'package:geografia/pages/quiz/widgtes/alternativa_questoes.dart';
import 'package:geografia/pages/quiz/widgtes/enunciado_questao.dart';

import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizCard extends StatefulWidget {
  final ModelQuiz quiz;
  const QuizCard({super.key, required this.quiz});

  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  int currentQuestionIndex = 0;
  int? selectedAnswer;
  late final List<String> selectedAlternatives;

  @override
  void initState() {
    selectedAlternatives = List<String>.generate(widget.quiz.questions.length, (counter) => "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final quiz = widget.quiz.title;
    final questions = widget.quiz.questions;

    return Scaffold(
      backgroundColor: DefaultColors.branco,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(
          quiz,
          style: GoogleFonts.roboto(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: DefaultColors.grayBackground,
          ),
        ),
        backgroundColor: DefaultColors.branco,
      ),
      body: Container(
        margin: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              EnunciadoQuestao(
                indexAction: currentQuestionIndex,
                totalQuestion: questions.length,
                question: questions[currentQuestionIndex].title,
              ),
              SizedBox(
                height: 25.h,
              ),
              for (int cQuestionsAlternativeIndex = 0; cQuestionsAlternativeIndex < questions[currentQuestionIndex].alternatives.length; cQuestionsAlternativeIndex++)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedAnswer ??= cQuestionsAlternativeIndex;
                    });

                    selectedAlternatives[currentQuestionIndex] = questions[currentQuestionIndex].alternatives.keys.toList()[cQuestionsAlternativeIndex];
                  },
                  child: AlternativaQuiz(
                    option: questions[currentQuestionIndex].alternatives.keys.toList()[cQuestionsAlternativeIndex],
                    color: selectedAnswer != null && (selectedAnswer == cQuestionsAlternativeIndex || questions[currentQuestionIndex].alternatives.values.toList()[cQuestionsAlternativeIndex] == true)
                        ? questions[currentQuestionIndex].alternatives.values.toList()[cQuestionsAlternativeIndex] == true
                            ? DefaultColors.correctQuestion
                            : DefaultColors.incorrectQuestion
                        : DefaultColors.branco,
                  ),
                ),
              Container(),
              selectedAnswer == null
                  ? Container()
                  : Container(
                      margin: EdgeInsets.only(
                        bottom: 15.h,
                        top: 15.h,
                      ),
                      decoration: BoxDecoration(
                        color: DefaultColors.roxo,
                        borderRadius: BorderRadius.circular(14.r),
                      ),
                      padding: EdgeInsets.only(
                        bottom: 15.h,
                        top: 15.h,
                      ),
                      child: InkWell(
                        onTap: () {
                          if (selectedAnswer != null) {
                            if (currentQuestionIndex == questions.length - 1) {
                              int numeroAcertos = 0;

                              for (int i = 0; i <= questions.length - 1; i++) {
                                final question = questions[i];
                                final selectedAlternative = selectedAlternatives[i];

                                if (question.alternatives[selectedAlternative] == true) {
                                  numeroAcertos++;
                                }
                              }

                              showDialog(
                                context: context,
                                builder: (ctx) => ResultQuiz(
                                  qntAcertos: numeroAcertos,
                                  questionLength: questions.length,
                                ),
                              );
                            } else {
                              setState(() {
                                currentQuestionIndex++;
                                selectedAnswer = null;
                              });
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Por favor, escolha uma opção"),
                                behavior: SnackBarBehavior.floating,
                                margin: EdgeInsets.symmetric(
                                  vertical: 20,
                                ),
                              ),
                            );
                          }
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Próxima questão',
                              style: GoogleFonts.roboto(
                                color: DefaultColors.bege,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
