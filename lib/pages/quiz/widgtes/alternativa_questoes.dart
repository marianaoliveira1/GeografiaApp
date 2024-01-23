import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AlternativaQuiz extends StatelessWidget {
  final String option;
  final Color color;

  const AlternativaQuiz({
    super.key,
    required this.option,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
          bottom: 10.h,
          top: 10.h,
        ),
        padding: EdgeInsets.all(14.h),
        decoration: BoxDecoration(
          color: color ?? DefaultColors.white,
          borderRadius: BorderRadius.circular(16.h),
          boxShadow: [
            BoxShadow(
              color: DefaultColors.title,
              blurRadius: 1.3.r,
            )
          ],
        ),
        child: Row(
          children: [
            Text(
              option,
              style: GoogleFonts.outfit(
                color: DefaultColors.back,
                fontSize: 20.sp,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
