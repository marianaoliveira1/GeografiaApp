import 'package:flutter/material.dart';
import 'package:geografia/utils/colors.dart';
import 'package:geografia/widgets/default_input_text.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                'assets/icons/palmeira.png',
                height: 150,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Cadastre-se',
                style: GoogleFonts.poppins(color: DefaultColors.white, fontSize: 24),
              ),
              const SizedBox(
                height: 50,
              ),
              const DefaultInputText(hintText: 'Nome', icon: Icons.person),
              const SizedBox(
                height: 20,
              ),
              const DefaultInputText(hintText: 'Email', icon: Icons.email),
              const SizedBox(
                height: 20,
              ),
              const DefaultInputText(hintText: 'Senha', icon: Icons.lock),
              const SizedBox(
                height: 20,
              ),
              const DefaultInputText(hintText: 'Confirmar senha', icon: Icons.lock),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Já possui uma conta? ',
                    style: GoogleFonts.poppins(color: DefaultColors.gray100, fontSize: 12),
                  ),
                  Text(
                    'Entrar',
                    style: GoogleFonts.poppins(color: DefaultColors.white, fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
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
