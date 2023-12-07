import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/pages/home/home_page.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonEntrar extends StatelessWidget {
  const ButtonEntrar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: DefaultColors.primaryBackground,
        borderRadius: BorderRadius.circular(14),
      ),
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 10.h, top: 10.h),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        },
        child: Text(
          'Entrar',
          textAlign: TextAlign.center,
          style: GoogleFonts.outfit(color: DefaultColors.white, fontSize: 16.sp, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
