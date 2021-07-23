// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/cart_page/cart_page.dart' as _i4;
import '../pages/catalogue_page/catalogue_page.dart' as _i5;
import '../pages/enter_phone_page/enter_phone_page.dart' as _i6;
import '../pages/favorite_page/favorite_page.dart' as _i7;
import '../pages/filter_page/filter_page.dart' as _i8;
import '../pages/get_started_page/get_started_page.dart' as _i9;
import '../pages/home_page/home_page.dart' as _i10;
import '../pages/items_page/items_page.dart' as _i11;
import '../pages/navigation_page/navigation_page.dart' as _i12;
import '../pages/product_page/product_page.dart' as _i13;
import '../pages/profile_page/profile_page.dart' as _i14;
import '../pages/splash_page/splash_page.dart' as _i3;
import '../pages/verification_page/verification_page.dart' as _i15;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.MaterialPageX<_i3.SplashPage>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        }),
    CartPageRoute.name: (routeData) => _i1.MaterialPageX<_i4.CartPage>(
        routeData: routeData,
        builder: (_) {
          return _i4.CartPage();
        }),
    CataloguePageRoute.name: (routeData) =>
        _i1.MaterialPageX<_i5.CataloguePage>(
            routeData: routeData,
            builder: (_) {
              return _i5.CataloguePage();
            }),
    EnterPhonePageRoute.name: (routeData) =>
        _i1.MaterialPageX<_i6.EnterPhonePage>(
            routeData: routeData,
            builder: (_) {
              return _i6.EnterPhonePage();
            }),
    FavoritePageRoute.name: (routeData) => _i1.MaterialPageX<_i7.FavoritePage>(
        routeData: routeData,
        builder: (_) {
          return _i7.FavoritePage();
        }),
    FilterPageRoute.name: (routeData) => _i1.MaterialPageX<_i8.FilterPage>(
        routeData: routeData,
        builder: (_) {
          return _i8.FilterPage();
        }),
    GetStartedPageRoute.name: (routeData) =>
        _i1.MaterialPageX<_i9.GetStartedPage>(
            routeData: routeData,
            builder: (_) {
              return _i9.GetStartedPage();
            }),
    HomePageRoute.name: (routeData) => _i1.MaterialPageX<_i10.HomePage>(
        routeData: routeData,
        builder: (_) {
          return _i10.HomePage();
        }),
    ItemsPageRoute.name: (routeData) => _i1.MaterialPageX<_i11.ItemsPage>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ItemsPageRouteArgs>();
          return _i11.ItemsPage(itemName: args.itemName);
        }),
    NavigationPageRoute.name: (routeData) =>
        _i1.MaterialPageX<_i12.NavigationPage>(
            routeData: routeData,
            builder: (_) {
              return _i12.NavigationPage();
            }),
    ProductPageRoute.name: (routeData) => _i1.MaterialPageX<_i13.ProductPage>(
        routeData: routeData,
        builder: (_) {
          return _i13.ProductPage();
        }),
    ProfilePageRoute.name: (routeData) => _i1.MaterialPageX<_i14.ProfilePage>(
        routeData: routeData,
        builder: (_) {
          return _i14.ProfilePage();
        }),
    VerificationPageRoute.name: (routeData) =>
        _i1.MaterialPageX<_i15.VerificationPage>(
            routeData: routeData,
            builder: (_) {
              return _i15.VerificationPage();
            })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(CartPageRoute.name, path: '/cart-page'),
        _i1.RouteConfig(CataloguePageRoute.name, path: '/catalogue-page'),
        _i1.RouteConfig(EnterPhonePageRoute.name, path: '/enter-phone-page'),
        _i1.RouteConfig(FavoritePageRoute.name, path: '/favorite-page'),
        _i1.RouteConfig(FilterPageRoute.name, path: '/filter-page'),
        _i1.RouteConfig(GetStartedPageRoute.name, path: '/get-started-page'),
        _i1.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i1.RouteConfig(ItemsPageRoute.name, path: '/items-page'),
        _i1.RouteConfig(NavigationPageRoute.name, path: '/navigation-page'),
        _i1.RouteConfig(ProductPageRoute.name, path: '/product-page'),
        _i1.RouteConfig(ProfilePageRoute.name, path: '/profile-page'),
        _i1.RouteConfig(VerificationPageRoute.name, path: '/verification-page')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class CartPageRoute extends _i1.PageRouteInfo {
  const CartPageRoute() : super(name, path: '/cart-page');

  static const String name = 'CartPageRoute';
}

class CataloguePageRoute extends _i1.PageRouteInfo {
  const CataloguePageRoute() : super(name, path: '/catalogue-page');

  static const String name = 'CataloguePageRoute';
}

class EnterPhonePageRoute extends _i1.PageRouteInfo {
  const EnterPhonePageRoute() : super(name, path: '/enter-phone-page');

  static const String name = 'EnterPhonePageRoute';
}

class FavoritePageRoute extends _i1.PageRouteInfo {
  const FavoritePageRoute() : super(name, path: '/favorite-page');

  static const String name = 'FavoritePageRoute';
}

class FilterPageRoute extends _i1.PageRouteInfo {
  const FilterPageRoute() : super(name, path: '/filter-page');

  static const String name = 'FilterPageRoute';
}

class GetStartedPageRoute extends _i1.PageRouteInfo {
  const GetStartedPageRoute() : super(name, path: '/get-started-page');

  static const String name = 'GetStartedPageRoute';
}

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute() : super(name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

class ItemsPageRoute extends _i1.PageRouteInfo<ItemsPageRouteArgs> {
  ItemsPageRoute({required String? itemName})
      : super(name,
            path: '/items-page', args: ItemsPageRouteArgs(itemName: itemName));

  static const String name = 'ItemsPageRoute';
}

class ItemsPageRouteArgs {
  const ItemsPageRouteArgs({required this.itemName});

  final String? itemName;
}

class NavigationPageRoute extends _i1.PageRouteInfo {
  const NavigationPageRoute() : super(name, path: '/navigation-page');

  static const String name = 'NavigationPageRoute';
}

class ProductPageRoute extends _i1.PageRouteInfo {
  const ProductPageRoute() : super(name, path: '/product-page');

  static const String name = 'ProductPageRoute';
}

class ProfilePageRoute extends _i1.PageRouteInfo {
  const ProfilePageRoute() : super(name, path: '/profile-page');

  static const String name = 'ProfilePageRoute';
}

class VerificationPageRoute extends _i1.PageRouteInfo {
  const VerificationPageRoute() : super(name, path: '/verification-page');

  static const String name = 'VerificationPageRoute';
}
