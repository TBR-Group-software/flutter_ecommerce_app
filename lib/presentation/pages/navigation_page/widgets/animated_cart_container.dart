import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_myshop_app/application/cart/cart_cubit.dart';
import 'package:flutter_myshop_app/presentation/styles/gradients.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnimatedCartContainer extends StatefulWidget {
  @override
  _AnimatedCartContainerState createState() => _AnimatedCartContainerState();
}

class _AnimatedCartContainerState extends State<AnimatedCartContainer> {
  bool isFull = false;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;
    return GestureDetector(
      onTap: () {
        if (isFull) {
          context.read<CartCubit>().setSmall();
          setState(() {
            isFull = !isFull;
          });
        } else if (!isFull) {
          context.read<CartCubit>().setFull();
          setState(() {
            isFull = !isFull;
          });
        }
      },
      child: AnimatedContainer(
        transform: isFull
            ? Matrix4.translationValues(0, 0, 1)
            : Matrix4.translationValues(_width * 0.17, 0, 1),
        width: _width * 0.309,
        height: _height * 0.069,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80), bottomLeft: Radius.circular(80)),
            gradient: myshopGradients.purpleGradient),
        duration: const Duration(milliseconds: 200),
        child: Row(
          children: <Widget>[
            SizedBox(width: _width * 0.053),
            SvgPicture.asset('assets/icons_svg/cart_icon.svg'),
            SizedBox(width: _width * 0.026),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  '239.99\$',
                  style: myshopTextStyles.white11Bold700,
                ),
                Text(
                  '2 items',
                  style: myshopTextStyles.animatedCartItemsColor11Bold700,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
