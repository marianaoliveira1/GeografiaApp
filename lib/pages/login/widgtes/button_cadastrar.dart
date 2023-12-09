import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonCadastrar extends StatelessWidget {
  const ButtonCadastrar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Ainda não possui uma conta? ',
          style: GoogleFonts.outfit(color: DefaultColors.title, fontSize: 12.sp),
        ).animate().fade(duration: 1500.ms).slideY(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/register');
          },
          child: Text(
            'Cadastre-se  ',
            style: GoogleFonts.outfit(color: DefaultColors.title, fontSize: 12.sp, fontWeight: FontWeight.bold),
          ).animate().fade(duration: 1500.ms).slideY(),
        ),
      ],
    );
  }
}
