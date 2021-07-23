import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/common/purple_background.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/shadows.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';

import 'widgets/cart_page_appbar.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;

    return Scaffold(
      backgroundColor: myshopColors.background,
      body: Stack(
        children: <Widget>[
          PurpleBackground(height: _height * 0.108),
          SafeArea(
            child: Column(
              children: <Widget>[
                CartPageAppBar(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: _mediaQuery.padding.bottom + 106,
              decoration: const BoxDecoration(
                boxShadow: myshopShadows.searchBarShadow,
                color: myshopColors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24),
                  topLeft: Radius.circular(24),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: SizedBox(
                      width: 343,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text(
                            'Total Price',
                            style: myshopTextStyles.dark19Bold700,
                          ),
                          Text(
                            '\$239.99',
                            style: myshopTextStyles.dark19Bold700,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push<CartPage>(
                              MaterialPageRoute<CartPage>(
                                builder: (BuildContext context) => CartPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(343, 48),
                          ),
                          child: const Text(
                            'Add to Cart',
                            style: myshopTextStyles.white17Bold700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: _mediaQuery.padding.bottom),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
