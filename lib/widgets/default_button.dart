// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  void Function() onTap;
  DefaultButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: DefaultColors.defaultLinearGradient,
        borderRadius: BorderRadius.circular(
          14.r,
        ),
      ),
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 10.h, top: 10.h),
      child: InkWell(
        onTap: onTap,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.roboto(
            color: DefaultColors.branco,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ).animate().fade(duration: 1500.ms).slideY();
  }
}
