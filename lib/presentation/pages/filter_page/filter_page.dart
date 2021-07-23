import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/common/purple_background.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/strings.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';

import 'widgets/brand_element.dart';
import 'widgets/categories_element.dart';
import 'widgets/colors_element.dart';
import 'widgets/filter_page_appbar.dart';
import 'widgets/price_element.dart';
import 'widgets/sizes_element.dart';
import 'widgets/sortby_element.dart';

class FilterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;

    return Scaffold(
      backgroundColor: myshopColors.background,
      body: Stack(
        children: <Widget>[
          PurpleBackground(height: _mediaQuery.padding.top + _height * 0.05),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FilterPageAppBar(),
                PriceElement(),
                SizedBox(height: _height * 0.03),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: _width * 0.042),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CategoriesElement(),
                        BrandElement(),
                        ColorsElement(),
                        SizesElement(),
                        SortbyElement(),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: SizedBox(
                            height: _height * 0.059,
                            width: _width,
                            child: const Center(
                              child: Text(
                                myshopStrings.results,
                                style: myshopTextStyles.white17Bold700,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: _height * 0.02),
              ],
            ),
          )
        ],
      ),
    );
  }
}
