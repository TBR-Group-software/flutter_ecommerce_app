import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/shadows.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../styles/strings.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _width = _mediaQuery.size.width;
    final double _height = _mediaQuery.size.height;
    return Container(
      margin: EdgeInsets.only(
        top: _mediaQuery.padding.top + _height * 0.05,
        left: _width * 0.053,
        right: _width * 0.053,
      ),
      height: _height * 0.054,
      padding: const EdgeInsets.only(left: 19),
      decoration: BoxDecoration(
        color: myshopColors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: myshopShadows.searchBarShadow,
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset('assets/icons_svg/search_icon.svg'),
          SizedBox(width: _width * 0.029),
          const Text(
            myshopStrings.whatAreYouLookingFor,
            style: myshopTextStyles.gray14SemiBold600,
          ),
        ],
      ),
    );
  }
}
