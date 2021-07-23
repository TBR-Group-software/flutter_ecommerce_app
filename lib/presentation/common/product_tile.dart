import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/pages/product_page/product_page.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/gradients.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductTile extends StatefulWidget {
  final String imagePath;
  final String price;
  final String itemName;
  final String? discountPercent;
  final String? discountPrice;

  const ProductTile({
    required this.imagePath,
    required this.price,
    required this.itemName,
    this.discountPercent,
    this.discountPrice,
  });

  @override
  _ProductTileState createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: ColoredBox(
                    color: myshopColors.white,
                    child: SizedBox(
                      height: _width * 0.435,
                      width: _width * 0.435,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push<ProductPage>(
                            MaterialPageRoute<ProductPage>(
                              builder: (BuildContext context) => ProductPage(),
                            ),
                          );
                        },
                        child: Image.asset(
                          widget.imagePath,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: _height * 0.01),
                SizedBox(
                  width: _width * 0.152,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SvgPicture.asset(
                        'assets/icons_svg/star_icon.svg',
                        color: myshopColors.orange,
                      ),
                      SvgPicture.asset(
                        'assets/icons_svg/star_icon.svg',
                        color: myshopColors.orange,
                      ),
                      SvgPicture.asset(
                        'assets/icons_svg/star_icon.svg',
                        color: myshopColors.orange,
                      ),
                      SvgPicture.asset(
                        'assets/icons_svg/star_icon.svg',
                        color: myshopColors.orange,
                      ),
                      SvgPicture.asset(
                        'assets/icons_svg/star_icon.svg',
                        color: myshopColors.orange,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  child: Container(
                    height: _width * 0.096,
                    width: _width * 0.096,
                    margin: EdgeInsets.only(
                      right: _width * 0.021,
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: myshopColors.white,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Color(0x1434283E),
                          blurRadius: 12,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: isFavorite
                          ? SvgPicture.asset(
                              'assets/icons_svg/heart_filled_icon.svg',
                              color: myshopColors.yellow,
                            )
                          : Image.asset(
                              'assets/icons_png/purple_unfilled_heart_icon.png'),
                    ),
                  ),
                ),
              ),
            ),
            if (widget.discountPercent != null)
              Container(
                height: _height * 0.024,
                width: _width * 0.125,
                margin: EdgeInsets.only(top: _height * 0.01),
                decoration: const BoxDecoration(
                  gradient: myshopGradients.orangeGradient,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Center(
                  child: Text(
                    '-${widget.discountPercent}%',
                    style: myshopTextStyles.white11Bold700,
                  ),
                ),
              )
            else
              const SizedBox(),
          ],
        ),
        SizedBox(height: _height * 0.01),
        Text(
          widget.itemName,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: myshopTextStyles.dark14Regular400,
        ),
        SizedBox(height: _height * 0.007),
        if (widget.discountPrice == null)
          Text(
            '\$${widget.price}',
            style: myshopTextStyles.dark17Bold700,
          )
        else
          Row(
            children: <Widget>[
              Text(
                '\$${widget.discountPrice}',
                style: myshopTextStyles.red17Bold700,
              ),
              SizedBox(width: _width * 0.01),
              Text(
                '\$${widget.price}',
                style: myshopTextStyles.gray14Regular400LineThrough,
              ),
            ],
          ),
      ],
    );
  }
}
