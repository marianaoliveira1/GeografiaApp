import 'package:flutter/material.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Oi,",
                style: GoogleFonts.outfit(color: DefaultColors.gray100, fontSize: 18, fontWeight: FontWeight.w400),
              ),
              Text(
                "Mariana",
                style: GoogleFonts.outfit(color: DefaultColors.gray100, fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Image.asset(
            "assets/icons/tucano.png",
            height: 60,
          )
        ],
      ),
    );
  }
}
