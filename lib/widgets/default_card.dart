import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/questios/list_questios.dart';
import 'package:geografia/pages/quiz/widgtes/quiz_card.dart';

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
            builder: (context) => QuizCard(
              quiz: quizes[0],
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
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/brazil.png",
              height: 40.h,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              'Biomas Brasileiros',
              style: GoogleFonts.outfit(
                fontSize: 10.sp,
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
