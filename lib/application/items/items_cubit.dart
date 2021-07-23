import 'package:bloc/bloc.dart';
import 'package:flutter_myshop_app/presentation/common/product_tile.dart';
import 'package:meta/meta.dart';

part 'items_state.dart';

class ItemsCubit extends Cubit<ItemsState> {
  final List<ProductTile> _productTiles = <ProductTile>[
    const ProductTile(
      imagePath:
          'assets/images/featured/angashion_womens_sweaters_casual_long.png',
      price: '99',
      itemName: 'Angashion Women\'s Sweaters Casual Long',
    ),
    const ProductTile(
      imagePath:
          'assets/images/featured/ECOWISH_womens_color_block_striped_draped.png',
      price: '139',
      itemName: 'Astylish Women Open Front Long Sleeve',
    ),
    const ProductTile(
      imagePath:
          'assets/images/featured/astylish_women_open_front_long_sleeve.png',
      price: '179',
      discountPrice: '99',
      discountPercent: '45',
      itemName: 'Astylish Women Open Front Long Sleeve',
    ),
    const ProductTile(
      imagePath:
          'assets/images/featured/saodimallsu_womens_turtleneck_oversized.png',
      price: '89',
      itemName: 'Astylish Women Open Front Long Sleeve',
    ),
  ];
  List<ProductTile>? _favoriteTiles;

  List<ProductTile> productTiles() => _productTiles;
  List<ProductTile>? favoriteTiles() => _favoriteTiles;

  ItemsCubit() : super(ItemsInitial());

  void addFavoriteFromProductsByIndex(int index) {
    _favoriteTiles!.add(_productTiles[index]);
  }

  void removeFavoriteAtIndex(int index) {
    _favoriteTiles!.removeAt(_favoriteTiles!.indexOf(_productTiles[index]));
  }
}
