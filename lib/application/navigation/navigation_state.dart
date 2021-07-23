part of 'navigation_cubit.dart';

@immutable
abstract class NavigationState {}

class NavigationHome extends NavigationState {
  NavigationHome();
}

class NavigationCatalogue extends NavigationState {
  NavigationCatalogue();
}

class NavigationFavorite extends NavigationState {
  NavigationFavorite();
}

class NavigationProfile extends NavigationState {
  NavigationProfile();
}