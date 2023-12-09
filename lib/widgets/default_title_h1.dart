import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultTituloH1 extends StatelessWidget {
  final String titulo;
  const DefaultTituloH1({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Text(
      titulo,
      style: GoogleFonts.outfit(color: DefaultColors.title, fontSize: 24.sp),
    ).animate().fade(duration: 1500.ms).slideY();
  }
}
