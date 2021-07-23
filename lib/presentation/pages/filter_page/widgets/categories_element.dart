import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/strings.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoriesElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          myshopStrings.categories,
          style: myshopTextStyles.gray14SemiBold600,
        ),
        SizedBox(height: _height * 0.01),
        Container(
          width: _width,
          height: _height * 0.059,
          padding: EdgeInsets.symmetric(horizontal: _width * 0.042),
          decoration: BoxDecoration(
            color: myshopColors.white,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            border: Border.all(color: myshopColors.lightGray),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                myshopStrings.dresses,
                style: myshopTextStyles.darkGray14Regular400,
              ),
              SvgPicture.asset(
                'assets/icons_svg/arrow_right_icon.svg',
                color: myshopColors.gray,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
