import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_myshop_app/application/navigation/navigation_cubit.dart';
import 'package:flutter_myshop_app/presentation/styles/strings.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoritePageAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: _width * 0.053),
      child: SizedBox(
        height: _height * 0.08,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                BlocProvider.of<NavigationCubit>(context, listen: false)
                    .setHome();
              },
              child: SvgPicture.asset('assets/icons_svg/arrow_back_icon.svg'),
            ),
            const Text(
              myshopStrings.favorite,
              style: myshopTextStyles.white19Bold700,
            ),
            const SizedBox(width: 17),
          ],
        ),
      ),
    );
  }
}
