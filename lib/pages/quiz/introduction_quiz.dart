import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductionQuiz extends StatefulWidget {
  const IntroductionQuiz({super.key});

  @override
  State<IntroductionQuiz> createState() => _IntroductionQuizState();
}

class _IntroductionQuizState extends State<IntroductionQuiz> {
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
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Capitais do Brasil",
                style: GoogleFonts.outfit(color: DefaultColors.gray100, fontSize: 18.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "O Brasil é um país cheio de encantos, cores e diversidade, e suas capitais desempenham um papel especial nessa grande nação. Cada estado brasileiro tem uma capital que serve como centro político e cultural, contribuindo para a riqueza histórica e geográfica do país. Vamos explorar juntos algumas curiosidades sobre essas capitais por meio de perguntas divertidas!",
                style: GoogleFonts.outfit(color: DefaultColors.gray100, fontSize: 18.sp, fontWeight: FontWeight.w400),
              ),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.all(12.h),
                    decoration: BoxDecoration(
                      color: DefaultColors.primaryBackground,
                      borderRadius: BorderRadius.circular(14.r),
                    ),
                    padding: EdgeInsets.only(bottom: 15.h, top: 15.h, right: 15.w, left: 15.w),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Text(
                            'Ir para o quiz',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.outfit(color: DefaultColors.white, fontSize: 16.sp, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color: DefaultColors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
