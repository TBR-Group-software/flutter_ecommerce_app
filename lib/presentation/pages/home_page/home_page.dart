import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/common/product_tile.dart';
import 'package:flutter_myshop_app/presentation/common/purple_background.dart';
import 'package:flutter_myshop_app/presentation/common/search_bar.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/strings.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/home_ads_slider.dart';
import 'widgets/home_catalogue_tile.dart';
import 'widgets/home_page_appbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;

    return Scaffold(
      backgroundColor: myshopColors.opaque,
      body: Stack(
        children: <Widget>[
          PurpleBackground(height: _mediaQuery.padding.top + _height * 0.08),
          SafeArea(
            bottom: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                HomePageAppBar(),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: _height * 0.04),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: _width * 0.053),
                          child: HomeAdsSlider(),
                        ),
                        SizedBox(height: _height * 0.038),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: _width * 0.053),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Text(
                                myshopStrings.catalogue,
                                style: myshopTextStyles.dark19Bold700,
                              ),
                              Row(
                                children: <Widget>[
                                  const Text(
                                    myshopStrings.seeAll,
                                    style: myshopTextStyles.gray12Bold700,
                                  ),
                                  SizedBox(width: _width * 0.016),
                                  SvgPicture.asset(
                                    'assets/icons_svg/arrow_right_icon.svg',
                                    color: myshopColors.gray,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: _height * 0.023),
                        SizedBox(
                          height: _width * 0.235,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int i) {
                              if (i == 0) {
                                return Padding(
                                  padding:
                                      EdgeInsets.only(left: _width * 0.053),
                                  child: catalogueTiles[i],
                                );
                              }
                              return catalogueTiles[i];
                            },
                            separatorBuilder: (BuildContext context, int i) =>
                                SizedBox(width: _width * 0.043),
                            itemCount: catalogueTiles.length,
                            shrinkWrap: true,
                          ),
                        ),
                        SizedBox(
                          height: _height * 0.039,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: _width * 0.053),
                          child: const Text(
                            myshopStrings.featured,
                            style: myshopTextStyles.dark19Bold700,
                          ),
                        ),
                        SizedBox(
                          height: _height * 0.019,
                        ),
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
                        const SizedBox(height: 25),
                        const Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              myshopColors.dark,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SearchBar(),
        ],
      ),
    );
  }

  final List<ProductTile> featuredTiles = <ProductTile>[
    const ProductTile(
      imagePath:
          'assets/images/featured/angashion_womens_sweaters_casual_long.png',
      price: '99',
      itemName: 'Angashion Women\'s Sweaters Casual Long',
    ),
    const ProductTile(
      imagePath:
          'assets/images/featured/ECOWISH_womens_color_block_striped_draped.png',
      price: '139',
      itemName: 'Astylish Women Open Front Long Sleeve',
    ),
    const ProductTile(
      imagePath:
          'assets/images/featured/astylish_women_open_front_long_sleeve.png',
      price: '179',
      discountPrice: '99',
      discountPercent: '45',
      itemName: 'Astylish Women Open Front Long Sleeve',
    ),
    const ProductTile(
      imagePath:
          'assets/images/featured/saodimallsu_womens_turtleneck_oversized.png',
      price: '89',
      itemName: 'Astylish Women Open Front Long Sleeve',
    ),
  ];

  static const List<HomeCatalogueTile> catalogueTiles = <HomeCatalogueTile>[
    HomeCatalogueTile(
      assetImage: AssetImage('assets/images/catalogue/womens_fashion.png'),
      title: myshopStrings.womensFashion,
    ),
    HomeCatalogueTile(
      assetImage: AssetImage('assets/images/catalogue/mens_fashion.png'),
      title: myshopStrings.mensFashion,
    ),
    HomeCatalogueTile(
      assetImage: AssetImage('assets/images/catalogue/phones.png'),
      title: myshopStrings.phones,
    ),
    HomeCatalogueTile(
      assetImage: AssetImage('assets/images/catalogue/computers.png'),
      title: myshopStrings.computers,
    ),
    HomeCatalogueTile(
      assetImage: AssetImage('assets/images/catalogue/smart_home.png'),
      title: myshopStrings.smartHome,
    ),
    HomeCatalogueTile(
      assetImage: AssetImage('assets/images/catalogue/crafts&arts.png'),
      title: myshopStrings.craftsAndArts,
    ),
    HomeCatalogueTile(
      assetImage: AssetImage('assets/images/catalogue/baby.png'),
      title: myshopStrings.baby,
    ),
    HomeCatalogueTile(
      assetImage: AssetImage('assets/images/catalogue/sport.png'),
      title: myshopStrings.sport,
    ),
  ];
}
