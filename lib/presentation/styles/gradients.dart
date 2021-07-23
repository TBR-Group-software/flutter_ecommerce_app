import 'package:flutter/painting.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';

class myshopGradients {
  static const Gradient purpleGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: <Color>[
      Color(0xFF34283E),
      Color(0xFF845FA1),
    ],
  );
  static const Gradient orangeGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: <Color>[
      Color(0xFFD23A3A),
      Color(0xFFF49763),
    ],
  );
  static const Gradient adsSliderGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: <Color>[
      Color(0x291d2332),
      Color(0xCC34283E),
    ],
  );
  static const Gradient catalogueTileGradient = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: <Color>[
      Color(0x2934283e),
      Color(0xCC34283E),
    ],
  );
  static const Gradient topPaddingGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[
      Color(0x5E202020),
      myshopColors.opaque,
    ],
  );
}
