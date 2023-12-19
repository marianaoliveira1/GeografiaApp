import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/pages/register/widgtes/button_ja_possui_conta.dart';

import 'package:geografia/utils/colors.dart';
import 'package:geografia/widgets/default_button.dart';
import 'package:geografia/widgets/default_image.dart';
import 'package:geografia/widgets/default_input_text.dart';
import 'package:geografia/widgets/default_title_h1.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColors.white,
      body: Padding(
        padding: EdgeInsets.all(40.0.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40.h,
              ),
              const DefaultImage(
                image: 'assets/icons/palmeira.png',
              ),
              SizedBox(
                height: 30.h,
              ),
              const DefaultTituloH1(
                titulo: 'Vamos se cadastrar?',
              ),
              SizedBox(
                height: 50.h,
              ),
              DefaultInputText(
                controller: nameController,
                obscureText: false,
                hintText: 'Nome',
                icon: Icons.person,
              ),
              SizedBox(
                height: 20.h,
              ),
              DefaultInputText(
                controller: emailController,
                obscureText: false,
                hintText: 'Email',
                icon: Icons.email,
              ),
              SizedBox(
                height: 20.h,
              ),
              DefaultInputText(
                controller: passwordController,
                obscureText: true,
                hintText: 'Senha',
                icon: Icons.lock,
              ),
              SizedBox(
                height: 20.h,
              ),
              DefaultInputText(
                controller: confirmPasswordController,
                obscureText: true,
                hintText: 'Confirme a senha',
                icon: Icons.lock,
              ),
              SizedBox(
                height: 20.h,
              ),
              ButtonJaPossuiConta(widget: widget),
              SizedBox(
                height: 50.h,
              ),
              DefaultButton(
                text: 'Entrar',
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
