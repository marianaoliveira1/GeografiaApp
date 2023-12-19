import 'dart:async';

import 'package:flutter/material.dart';

import 'package:geografia/serve/auth/login_our_register.dart';
import 'package:geografia/utils/colors.dart';

class SpashPage extends StatefulWidget {
  const SpashPage({super.key});

  @override
  State<SpashPage> createState() => _SpashPageState();
}

class _SpashPageState extends State<SpashPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginOrRegister(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: DefaultColors.white,
      child: Center(
        child: Image.asset(
          "assets/images/brazil.jpg",
        ),
      ),
    );
  }
}
