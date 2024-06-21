import 'package:catlogapp/model/catlog.dart';
import 'package:catlogapp/widgets/home_widgets/catalog_list.dart';

class CartModel {
//catalogue field
  CatalogueItem? _catalogue;

//collection of IDs - store IDs of each item
  final List<int> _itemIds = [];

  // Get Catalogue
  CatalogueItem get catalogue => _catalogue!;

  set catalogue(CatalogueItem newCatalogue) {
    _catalogue = newCatalogue;
  }

  //Get items in the cart
  List get items => _itemIds.map((id) => _catalogue!.getById(id)).toList();

  //Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //Add Item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //Remove Item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
