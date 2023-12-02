import 'package:flutter/material.dart';
import 'package:geografia/utils/colors.dart';

class LoginOurRegister extends StatefulWidget {
  const LoginOurRegister({super.key});

  @override
  State<LoginOurRegister> createState() => _LoginOurRegisterState();
}

class _LoginOurRegisterState extends State<LoginOurRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultColors.gray,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Vamos começar \n   a sua jornada',
              style: TextStyle(color: DefaultColors.white, fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 60,
            ),
            Image.asset(
              "assets/icons/parrot.png",
              height: 120,
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 15, right: 100, left: 100, top: 15),
              decoration: BoxDecoration(
                color: DefaultColors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: InkWell(
                child: Text(
                  'Entrar',
                  style: TextStyle(color: DefaultColors.back, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 15, right: 100, left: 100, top: 15),
              decoration: BoxDecoration(
                color: DefaultColors.gray100,
                borderRadius: BorderRadius.circular(16),
              ),
              child: InkWell(
                child: Text(
                  'Registrar',
                  style: TextStyle(color: DefaultColors.back, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
