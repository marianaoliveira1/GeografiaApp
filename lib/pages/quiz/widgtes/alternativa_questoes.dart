// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:geografia/utils/colors.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class AlternativaQuiz extends StatelessWidget {
  final String option;
  final Color color;

  const AlternativaQuiz({
    Key? key,
    required this.option,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10.h,
        top: 10.h,
      ),
      padding: EdgeInsets.all(14.h),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16.h),
        border: GradientBoxBorder(
          gradient: DefaultColors.defaultLinearGradient,
          width: 1.5.w,
        ),
        boxShadow: [
          BoxShadow(
            color: DefaultColors.branco,
            blurRadius: 1.3.r,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              option,
              style: GoogleFonts.roboto(
                color: color.red != color.green ? DefaultColors.branco : DefaultColors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ).animate().fade(duration: 2000.ms).slideY();
  }
}
