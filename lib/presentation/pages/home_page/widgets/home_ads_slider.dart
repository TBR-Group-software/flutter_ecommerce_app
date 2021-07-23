import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'home_carousel_item.dart';

class HomeAdsSlider extends StatelessWidget {
  final List<HomeCarouselItem> carouselItems = <HomeCarouselItem>[
    const HomeCarouselItem(
      assetImage: AssetImage('assets/images/fashion_sale.png'),
      adText: 'Fashion 1 Sale',
    ),
    const HomeCarouselItem(
      assetImage: AssetImage('assets/images/fashion_sale.png'),
      adText: 'Fashion 2 Sale',
    ),
    const HomeCarouselItem(
      assetImage: AssetImage('assets/images/fashion_sale.png'),
      adText: 'Fashion 3 Sale',
    ),
    const HomeCarouselItem(
      assetImage: AssetImage('assets/images/fashion_sale.png'),
      adText: 'Fashion 4 Sale',
    ),
    const HomeCarouselItem(
      assetImage: AssetImage('assets/images/fashion_sale.png'),
      adText: 'Fashion 5 Sale',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: _width * 0.914,
        height: _height * 0.108,
        child: CarouselSlider.builder(
          itemCount: carouselItems.length,
          itemBuilder:
              (BuildContext context, int i, int j) =>
          carouselItems[i],
          options: CarouselOptions(
            height: _height * 0.108,
            viewportFraction: 1,
            autoPlay: true,
          ),
        ),
      ),
    );
  }
}
