import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/strings.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';

class PriceElement extends StatefulWidget {
  @override
  _PriceElementState createState() => _PriceElementState();
}

class _PriceElementState extends State<PriceElement> {
  RangeValues _rangeValues = const RangeValues(0, 10000);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;

    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _width * 0.042),
            child: const Text(
              myshopStrings.price,
              style: myshopTextStyles.gray14SemiBold600,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _width * 0.012),
            child: RangeSlider(
              onChanged: (RangeValues value) {
                setState(() {
                  _rangeValues = value;
                });
              },
              values: _rangeValues,
              min: 0,
              max: 10000,
            ),
          ),
          Container(
            width: _width,
            height: _height * 0.059,
            margin: EdgeInsets.symmetric(horizontal: _width * 0.042),
            decoration: BoxDecoration(
              color: myshopColors.white,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              border: Border.all(color: myshopColors.lightGray),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: Text('\$${_rangeValues.start.round()}'),
                  ),
                ),
                const VerticalDivider(
                  color: myshopColors.lightGray,
                  thickness: 1,
                ),
                Expanded(
                  child: Center(
                    child: Text('\$${_rangeValues.end.round()}'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
