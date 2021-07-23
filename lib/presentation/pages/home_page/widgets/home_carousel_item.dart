import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/common/gradient_image.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/gradients.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCarouselItem extends StatelessWidget {
  final AssetImage assetImage;
  final String adText;

  const HomeCarouselItem({
    required this.assetImage,
    required this.adText,
  });

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;
    return Stack(
      children: <Widget>[
        GradientImage(
          DecorationImage(
            image: assetImage,
            fit: BoxFit.cover,
          ),
          gradient: myshopGradients.adsSliderGradient,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: _width * 0.048,
            top: _height * 0.017,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                adText,
                style: myshopTextStyles.white25Bold700,
              ),
              SizedBox(height: _height * 0.005),
              Row(
                children: <Widget>[
                  const Text(
                    'See More',
                    style: myshopTextStyles.yellow12Bold700,
                  ),
                  SizedBox(width: _width * 0.016),
                  SvgPicture.asset(
                    'assets/icons_svg/arrow_right_icon.svg',
                    color: myshopColors.yellow,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
