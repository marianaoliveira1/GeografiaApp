// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/datasrouce/list_questios.dart';

import 'package:geografia/pages/quiz/widgtes/alternativa_questoes.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizCard extends StatefulWidget {
  final String question;
  final int indexAction;
  final int totalQuestion;

  QuizCard({super.key, required this.question, required this.indexAction, required this.totalQuestion});

  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  int index = 0;

  void nextQuestion() {
    if (index == questions.length - 1) {
      return;
    } else {
      setState(() {
        index++;
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
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            for (int i = 0; i < questions[index].options.length; i++)
              AlternativaQuiz(
                option: questions[index].options.keys.toList()[i],
                color: questions[index].options.values.toList()[i] == true ? DefaultColors.correctQuestion : DefaultColors.incorrectQuestion,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                    right: 15.w,
                    left: 15.w,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios, color: DefaultColors.white),
                      ],
                    ),
                  ),
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
                    right: 60.w,
                    left: 75.w,
                  ),
                  child: InkWell(
                    onTap: nextQuestion,
                    child: Row(
                      children: [
                        Text(
                          'Próxima questão',
                          style: GoogleFonts.outfit(
                            color: DefaultColors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
