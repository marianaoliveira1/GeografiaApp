import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: DefaultColors.branco.withOpacity(.8),
          borderRadius: BorderRadius.circular(16.h),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              quiz.image,
              height: 60.h,
            ),
            SizedBox(height: 10.h),
            Text(
              quiz.title,
              style: GoogleFonts.roboto(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: DefaultColors.grayBackground,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ).animate().fade(duration: 2000.ms).slideY(),
    );
  }
}
