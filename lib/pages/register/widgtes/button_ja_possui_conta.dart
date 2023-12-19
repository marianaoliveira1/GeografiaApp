import 'package:flutter/material.dart';
import 'package:geografia/pages/register/register_page.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonJaPossuiConta extends StatelessWidget {
  const ButtonJaPossuiConta({
    super.key,
    required this.widget,
  });

  final RegisterPage widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Já possui uma conta? ',
          style: GoogleFonts.outfit(color: DefaultColors.title, fontSize: 12),
        ),
        GestureDetector(
          onTap: widget.onTap,
          child: Text(
            'Entrar',
            style: GoogleFonts.outfit(
                color: DefaultColors.title,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
