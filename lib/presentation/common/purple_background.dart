import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/styles/gradients.dart';

class PurpleBackground extends StatelessWidget {
  final double? height;

  const PurpleBackground({this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: const BoxDecoration(
        gradient: myshopGradients.purpleGradient,
      ),
    );
  }
}
