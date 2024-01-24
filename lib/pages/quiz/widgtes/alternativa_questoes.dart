// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:geografia/utils/colors.dart';

class AlternativaQuiz extends StatelessWidget {
  final String option;
  final Color color;
  void Function()? onTap;

  AlternativaQuiz({
    Key? key,
    required this.option,
    required this.color,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          bottom: 10.h,
          top: 10.h,
        ),
        padding: EdgeInsets.all(14.h),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.h),
          boxShadow: [
            BoxShadow(
              color: DefaultColors.title,
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
                style: GoogleFonts.outfit(
                  color: DefaultColors.back,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
