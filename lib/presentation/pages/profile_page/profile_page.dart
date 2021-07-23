import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/styles/gradients.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';

import 'widgets/profile_card.dart';

class ProfilePage extends StatelessWidget {
  static const List<ProfileCard> profileCards = <ProfileCard>[
    ProfileCard(
      assetPath: 'assets/icons_png/location_icon.png',
      cardName: 'Shipping Addresses',
    ),
    ProfileCard(
      assetPath: 'assets/icons_png/card_icon.png',
      cardName: 'Payment Methods',
    ),
    ProfileCard(
      assetPath: 'assets/icons_png/clipboard_icon.png',
      cardName: 'Orders',
    ),
    ProfileCard(
      assetPath: 'assets/icons_png/purple_bordered_heart_icon.png',
      cardName: 'Favorite',
    ),
    ProfileCard(
      assetPath: 'assets/icons_png/gear_icon.png',
      cardName: 'Settings',
    ),
    ProfileCard(
      assetPath: 'assets/icons_png/logout_icon.png',
      cardName: 'Log Out',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;

    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: _height * 0.18,
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(
                bottom: _height * 0.024,
                left: _width * 0.042,
              ),
              decoration: const BoxDecoration(
                gradient: myshopGradients.purpleGradient,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(300),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    height: _width * 0.186,
                    width: _width * 0.186,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/avatar.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: _width * 0.042),
                  Container(
                    height: _width * 0.186,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          'Oleh Chabanov',
                          style: myshopTextStyles.white19Bold700,
                        ),
                        Text(
                          '+380991234567',
                          style: myshopTextStyles.white14Regular400,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(),
          ],
        ),
        SizedBox(height: _height * 0.03),
        Column(
          children: List<ProfileCard>.generate(
            profileCards.length,
            (int index) => profileCards[index],
          ),
        ),
        SizedBox(height: _height * 0.108),
        Padding(
          padding: EdgeInsets.only(left: _width * 0.043),
          child: const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Privacy Policy',
              style: myshopTextStyles.darkGray12Regular400Underline,
            ),
          ),
        )
      ],
    );
  }
}
