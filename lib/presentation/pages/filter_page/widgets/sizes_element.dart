import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/styles/strings.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';

import 'sizes_chips.dart';

class SizesElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          myshopStrings.sizes,
          style: myshopTextStyles.gray14SemiBold600,
        ),
        SizedBox(height: _height * 0.01),
        SizesChips(),
      ],
    );
  }
}
