import 'package:flutter/material.dart';
import 'package:geografia/pages/home_page.dart';
import 'package:geografia/pages/register_page.dart';
import 'package:geografia/utils/colors.dart';
import 'package:geografia/widgets/default_input_text.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColors.white,
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
                style: GoogleFonts.outfit(color: DefaultColors.gray, fontSize: 24),
              ),
              const SizedBox(
                height: 40,
              ),
              const DefaultInputText(hintText: 'Email', icon: Icons.email),
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
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                decoration: BoxDecoration(
                  color: DefaultColors.primaryBackground,
                  borderRadius: BorderRadius.circular(14),
                ),
                width: double.infinity,
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: Text(
                    'Entrar',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.outfit(color: DefaultColors.white, fontSize: 16, fontWeight: FontWeight.w600),
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
