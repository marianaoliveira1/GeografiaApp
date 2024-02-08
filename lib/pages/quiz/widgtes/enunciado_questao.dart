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
      children: [
        Row(
          children: [
            Text(
              'Questão',
              style: GoogleFonts.outfit(
                color: DefaultColors.back,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              '${indexAction + 1}/$totalQuestion',
              style: GoogleFonts.outfit(
                color: DefaultColors.back,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Text(
          question,
          style: GoogleFonts.outfit(
            color: DefaultColors.back,
            fontSize: 20.sp,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
