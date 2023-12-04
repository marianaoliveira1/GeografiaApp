import 'package:flutter/material.dart';
import 'package:geografia/pages/register/register_page.dart';
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
          style: GoogleFonts.outfit(color: DefaultColors.gray, fontSize: 12),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterPage(),
              ),
            );
          },
          child: Text(
            'Cadastre-se  ',
            style: GoogleFonts.outfit(color: DefaultColors.gray, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
