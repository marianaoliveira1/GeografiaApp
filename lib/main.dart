import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geografia/firebase_options.dart';
import 'package:geografia/pages/home/home_page.dart';
import 'package:geografia/pages/login/login_page.dart';
import 'package:geografia/pages/profile/perfil_page.dart';
import 'package:geografia/pages/quiz/introduction_quiz.dart';
import 'package:geografia/pages/quiz/questions.dart';

import 'package:geografia/pages/splash/splash_page.dart';
import 'package:geografia/controller/auth_service.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(AuthController());

    return ScreenUtilInit(
      designSize: const Size(380, 780),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        title: 'Geografia App',
        debugShowCheckedModeBanner: false,
        routes: {
          '/login': (context) => const LoginPage(),
          '/home': (context) => const HomePage(),
          '/profile': (context) => const ProfilePage(),
          '/quiz': (context) => const IntroductionQuiz(),
          '/quesoes': (context) => const QuestionsQuiz(),
        },
        home: const SpashPage(),
      ),
    );
  }
}
