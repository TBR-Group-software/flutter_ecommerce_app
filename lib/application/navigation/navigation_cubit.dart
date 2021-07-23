import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationHome());

  void setHome() {
    emit(NavigationHome());
  }

  void setCatalogue() {
    emit(NavigationCatalogue());
  }

  void setFavorite() {
    emit(NavigationFavorite());
  }

  void setProfile() {
    emit(NavigationProfile());
  }
}
