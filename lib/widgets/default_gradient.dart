import 'package:flutter/material.dart';

class DefaultGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF3550DC),
            Color(0xFF27E9F7),
          ],
        ),
      ),
    );
  }
}
