import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/routes/router.gr.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/gradients.dart';
import 'package:flutter_myshop_app/presentation/styles/strings.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/get_started_lady_image.png',
            width: _width,
            fit: BoxFit.fitWidth,
            filterQuality: FilterQuality.high,
            colorBlendMode: BlendMode.srcOver,
            color: myshopColors.getStartedPhotoColor,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(bottom: _height * 0.256),
              width: _width * 0.717,
              height: _height * 0.18,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: myshopColors.getStartedYellowColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(150),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: _width,
              height: _height * 0.358,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                gradient: myshopGradients.purpleGradient,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: _height * 0.034),
                  RichText(
                    text: const TextSpan(
                      style: myshopTextStyles.montserrat31ExtraBold800,
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
                  SizedBox(
                    height: _height * 0.029,
                  ),
                  Container(
                    width: _width * 0.834,
                    alignment: Alignment.center,
                    child: const Text(
                      myshopStrings.loremIpsum,
                      style: myshopTextStyles.white14Regular400,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: _height * 0.039,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        _width * 0.637,
                        _height * 0.059,
                      ),
                    ),
                    onPressed: () {
                      AutoRouter.of(context).navigate(EnterPhonePageRoute());
                      // Navigator.of(context).push(MaterialPageRoute(
                      //   builder: (context) => EnterPhonePage(),
                      // ));
                    },
                    child: const Text(
                      myshopStrings.getStarted,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
