import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/utils/colors.dart';
import 'package:geografia/widgets/default_image.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultAvatar extends StatelessWidget {
  const DefaultAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Tucano',
          style: GoogleFonts.outfit(
            color: DefaultColors.title,
            fontSize: 16.sp,
            fontWeight: FontWeight.w300,
          ),
        ).animate().fade(duration: 1500.ms).slideY(),
        SizedBox(
          height: 30.h,
        ),
        const DefaultImage(image: 'assets/icons/perfil/tucano.png'),
        SizedBox(
          height: 30.h,
        ),
        Text(
          'Os tucanos são conhecidos por suas plumagens coloridas e vibrantes,A imagem vibrante e ativa do tucano pode ser associada à vitalidade e à energia. são  encontrados em diversas regiões tropicais e têm uma variedade de espécies.',
          style: GoogleFonts.outfit(
            color: DefaultColors.title,
            fontSize: 14.sp,
            fontWeight: FontWeight.w300,
          ),
        ).animate().fade(duration: 1500.ms).slideY(),
      ],
    );
  }
}
