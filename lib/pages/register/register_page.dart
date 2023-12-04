import 'package:flutter/material.dart';

import 'package:geografia/pages/register/widgtes/button_ja_possui_conta.dart';
import 'package:geografia/pages/register/widgtes/button_se_cadastrar.dart';
import 'package:geografia/utils/colors.dart';
import 'package:geografia/widgets/default_input_text.dart';
import 'package:geografia/widgets/default_title_h1.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                'assets/icons/palmeira.png',
                height: 150,
              ),
              const SizedBox(
                height: 30,
              ),
              const DefaultTituloH1(titulo: 'Cadastre-se'),
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
              ButtonJaPssuiConta(),
              const SizedBox(
                height: 50,
              ),
              ButtonSeCadastrar()
            ],
          ),
        ),
      ),
    );
  }
}
