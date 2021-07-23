import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/common/product_tile.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/gradients.dart';
import 'package:flutter_myshop_app/presentation/styles/shadows.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../cart_page/cart_page.dart';
import 'widgets/colors_chips.dart';
import 'widgets/review_element.dart';
import 'widgets/sizes_chips.dart';

class ProductPage extends StatelessWidget {
  static const List<String> mainImagesPaths = <String>[
    'assets/images/featured/astylish_women_open_front_long_sleeve.png',
    'assets/images/featured/astylish_women_open_front_long_sleeve_2.jpeg',
    'assets/images/featured/astylish_women_open_front_long_sleeve_3.jpeg',
  ];
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

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;
    return Scaffold(
      backgroundColor: myshopColors.background,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Column(
              children: <Widget>[
                CarouselSlider.builder(
                  itemCount: mainImagesPaths.length,
                  itemBuilder: (BuildContext context, int index, int j) =>
                      Container(
                    width: _width,
                    color: myshopColors.white,
                    child: Image.asset(
                      mainImagesPaths[index],
                    ),
                  ),
                  options: CarouselOptions(
                    height: _width,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    scrollPhysics: const ClampingScrollPhysics(),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: const BoxDecoration(
                        boxShadow: myshopShadows.itemShadow,
                        color: myshopColors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 14),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 76,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        SvgPicture.asset(
                                          'assets/icons_svg/star_icon.svg',
                                          color: myshopColors.orange,
                                          height: 12,
                                          width: 12,
                                        ),
                                        SvgPicture.asset(
                                          'assets/icons_svg/star_icon.svg',
                                          color: myshopColors.orange,
                                          height: 12,
                                          width: 12,
                                        ),
                                        SvgPicture.asset(
                                          'assets/icons_svg/star_icon.svg',
                                          color: myshopColors.orange,
                                          height: 12,
                                          width: 12,
                                        ),
                                        SvgPicture.asset(
                                          'assets/icons_svg/star_icon.svg',
                                          color: myshopColors.orange,
                                          height: 12,
                                          width: 12,
                                        ),
                                        SvgPicture.asset(
                                          'assets/icons_svg/star_icon.svg',
                                          color: myshopColors.orange,
                                          height: 12,
                                          width: 12,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  const Text(
                                    '8 reviews',
                                    style:
                                        myshopTextStyles.darkGray12Regular400,
                                  )
                                ],
                              ),
                              const Text(
                                'In Stock',
                                style: myshopTextStyles.green12Bold700,
                              )
                            ],
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'Astylish Women Open Front Long Sleeve Chunky Knit Cardigan',
                            style: myshopTextStyles.dark19Regular400,
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            '\$89.99',
                            style: myshopTextStyles.dark25Bold700,
                          ),
                          const SizedBox(height: 16),
                          const Text(
                            'Colors',
                            style: myshopTextStyles.gray14SemiBold600,
                          ),
                          const SizedBox(height: 8),
                          const ColorsChips(),
                          const SizedBox(height: 16),
                          const Text(
                            'Sizes',
                            style: myshopTextStyles.gray14SemiBold600,
                          ),
                          const SizedBox(height: 8),
                          const SizesChips(),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: const BoxDecoration(
                        boxShadow: myshopShadows.itemShadow,
                        color: myshopColors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 24),
                          const Text(
                            'Product details',
                            style: myshopTextStyles.dark19Bold700,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Women\'s Casual V-Neck Pullover Sweater Long Sleeved Sweater Top with High Low Hemline is going to be the newest staple in your wardrobe! Living up to its namesake, this sweater is unbelievably soft, li...',
                            style: myshopTextStyles.darkGray14Regular400,
                          ),
                          const SizedBox(height: 16),
                          Align(
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              'assets/icons_svg/arrow_down_icon.svg',
                              color: myshopColors.gray,
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: const BoxDecoration(
                        boxShadow: myshopShadows.itemShadow,
                        color: myshopColors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Text(
                                'Reviews',
                                style: myshopTextStyles.dark19Bold700,
                              ),
                              Row(
                                children: <Widget>[
                                  const Text(
                                    'See All',
                                    style: myshopTextStyles.gray12Bold700,
                                  ),
                                  const SizedBox(width: 6),
                                  SvgPicture.asset(
                                    'assets/icons_svg/arrow_right_icon.svg',
                                    color: myshopColors.gray,
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 16),
                          ReviewElement(
                            reviewerName: 'Olha Chabanova',
                            reviewDate: DateTime(2021, 6),
                            reviewText:
                                'I’m old (rolling through my 50’s). But, this is my daughter in law’s favorite color right now.❤️ So I wear it whenever we hang out! She’s my fashion consultant who keeps me on trend🤣',
                            helpfulScore: 835,
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Products related to this item',
                            style: myshopTextStyles.dark19Bold700,
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            height: 69 + _width * 0.435 + _height * 0.027,
                            child: ListView.separated(
                              physics: const ClampingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) =>
                                  SizedBox(
                                width: _width * 0.435,
                                child: featuredTiles[index],
                              ),
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const SizedBox(width: 16),
                              itemCount: featuredTiles.length,
                            ),
                          ),
                          const SizedBox(height: 120),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: _mediaQuery.padding.top,
            decoration: const BoxDecoration(
              gradient: myshopGradients.topPaddingGradient,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: _mediaQuery.padding.bottom + 64,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            AutoRouter.of(context).pop();
                          },
                          child: SizedBox(
                            child: SvgPicture.asset(
                              'assets/icons_svg/arrow_back_icon.svg',
                              color: myshopColors.gray,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push<CartPage>(
                              MaterialPageRoute<CartPage>(
                                builder: (BuildContext context) => CartPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(215, 48),
                          ),
                          child: const Text(
                            'Add to Cart',
                            style: myshopTextStyles.white17Bold700,
                          ),
                        ),
                        Image.asset(
                            'assets/icons_png/heart_purple_big_icon.png'),
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
