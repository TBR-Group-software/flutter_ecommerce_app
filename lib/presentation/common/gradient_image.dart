import 'package:flutter/material.dart';

class GradientImage extends StatelessWidget {
  final DecorationImage image;
  final Gradient gradient;

  const GradientImage(
    this.image, {
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: BoxDecoration(
        gradient: gradient,
      ),
      decoration: BoxDecoration(
        image: image,
      ),
    );
  }
}
