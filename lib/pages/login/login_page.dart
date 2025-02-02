// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/controller/auth_service.dart';

import 'package:geografia/widgets/default_button.dart';

import 'package:geografia/utils/colors.dart';
import 'package:geografia/widgets/default_image.dart';

import 'package:geografia/widgets/default_input_text.dart';
import 'package:geografia/widgets/default_title_h1.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signIn() async {
    final authService = Get.find<AuthController>();

    try {
      await authService.signInWithEmailAndPassword(
        emailController.text,
        passwordController.text,
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            e.toString(),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColors.branco,
      body: Padding(
        padding: EdgeInsets.all(40.0.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 90.h,
              ),
              const DefaultImage(
                image: 'assets/icons/tucano.png',
              ),
              SizedBox(
                height: 50.h,
              ),
              const DefaultTituloH1(
                titulo: 'Bem-vindo de volta',
              ),
              SizedBox(
                height: 40.h,
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
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Ainda não possui uma conta? ',
                    style: GoogleFonts.roboto(
                      color: DefaultColors.title,
                      fontSize: 12.sp,
                    ),
                  ).animate().fade(duration: 1500.ms).slideY(),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      'Cadastre-se  ',
                      style: GoogleFonts.roboto(
                        color: DefaultColors.title,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ).animate().fade(duration: 1500.ms).slideY(),
                  ),
                ],
              ),
              SizedBox(
                height: 80.h,
              ),
              DefaultButton(
                text: 'Entrar',
                onTap: signIn,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
