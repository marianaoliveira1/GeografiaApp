import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/pages/home/home_page.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultQuiz extends StatelessWidget {
  final int qntAcertos;
  final int questionLength;
  const ResultQuiz({
    super.key,
    required this.qntAcertos,
    required this.questionLength,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColors.roxo,
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20.w),
          height: 200.h,
          width: 300.w,
          decoration: BoxDecoration(
            color: DefaultColors.branco,
            borderRadius: BorderRadius.circular(16.h),
          ),
          child: Column(
            children: [
              SizedBox(height: 15.h),
              Text(
                'Resultado',
                style: GoogleFonts.inconsolata(
                  color: DefaultColors.black,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Você acertou $qntAcertos de $questionLength questões",
                style: GoogleFonts.roboto(
                  color: DefaultColors.title,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                decoration: BoxDecoration(
                  color: DefaultColors.roxo,
                  borderRadius: BorderRadius.circular(14),
                ),
                width: double.infinity,
                padding: EdgeInsets.only(
                  bottom: 10.h,
                  top: 10.h,
                ),
                margin: EdgeInsets.only(
                  left: 20.h,
                  right: 20.h,
                  bottom: 20.h,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Text(
                    "voltar para o inicio",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: DefaultColors.bege,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
