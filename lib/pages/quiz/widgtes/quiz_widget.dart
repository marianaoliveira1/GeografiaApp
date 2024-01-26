// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/datasrouce/list_questios.dart';
import 'package:geografia/pages/quiz/result_quiz.dart';

import 'package:geografia/pages/quiz/widgtes/alternativa_questoes.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizCard extends StatefulWidget {
  final String question;
  final int indexAction;
  final int totalQuestion;

  const QuizCard({super.key, required this.question, required this.indexAction, required this.totalQuestion});

  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  int index = 0;
  bool isPressed = false;
  int result = 0;
  bool isAlreadySelected = false;

  void nextQuestion() {
    if (index == questions.length - 1) {
      showDialog(
        context: context,
        builder: (ctx) => ResultQuiz(
          result: result,
          questionLength: questions.length,
        ),
      );
    } else {
      if (isPressed) {
        setState(() {
          index++;
          isPressed = false;
          isAlreadySelected = false;
        });
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
    }
  }

  void checkAnswerAndUpdate(bool value) {
    if (value == true && !isAlreadySelected) {
      result++;
      setState(() {
        isPressed = true;
        isAlreadySelected = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
            Row(
              children: [
                Text(
                  'Questão',
                  style: GoogleFonts.outfit(
                    color: DefaultColors.back,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  '${widget.indexAction + 1}/${widget.totalQuestion}',
                  style: GoogleFonts.outfit(
                    color: DefaultColors.back,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Text(
              widget.question,
              style: GoogleFonts.outfit(
                color: DefaultColors.back,
                fontSize: 21.sp,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25.h,
            ),
            for (int i = 0; i < questions[index].options.length; i++)
              GestureDetector(
                onTap: () => checkAnswerAndUpdate(
                  questions[index].options.values.toList()[i],
                ),
                child: AlternativaQuiz(
                  option: questions[index].options.keys.toList()[i],
                  color: isPressed
                      ? questions[index].options.values.toList()[i] == true
                          ? DefaultColors.correctQuestion
                          : DefaultColors.incorrectQuestion
                      : DefaultColors.white,
                ),
              ),
            Expanded(
              child: Container(),
            ),
            Container(
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
                onTap: nextQuestion,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Próxima questão',
                      style: GoogleFonts.outfit(
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
