import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_myshop_app/application/navigation/navigation_cubit.dart';
import 'package:flutter_myshop_app/presentation/styles/colors.dart';

import '../catalogue_page/catalogue_page.dart';
import '../favorite_page/favorite_page.dart';
import '../home_page/home_page.dart';
import '../profile_page/profile_page.dart';
import 'widgets/animated_cart_container.dart';
import 'widgets/custom_bottom_navigation_bar.dart';

enum Pages { Home, Catalogue, Favorite, Profile }

class NavigationPage extends StatelessWidget {
  final List<Widget> pages = <Widget>[
    HomePage(),
    CataloguePage(),
    FavoritePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final double _height = _mediaQuery.size.height;
    return Scaffold(
      backgroundColor: myshopColors.background,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned.fill(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: BlocBuilder<NavigationCubit, NavigationState>(
                    builder: (BuildContext context, NavigationState state) {
                      if (state is NavigationHome) {
                        return pages[Pages.Home.index];
                      } else if (state is NavigationCatalogue) {
                        return pages[Pages.Catalogue.index];
                      } else if (state is NavigationFavorite) {
                        return pages[Pages.Favorite.index];
                      } else if (state is NavigationProfile) {
                        return pages[Pages.Profile.index];
                      } else {
                        return const Text('Navigation state error');
                      }
                    },
                  ),
                ),
                const CustomBottomNavigationBar(),
              ],
            ),
          ),
          Positioned.fill(
            bottom: _mediaQuery.padding.bottom + _height * 0.015,
            child: Align(
              alignment: Alignment.bottomRight,
              child: AnimatedCartContainer(),
            ),
          ),
        ],
      ),
    );
  }
}
