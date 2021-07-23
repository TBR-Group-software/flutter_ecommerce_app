import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/strings.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: _width * 0.053),
      child: SizedBox(
        height: _height * 0.08,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SvgPicture.asset(
              'assets/icons_svg/menu_alt_icon.svg',
            ),
            RichText(
              text: const TextSpan(
                style: myshopTextStyles.montserrat18ExtraBold800,
                children: <TextSpan>[
                  TextSpan(
                    text: myshopStrings.myshop_my,
                    style: TextStyle(color: myshopColors.yellow),
                  ),
                  TextSpan(
                    text: myshopStrings.myshop_shop,
                    style: TextStyle(color: myshopColors.white),
                  ),
                ],
              ),
            ),
            SvgPicture.asset('assets/icons_svg/bell_icon.svg'),
          ],
        ),
      ),
    );
  }
}
