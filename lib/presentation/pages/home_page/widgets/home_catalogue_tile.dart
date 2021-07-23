import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/common/gradient_image.dart';
import 'package:flutter_myshop_app/presentation/styles/gradients.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';

class HomeCatalogueTile extends StatelessWidget {
  final AssetImage assetImage;
  final String title;

  const HomeCatalogueTile({
    required this.assetImage,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _width = _mediaQuery.size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        height: _width * 0.235,
        width: _width * 0.235,
        child: Stack(
          children: <Widget>[
            GradientImage(DecorationImage(image: assetImage, fit: BoxFit.cover),
                gradient: myshopGradients.catalogueTileGradient),
            Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: myshopTextStyles.white14SemiBold600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
