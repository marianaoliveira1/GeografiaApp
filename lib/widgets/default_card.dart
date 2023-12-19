import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/pages/quiz/introducao_quiz.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultCard extends StatelessWidget {
  const DefaultCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const IntroducaoQuiz(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: DefaultColors.white,
          borderRadius: BorderRadius.circular(16.h),
          boxShadow: [
            BoxShadow(
              color: DefaultColors.title,
              blurRadius: 1.3.r,
            )
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/icons/brazil.png",
              height: 50.h,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              'Capitas do Brasil',
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w500,
                color: DefaultColors.grayBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
