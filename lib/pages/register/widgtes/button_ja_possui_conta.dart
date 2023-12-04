import 'package:flutter/material.dart';
import 'package:geografia/pages/login/login_page.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonJaPssuiConta extends StatelessWidget {
  const ButtonJaPssuiConta({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Já possui uma conta? ',
          style: GoogleFonts.outfit(color: DefaultColors.gray, fontSize: 12),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
          },
          child: Text(
            'Entrar',
            style: GoogleFonts.outfit(color: DefaultColors.gray, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
