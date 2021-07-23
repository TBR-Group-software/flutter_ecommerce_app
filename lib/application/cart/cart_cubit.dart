import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartSmall());

  void setFull() {
    emit(CartFull());
  }

  void setSmall() {
    emit(CartSmall());
  }
}
