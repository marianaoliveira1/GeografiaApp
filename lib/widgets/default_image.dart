import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class DefaultImage extends StatelessWidget {
  final String image;
  const DefaultImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: 150,
    ).animate().fade(duration: 1500.ms).slideY();
  }
}
