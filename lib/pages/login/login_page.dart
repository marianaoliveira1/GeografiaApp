import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:geografia/pages/login/widgtes/button_cadastrar.dart';
import 'package:geografia/widgets/default_button.dart';

import 'package:geografia/utils/colors.dart';
import 'package:geografia/widgets/default_image.dart';
import 'package:geografia/widgets/default_input_text.dart';
import 'package:geografia/widgets/default_title_h1.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColors.white,
      body: Padding(
        padding: EdgeInsets.all(40.0.h),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const DefaultImage(image: 'assets/icons/parrot.png'),
              SizedBox(
                height: 50.h,
              ),
              const DefaultTituloH1(titulo: 'Bem-vindo de volta'),
              SizedBox(
                height: 40.h,
              ),
              const DefaultInputText(hintText: 'Email', icon: Icons.email),
              const SizedBox(
                height: 20,
              ),
              const DefaultInputText(hintText: 'Senha', icon: Icons.lock),
              SizedBox(
                height: 15.h,
              ),
              const ButtonCadastrar(),
              SizedBox(
                height: 80.h,
              ),
              const DefaultButton(text: 'Entrar'),
            ],
          ),
        ),
      ),
    );
  }
}
