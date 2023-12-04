import 'package:flutter/material.dart';
import 'package:geografia/utils/colors.dart';

class DefaultGradiendtBackground extends StatelessWidget {
  const DefaultGradiendtBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            DefaultColors.primaryGradiendBackground,
            DefaultColors.secondGradientBackground,
          ],
        ),
      ),
    );
  }
}
