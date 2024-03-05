import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultQuiz extends StatelessWidget {
  final int result;
  final int questionLength;
  const ResultQuiz({
    super.key,
    required this.result,
    required this.questionLength,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: DefaultColors.bege,
      title: Text(
        "Resultado",
        style: GoogleFonts.roboto(
          color: DefaultColors.title,
          fontSize: 18.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      content: Text(
        "Você acertou $result de $questionLength questões",
        style: GoogleFonts.roboto(
          color: DefaultColors.title,
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "Ok",
            style: GoogleFonts.roboto(
              color: DefaultColors.title,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
