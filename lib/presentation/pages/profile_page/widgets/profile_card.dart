import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/shadows.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';

class ProfileCard extends StatelessWidget {
  final String assetPath;
  final String cardName;
  const ProfileCard({
    required this.assetPath,
    required this.cardName,
  });

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;

    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: _width * 0.048),
      margin: EdgeInsets.only(bottom: _height * 0.02),
      height: _height * 0.069,
      width: _width * 0.914,
      decoration: BoxDecoration(
        color: myshopColors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: myshopShadows.itemShadow,
      ),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: _width * 0.058,
            child: Image.asset(assetPath),
          ),
          SizedBox(width: _width * 0.04),
          Text(
            cardName,
            style: myshopTextStyles.dark17SemiBold600,
          )
        ],
      ),
    );
  }
}
