import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                height: 150.h,
              ),
              SizedBox(
                height: 30.h,
              ),
              DefaultTituloH1(titulo: 'Cadastre-se'),
              SizedBox(
                height: 50.h,
              ),
              const DefaultInputText(hintText: 'Nome', icon: Icons.person),
              SizedBox(
                height: 20.h,
              ),
              const DefaultInputText(hintText: 'Email', icon: Icons.email),
              SizedBox(
                height: 20.h,
              ),
              const DefaultInputText(hintText: 'Senha', icon: Icons.lock),
              SizedBox(
                height: 20.h,
              ),
              const DefaultInputText(hintText: 'Confirmar senha', icon: Icons.lock),
              SizedBox(
                height: 20.h,
              ),
              ButtonJaPssuiConta(),
              SizedBox(
                height: 50.h,
              ),
              ButtonSeCadastrar()
            ],
          ),
        ),
      ),
    );
  }
}
