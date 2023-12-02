import 'package:flutter/material.dart';
import 'package:geografia/utils/colors.dart';

class DefaultInputText extends StatelessWidget {
  final String hintText;
  final IconData icon;
  const DefaultInputText({
    super.key,
    required this.hintText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: DefaultColors.grayBackgroundInput,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        style: TextStyle(color: DefaultColors.white),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: DefaultColors.gray100),
          prefixIcon: Icon(
            icon,
            color: DefaultColors.gray100,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
