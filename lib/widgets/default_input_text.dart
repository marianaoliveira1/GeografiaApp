import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultInputText extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController? controller;
  final bool obscureText;
  const DefaultInputText({
    super.key,
    required this.hintText,
    required this.icon,
    this.controller,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: DefaultColors.white,
        borderRadius: BorderRadius.circular(14.h),
        boxShadow: [
          BoxShadow(
            color: DefaultColors.title,
            blurRadius: 1,
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        style: TextStyle(color: DefaultColors.title),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle:
              GoogleFonts.outfit(color: DefaultColors.grayBackgroundInput),
          prefixIcon: Icon(
            icon,
            color: DefaultColors.grayBackgroundInput,
          ),
          border: InputBorder.none,
        ),
        obscureText: obscureText,
      ),
    ).animate().fade(duration: 1500.ms).slideY();
  }
}
