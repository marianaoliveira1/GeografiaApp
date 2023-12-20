import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/pages/quiz/widgtes/card_questoes.dart';
import 'package:geografia/utils/colors.dart';
import 'package:geografia/widgets/default_gradiendt_brackground.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsQuiz extends StatefulWidget {
  const QuestionsQuiz({super.key});

  @override
  State<QuestionsQuiz> createState() => _QuestionsQuizState();
}

class _QuestionsQuizState extends State<QuestionsQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        backgroundColor: DefaultColors.white,
        title: Text(
          'Capitais do Brasil',
          style: GoogleFonts.outfit(
            color: DefaultColors.back,
            fontSize: 22.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Questão',
                  style: GoogleFonts.outfit(
                    color: DefaultColors.back,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  '1',
                  style: GoogleFonts.outfit(
                    color: DefaultColors.back,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '/',
                  style: GoogleFonts.outfit(
                    color: DefaultColors.back,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '10',
                  style: GoogleFonts.outfit(
                    color: DefaultColors.back,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            LayoutBuilder(builder: (context, c) {
              return SizedBox(
                width: c.maxWidth,
                height: c.maxWidth * 0.4,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Em qual região do Brasil está localizada a capital Goiânia?',
                        style: GoogleFonts.outfit(
                          color: DefaultColors.back,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              );
            }),
            SizedBox(
              height: 20.h,
            ),
            CardQuestoes(),
            CardQuestoes(),
            CardQuestoes(),
            CardQuestoes(),
            Container(
              margin: EdgeInsets.only(
                bottom: 15.h,
                top: 15.h,
              ),
              decoration: BoxDecoration(
                color: DefaultColors.primaryBackground,
                borderRadius: BorderRadius.circular(14.r),
              ),
              padding: EdgeInsets.only(
                bottom: 15.h,
                top: 15.h,
                right: 15.w,
                left: 15.w,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/questoes');
                },
                child: Row(
                  children: [
                    Text(
                      'Próxima questão',
                      style: GoogleFonts.outfit(
                        color: DefaultColors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
