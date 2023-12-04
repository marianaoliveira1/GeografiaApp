import 'package:flutter/material.dart';

import 'package:geografia/pages/login/widgtes/button_cadastrar.dart';
import 'package:geografia/pages/login/widgtes/button_entrar.dart';

import 'package:geografia/utils/colors.dart';
import 'package:geografia/widgets/default_input_text.dart';
import 'package:geografia/widgets/default_title_h1.dart';

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
              const DefaultTituloH1(titulo: 'Bem-vindo de volta'),
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
              ButtonCadastrar(),
              const SizedBox(
                height: 80,
              ),
              ButtonEntrar(),
            ],
          ),
        ),
      ),
    );
  }
}
