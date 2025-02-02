import 'package:flutter/material.dart';

class DefaultColors {
  static Color title = const Color(0xff171717);
  static Color grayBackground = const Color(0xff171717);
  static Color grayBackgroundInput = const Color(0xff242424);
  static Color black = const Color(0xff14171b);
  static Color bege = const Color(0xfff0ebe5);

  static Color roxo = const Color(0xff31314D);
  static Color primaryBackground = const Color(0xff5869ff);
  static Color cardBackground = const Color.fromARGB(255, 111, 189, 218);

  static Color correctQuestion = const Color(0xFF32ab58);
  static Color incorrectQuestion = const Color(0xFFab3232);
  static Color blue = const Color(0xFF5869ff);
  static Color branco = const Color(0xFFFFFFFF);

  static LinearGradient defaultLinearGradient = const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFF3550DC),
      Color(0xFF08A1D4),
    ],
  );
}
