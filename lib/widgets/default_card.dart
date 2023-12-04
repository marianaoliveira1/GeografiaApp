import 'package:flutter/material.dart';
import 'package:geografia/pages/quiz/introducao_quiz.dart';
import 'package:geografia/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultCard extends StatelessWidget {
  const DefaultCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IntroducaoQuiz(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: DefaultColors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: DefaultColors.gray,
              blurRadius: 1.3,
            )
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/icons/brazil.png",
              height: 50,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Capitas do Brasil',
              style: GoogleFonts.outfit(
                fontWeight: FontWeight.w500,
                color: DefaultColors.grayBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
