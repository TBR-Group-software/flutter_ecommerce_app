import 'package:flutter/material.dart';

class SizesChips extends StatefulWidget {
  static const List<String> chipsNames = <String>[
    'XXS',
    'XS',
    'S',
    'M',
    'L',
    'XL',
  ];

  @override
  _SizesChipsState createState() => _SizesChipsState();
}

class _SizesChipsState extends State<SizesChips> {
  final List<int> _filteredIndexes = <int>[];

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _width = _mediaQuery.size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List<Widget>.generate(
        SizesChips.chipsNames.length,
        (int index) => ChoiceChip(
          padding: const EdgeInsets.all(0),
          labelPadding: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          label: SizedBox(
            width: _width * 0.128,
            height: _width * 0.128,
            child: Align(
              alignment: Alignment.center,
              child: Text(SizesChips.chipsNames[index]),
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
