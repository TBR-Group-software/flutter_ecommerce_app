import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/common/product_tile.dart';
import 'package:flutter_myshop_app/presentation/common/purple_background.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/strings.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/favorite_page_appbar.dart';

class FavoritePage extends StatelessWidget {
  static const List<ProductTile> featuredTiles = <ProductTile>[
    ProductTile(
      imagePath:
          'assets/images/featured/angashion_womens_sweaters_casual_long.png',
      price: '99',
      itemName: 'Angashion Women\'s Sweaters Casual Long',
    ),
    ProductTile(
      imagePath:
          'assets/images/featured/ECOWISH_womens_color_block_striped_draped.png',
      price: '139',
      itemName: 'Astylish Women Open Front Long Sleeve',
    ),
    ProductTile(
      imagePath:
          'assets/images/featured/astylish_women_open_front_long_sleeve.png',
      price: '179',
      discountPrice: '99',
      discountPercent: '45',
      itemName: 'Astylish Women Open Front Long Sleeve',
    ),
    ProductTile(
      imagePath:
          'assets/images/featured/saodimallsu_womens_turtleneck_oversized.png',
      price: '89',
      itemName: 'Astylish Women Open Front Long Sleeve',
    ),
    ProductTile(
      imagePath:
          'assets/images/featured/saodimallsu_womens_turtleneck_oversized.png',
      price: '89',
      itemName: 'Astylish Women Open Front Long Sleeve',
    ),
    ProductTile(
      imagePath:
          'assets/images/featured/saodimallsu_womens_turtleneck_oversized.png',
      price: '89',
      itemName: 'Astylish Women Open Front Long Sleeve',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;
    return Scaffold(
      backgroundColor: myshopColors.opaque,
      body: Stack(
        children: <Widget>[
          PurpleBackground(height: _mediaQuery.padding.top + _height * 0.05),
          SafeArea(
            bottom: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FavoritePageAppBar(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: _width * 0.042),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Text(
                                '166 items',
                                style: myshopTextStyles.dark19Bold700,
                              ),
                              Row(
                                children: <Widget>[
                                  const Text(
                                    myshopStrings.sortBy,
                                    style: myshopTextStyles.gray12Bold700,
                                  ),
                                  const SizedBox(width: 4),
                                  const Text(
                                    myshopStrings.priceLowestToHigh,
                                    style: myshopTextStyles.dark12Bold700,
                                  ),
                                  const SizedBox(width: 6),
                                  SvgPicture.asset(
                                    'assets/icons_svg/arrow_down_icon.svg',
                                    color: myshopColors.dark,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: _height * 0.02),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: _width * 0.053),
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: _width * 0.045,
                              mainAxisSpacing: _height * 0.03,
                              mainAxisExtent:
                                  69 + _width * 0.435 + _height * 0.027,
                            ),
                            itemBuilder: (BuildContext context, int i) =>
                                featuredTiles[i],
                            itemCount: featuredTiles.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
