import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/styles/strings.dart';

class ChoiceChips extends StatefulWidget {
  static const List<String> chipsNames = <String>[
    myshopStrings.all,
    myshopStrings.dresses,
    myshopStrings.tops,
    myshopStrings.sweaters,
    myshopStrings.jeans,
    myshopStrings.pants,
    myshopStrings.skirts,
    myshopStrings.shorts,
    myshopStrings.leggings,
  ];

  @override
  _ChoiceChipsState createState() => _ChoiceChipsState();
}

class _ChoiceChipsState extends State<ChoiceChips> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List<Widget>.generate(
          ChoiceChips.chipsNames.length,
          (int index) => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ChoiceChip(
              label: Text(ChoiceChips.chipsNames[index]),
              onSelected: (bool selected) {
                setState(() {
                  _value = selected ? index : index;
                });
              },
              selected: _value == index,
            ),
          ),
        ),
      ),
    );
  }
}
