import 'package:flutter/material.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';

class myshopInputDecorations {
  static const InputDecoration phone = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        color: myshopColors.lightGray,
      ),
    ),
    hintStyle: TextStyle(
      color: myshopColors.lightGray,
    ),
    hintText: '(99) 999 99 99',
  );
}
