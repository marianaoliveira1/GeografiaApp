import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/pages/home/home_page.dart';
import 'package:geografia/pages/login/login_page.dart';
import 'package:geografia/pages/profile/perfil_page.dart';
import 'package:geografia/pages/quiz/introducao_quiz.dart';
import 'package:geografia/pages/register/pages/escolha_avatar.dart';
import 'package:geografia/pages/register/register_page.dart';

import 'package:geografia/pages/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(380, 780),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Geografia App',
        debugShowCheckedModeBanner: false,
        routes: {
          '/login': (context) => const LoginPage(),
          '/register': (context) => const RegisterPage(),
          '/avatar': (context) => const EscolhaSeuAvatar(),
          '/home': (context) => const HomePage(),
          '/profile': (context) => const ProfilePage(),
          '/quiz': (context) => const IntroducaoQuiz(),
        },
        home: const SpashPage(),
      ),
    );
  }
}
