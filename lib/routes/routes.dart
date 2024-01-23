import 'package:flutter/material.dart';
import 'package:geografia/pages/home/home_page.dart';
import 'package:geografia/pages/login/login_page.dart';
import 'package:geografia/pages/profile/perfil_page.dart';
import 'package:geografia/pages/quiz/questions.dart';
import 'package:geografia/pages/quiz/result_quiz.dart';

class Routes {
  static final Map<String, WidgetBuilder> routes = {
    '/login': (context) => const LoginPage(),
    '/home': (context) => const HomePage(),
    '/profile': (context) => const ProfilePage(),
    '/questoes': (context) => const QuestionsQuiz(),
    '/result': (context) => const ResultQuiz(),
  };
}
