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
  final List<String> answers = [];

  @override
  Widget build(BuildContext context) {
    final questions = widget.quiz.questions;

    return Scaffold(
      backgroundColor: DefaultColors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: DefaultColors.white,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 30.w, right: 30.w, top: 10.h),
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
            for (int i = 0; i < questions[currentQuestionIndex].options.length; i++)
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedAnswer ??= i;
                  });
                },
                child: AlternativaQuiz(
                  option: questions[currentQuestionIndex].options.keys.toList()[i],
                  color: selectedAnswer != null
                      ? questions[currentQuestionIndex].options.values.toList()[i] == true
                          ? DefaultColors.correctQuestion
                          : DefaultColors.incorrectQuestion
                      : DefaultColors.white,
                  borderColor: selectedAnswer == i ? DefaultColors.back : Colors.transparent,
                ),
              ),
            Expanded(
              child: Container(),
            ),
            selectedAnswer == null
                ? Container()
                : Container(
                    margin: EdgeInsets.only(
                      bottom: 15.h,
                      top: 15.h,
                    ),
                    decoration: BoxDecoration(
                      color: DefaultColors.primaryBackground,
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
                            showDialog(
                              context: context,
                              builder: (ctx) => ResultQuiz(
                                result: selectedAnswer!,
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
                              color: DefaultColors.white,
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
    );
  }
}
