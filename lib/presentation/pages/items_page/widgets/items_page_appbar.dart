import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/pages/filter_page/filter_page.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemsPageAppBar extends StatelessWidget {
  final String? itemName;

  const ItemsPageAppBar({required this.itemName});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: _width * 0.053),
      child: SizedBox(
        height: _height * 0.08,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              child: SvgPicture.asset('assets/icons_svg/arrow_back_icon.svg'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            Text(
              itemName!,
              style: myshopTextStyles.white19Bold700,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push<FilterPage>(
                  MaterialPageRoute<FilterPage>(
                    builder: (BuildContext context) => FilterPage(),
                  ),
                );
              },
              child: SvgPicture.asset('assets/icons_svg/filter_icon.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
