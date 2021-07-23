import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';

class ColorsChips extends StatefulWidget {
  static const List<String> chipsNames = <String>[
    'assets/images/featured/astylish_women_open_front_long_sleeve.png',
    'assets/images/featured/astylish_women_open_front_long_sleeve_4.jpeg',
    'assets/images/featured/astylish_women_open_front_long_sleeve_5.jpeg',
    'assets/images/featured/astylish_women_open_front_long_sleeve_6.jpeg',
    'assets/images/featured/astylish_women_open_front_long_sleeve_7.jpeg',
    'assets/images/featured/astylish_women_open_front_long_sleeve_8.jpeg',
  ];

  const ColorsChips();

  @override
  _ColorsChipsState createState() => _ColorsChipsState();
}

class _ColorsChipsState extends State<ColorsChips> {
  final List<int> _filteredIndexes = <int>[];

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _width = _mediaQuery.size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List<Widget>.generate(
        ColorsChips.chipsNames.length,
        (int index) => ChoiceChip(
          padding: const EdgeInsets.all(0),
          labelPadding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          label: Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              width: _width * 0.128,
              height: _width * 0.128,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(6)),
                color: myshopColors.white,
                image: DecorationImage(
                  image: AssetImage(ColorsChips.chipsNames[index]),
                ),
              ),
            ),
          ),
          onSelected: (bool selected) {
            setState(() {
              if (selected) {
                _filteredIndexes.add(index);
              } else {
                _filteredIndexes.removeWhere(
                  (int _index) {
                    return _index == index;
                  },
                );
              }
            });
          },
          selected: _filteredIndexes.contains(index),
        ),
      ),
    );
  }
}
