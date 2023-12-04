import 'package:flutter/material.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultInputText extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const DefaultInputText({
    super.key,
    required this.hintText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: DefaultColors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: DefaultColors.gray,
            blurRadius: 1,
          ),
        ],
      ),
      child: TextField(
        style: TextStyle(color: DefaultColors.gray),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.outfit(color: DefaultColors.grayBackgroundInput),
          prefixIcon: Icon(
            icon,
            color: DefaultColors.grayBackgroundInput,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
