import 'package:auto_route/annotations.dart';

import '../pages/cart_page/cart_page.dart';
import '../pages/catalogue_page/catalogue_page.dart';
import '../pages/enter_phone_page/enter_phone_page.dart';
import '../pages/favorite_page/favorite_page.dart';
import '../pages/filter_page/filter_page.dart';
import '../pages/get_started_page/get_started_page.dart';
import '../pages/home_page/home_page.dart';
import '../pages/items_page/items_page.dart';
import '../pages/navigation_page/navigation_page.dart';
import '../pages/product_page/product_page.dart';
import '../pages/splash_page/splash_page.dart';
import '../pages/verification_page/verification_page.dart';
import '../pages/profile_page/profile_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute<dynamic>>[
    MaterialRoute<SplashPage>(page: SplashPage, initial: true),
    MaterialRoute<CartPage>(page: CartPage),
    MaterialRoute<CataloguePage>(page: CataloguePage),
    MaterialRoute<EnterPhonePage>(page: EnterPhonePage),
    MaterialRoute<FavoritePage>(page: FavoritePage),
    MaterialRoute<FilterPage>(page: FilterPage),
    MaterialRoute<GetStartedPage>(page: GetStartedPage),
    MaterialRoute<HomePage>(page: HomePage),
    MaterialRoute<ItemsPage>(page: ItemsPage),
    MaterialRoute<NavigationPage>(page: NavigationPage),
    MaterialRoute<ProductPage>(page: ProductPage),
    MaterialRoute<ProfilePage>(page: ProfilePage),
    MaterialRoute<VerificationPage>(page: VerificationPage),
  ],
)
class $AppRouter {}
