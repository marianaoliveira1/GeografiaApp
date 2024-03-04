import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/model/quiz.dart';

import 'package:geografia/pages/quiz/quiz_card.dart';

import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultCard extends StatelessWidget {
  final ModelQuiz quiz;

  const DefaultCard({super.key, required this.quiz});

  @override
  Widget build(BuildContext context) {
    final questions = quiz.questions;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuizCard(
              quiz: quiz,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: DefaultColors.white,
          borderRadius: BorderRadius.circular(16.h),
          boxShadow: [
            BoxShadow(
              color: DefaultColors.title,
              blurRadius: 1.3.r,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              quiz.title,
              style: GoogleFonts.roboto(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: DefaultColors.grayBackground,
              ),
            ),
            Text(
              '${questions.length} questões',
              style: GoogleFonts.roboto(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: DefaultColors.grayBackground.withOpacity(.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
