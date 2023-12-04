import 'package:flutter/material.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonSeCadastrar extends StatelessWidget {
  const ButtonSeCadastrar({
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
      padding: const EdgeInsets.only(bottom: 10, top: 10),
      child: InkWell(
        child: Text(
          'Entrar',
          textAlign: TextAlign.center,
          style: GoogleFonts.outfit(color: DefaultColors.white, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
