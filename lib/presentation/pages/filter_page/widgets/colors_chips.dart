import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';

class ColorsChips extends StatefulWidget {
  static const List<Color> chipsColors = <Color>[
    myshopColors.dark,
    myshopColors.red,
    Color(0xFF76B559),
    Color(0xFF5D72E1),
    Color(0xFFB768B9),
    Color(0xFFE6D227),
  ];

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
        ColorsChips.chipsColors.length,
        (int index) => ChoiceChip(
          padding: const EdgeInsets.all(2),
          labelPadding: const EdgeInsets.all(0),
          shape: const CircleBorder(),
          backgroundColor: myshopColors.background,
          label: Container(
            width: _width * 0.098,
            height: _width * 0.098,
            decoration: BoxDecoration(
              color: ColorsChips.chipsColors[index],
              shape: BoxShape.circle,
              border: Border.all(
                color: myshopColors.background,
                width: _width * 0.007,
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
