import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/shadows.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';

import 'catalogue_item_modal_bottom_sheet.dart';

class CatalogueItem extends StatelessWidget {
  final String? itemName;
  final String? imagePath;

  const CatalogueItem({this.itemName, this.imagePath});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<CatalogueItemModalBottomSheet>(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          context: context,
          builder: (BuildContext context) =>
              CatalogueItemModalBottomSheet(name: itemName),
        );
      },
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        child: Container(
          width: _width * 0.914,
          height: _height * 0.108,
          decoration: const BoxDecoration(
            color: myshopColors.white,
            boxShadow: myshopShadows.itemShadow,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: _width * 0.042),
                child: Text(
                  itemName!,
                  style: myshopTextStyles.dark17Bold700,
                ),
              ),
              SizedBox(
                height: _height * 0.108,
                width: _height * 0.108,
                child: Image.asset(
                  imagePath!,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
