part of 'cart_cubit.dart';

@immutable
abstract class CartState {}

class CartSmall extends CartState {
  CartSmall();
}

class CartFull extends CartState {
  CartFull();
}
