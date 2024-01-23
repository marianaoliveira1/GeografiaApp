import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AlternativaQuiz extends StatelessWidget {
  const AlternativaQuiz({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10.h,
        top: 10.h,
      ),
      padding: EdgeInsets.all(14.h),
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
      child: Row(
        children: [
          Text(
            'A',
            style: GoogleFonts.outfit(
              color: DefaultColors.back,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            '|',
            style: GoogleFonts.outfit(
              color: DefaultColors.back,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            'Centro-Oeste',
            style: GoogleFonts.outfit(
              color: DefaultColors.back,
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
