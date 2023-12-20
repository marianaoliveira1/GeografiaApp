import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultQuiz extends StatelessWidget {
  const ResultQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/happy.png',
            height: 150.h,
          ),
          Text(
            'Parabéns, você concluiu o quiz',
            style: GoogleFonts.outfit(
              color: DefaultColors.back,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '',
            style: GoogleFonts.outfit(
              color: DefaultColors.back,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
