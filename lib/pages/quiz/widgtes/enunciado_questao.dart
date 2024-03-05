import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class EnunciadoQuestao extends StatelessWidget {
  final String question;
  final int indexAction;
  final int totalQuestion;
  const EnunciadoQuestao({
    super.key,
    required this.question,
    required this.indexAction,
    required this.totalQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Questão ${indexAction + 1} de $totalQuestion',
          style: GoogleFonts.roboto(
            color: DefaultColors.black,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        Text(
          question,
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 24.sp,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
