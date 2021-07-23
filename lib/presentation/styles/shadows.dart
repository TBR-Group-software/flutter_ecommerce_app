import 'package:flutter/material.dart';

class myshopShadows {
  static const List<BoxShadow> itemShadow = <BoxShadow>[
    BoxShadow(
      color: Color.fromRGBO(52, 40, 62, 0.08),
      offset: Offset(0, 4),
      blurRadius: 12,
    ),
  ];
  static const List<BoxShadow> searchBarShadow = <BoxShadow>[
    BoxShadow(
      color: Color(0x0C000000),
      blurRadius: 15,
      offset: Offset(0, 5),
    ),
  ];
  static const List<BoxShadow> modalBottomSheetShadow = <BoxShadow>[
    BoxShadow(
      color: Color.fromRGBO(52, 40, 62, 0.08),
      blurRadius: 12,
      offset: Offset(4, 0),
    ),
  ];
}
