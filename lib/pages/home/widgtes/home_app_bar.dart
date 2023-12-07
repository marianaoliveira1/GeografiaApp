import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Oi,",
                style: GoogleFonts.outfit(color: DefaultColors.gray100, fontSize: 18.sp, fontWeight: FontWeight.w400),
              ),
              Text(
                "Mariana",
                style: GoogleFonts.outfit(color: DefaultColors.gray100, fontSize: 18.sp, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Image.asset(
            "assets/icons/perfil/arara.png",
            height: 60.h,
          )
        ],
      ),
    );
  }
}
