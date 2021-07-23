import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/common/purple_background.dart';
import 'package:flutter_myshop_app/presentation/common/search_bar.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/strings.dart';

import 'widgets/catalogue_item.dart';
import 'widgets/catalogue_page_appbar.dart';

class CataloguePage extends StatelessWidget {
  final List<CatalogueItem> catalogueItems = <CatalogueItem>[
    const CatalogueItem(
      imagePath: 'assets/images/catalogue/womens_fashion.png',
      itemName: myshopStrings.womensFashion,
    ),
    const CatalogueItem(
      imagePath: 'assets/images/catalogue/mens_fashion.png',
      itemName: myshopStrings.mensFashion,
    ),
    const CatalogueItem(
      imagePath: 'assets/images/catalogue/phones.png',
      itemName: myshopStrings.phones,
    ),
    const CatalogueItem(
      imagePath: 'assets/images/catalogue/computers.png',
      itemName: myshopStrings.computers,
    ),
    const CatalogueItem(
      imagePath: 'assets/images/catalogue/smart_home.png',
      itemName: myshopStrings.smartHome,
    ),
    const CatalogueItem(
      imagePath: 'assets/images/catalogue/crafts&arts.png',
      itemName: myshopStrings.craftsAndArts,
    ),
    const CatalogueItem(
      imagePath: 'assets/images/catalogue/baby.png',
      itemName: myshopStrings.baby,
    ),
    const CatalogueItem(
      imagePath: 'assets/images/catalogue/sport.png',
      itemName: myshopStrings.sport,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
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
                CataloguePageAppBar(),
                Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(vertical: _height * 0.046),
                    itemBuilder: (BuildContext context, int index) =>
                        Center(child: catalogueItems[index]),
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(height: _height * 0.02),
                    itemCount: catalogueItems.length,
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
}
