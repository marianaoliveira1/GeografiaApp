import 'package:flutter/material.dart';
import 'package:geografia/utils/colors.dart';
import 'package:geografia/widgets/default_input_text.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColors.grayBackground,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/parrot.png',
                height: 150,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Bem-vindo de volta',
                style: GoogleFonts.poppins(color: DefaultColors.white, fontSize: 24),
              ),
              const SizedBox(
                height: 40,
              ),
              const DefaultInputText(hintText: 'Email', icon: Icons.person),
              const SizedBox(
                height: 20,
              ),
              const DefaultInputText(hintText: 'Senha', icon: Icons.lock),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Ainda não possui uma conta? ',
                    style: GoogleFonts.poppins(color: DefaultColors.gray100, fontSize: 12),
                  ),
                  Text(
                    'Cadastre-se  ',
                    style: GoogleFonts.poppins(color: DefaultColors.white, fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                decoration: BoxDecoration(
                  color: DefaultColors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                width: double.infinity,
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: InkWell(
                  child: Text(
                    //place this text centered
                    'Entrar',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(color: DefaultColors.back, fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
