import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/pages/items_page/items_page.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/shadows.dart';
import 'package:flutter_myshop_app/presentation/styles/strings.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';

class CatalogueItemModalBottomSheet extends StatelessWidget {
  final String? name;
  static const List<String> itemNames = <String>[
    myshopStrings.clothing,
    myshopStrings.shoes,
    myshopStrings.jewelry,
    myshopStrings.watches,
    myshopStrings.handbags,
    myshopStrings.accessories,
    myshopStrings.mensFashion,
    myshopStrings.girlsFashion,
    myshopStrings.boysFashion,
  ];

  const CatalogueItemModalBottomSheet({required this.name});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;
    return Container(
      height: _height * 0.482,
      decoration: const BoxDecoration(
        color: myshopColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: myshopShadows.modalBottomSheetShadow,
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: _height * 0.015),
          Container(
            height: _height * 0.006,
            width: _width * 0.16,
            decoration: BoxDecoration(
              color: myshopColors.modalBottomSheetSlideColor,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          SizedBox(height: _height * 0.02),
          Text(
            name!,
            style: myshopTextStyles.dark19Bold700,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                SizedBox(height: _height * 0.02),
                SizedBox(
                  height: _height * 0.36,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: _width * 0.064),
                    child: ListView.separated(
                      itemBuilder: (BuildContext context, int index) =>
                          GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.of(context).push<ItemsPage>(
                            MaterialPageRoute<ItemsPage>(
                              builder: (BuildContext context) => ItemsPage(
                                itemName: itemNames[index],
                              ),
                            ),
                          );
                        },
                        child: Text(
                          itemNames[index],
                        ),
                      ),
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(height: _height * 0.0175),
                      itemCount: itemNames.length,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
