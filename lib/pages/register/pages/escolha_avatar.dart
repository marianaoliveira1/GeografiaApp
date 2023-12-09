import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/pages/register/pages/widgtes/avatar.dart';
import 'package:geografia/utils/colors.dart';
import 'package:geografia/widgets/default_title_h1.dart';
import 'package:google_fonts/google_fonts.dart';

class EscolhaSeuAvatar extends StatefulWidget {
  const EscolhaSeuAvatar({super.key});

  @override
  State<EscolhaSeuAvatar> createState() => _EscolhaSeuAvatarState();
}

class _EscolhaSeuAvatarState extends State<EscolhaSeuAvatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(40.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Escolha seu avatar',
                style: GoogleFonts.outfit(
                  color: DefaultColors.title,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              DefaultAvatar(),
            ],
          ),
        ),
      ),
    );
  }
}
