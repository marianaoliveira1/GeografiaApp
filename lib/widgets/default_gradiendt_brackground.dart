import 'package:flutter/material.dart';
import 'package:geografia/utils/colors.dart';

class DefaultGradiendtBackground extends StatelessWidget {
  const DefaultGradiendtBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //make a gradient starting at the top and ending at the bottom with the colors white and #ecf7fc
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
