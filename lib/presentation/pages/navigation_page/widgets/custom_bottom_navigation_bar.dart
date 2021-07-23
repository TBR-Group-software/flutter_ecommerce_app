import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_myshop_app/application/cart/cart_cubit.dart';
import 'package:flutter_myshop_app/application/navigation/navigation_cubit.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';
import 'package:flutter_myshop_app/presentation/styles/strings.dart';
import 'package:flutter_myshop_app/presentation/styles/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar();

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    final double _width = _mediaQuery.size.width;
    return Container(
      width: _width,
      alignment: Alignment.topLeft,
      height: _mediaQuery.padding.bottom + 40 + _height * 0.02,
      padding: EdgeInsets.only(top: _height * 0.017),
      decoration: const BoxDecoration(
        color: myshopColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: BlocBuilder<CartCubit, CartState>(
        builder: (BuildContext context, CartState state) => AnimatedContainer(
          alignment: Alignment.topLeft,
          width: state is CartFull ? _width * 0.7 : _width * 0.9,
          duration: const Duration(milliseconds: 200),
          child: BlocBuilder<NavigationCubit, NavigationState>(
            builder: (BuildContext context, NavigationState state) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    context.read<NavigationCubit>().setHome();
                  },
                  child: SizedBox(
                    height: 35,
                    child: ColoredBox(
                      color: myshopColors.opaque,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          (state is NavigationHome)
                              ? Image.asset(
                                  'assets/icons_png/home_filled_icon.png')
                              : SvgPicture.asset(
                                  'assets/icons_svg/home_icon.svg'),
                          Text(
                            myshopStrings.home,
                            style: (state is NavigationHome)
                                ? myshopTextStyles.dark10Bold700
                                : myshopTextStyles.gray10Bold700,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<NavigationCubit>().setCatalogue();
                  },
                  child: SizedBox(
                    height: 35,
                    child: ColoredBox(
                      color: myshopColors.opaque,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          (state is NavigationCatalogue)
                              ? Image.asset(
                                  'assets/icons_png/catalogue_filled_icon.png')
                              : SvgPicture.asset(
                                  'assets/icons_svg/catalogue_icon.svg'),
                          Text(
                            myshopStrings.catalogue,
                            style: (state is NavigationCatalogue)
                                ? myshopTextStyles.dark10Bold700
                                : myshopTextStyles.gray10Bold700,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<NavigationCubit>().setFavorite();
                  },
                  child: SizedBox(
                    height: 35,
                    child: ColoredBox(
                      color: myshopColors.opaque,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          (state is NavigationFavorite)
                              ? Image.asset(
                                  'assets/icons_png/favorite_filled_icon.png')
                              : SvgPicture.asset(
                                  'assets/icons_svg/favorite_icon.svg'),
                          Text(
                            myshopStrings.favorite,
                            style: (state is NavigationFavorite)
                                ? myshopTextStyles.dark10Bold700
                                : myshopTextStyles.gray10Bold700,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<NavigationCubit>().setProfile();
                  },
                  child: SizedBox(
                    height: 35,
                    child: ColoredBox(
                      color: myshopColors.opaque,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          (state is NavigationProfile)
                              ? Image.asset(
                                  'assets/icons_png/profile_filled_icon.png')
                              : SvgPicture.asset(
                                  'assets/icons_svg/profile_icon.svg'),
                          Text(
                            myshopStrings.profile,
                            style: (state is NavigationProfile)
                                ? myshopTextStyles.dark10Bold700
                                : myshopTextStyles.gray10Bold700,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
