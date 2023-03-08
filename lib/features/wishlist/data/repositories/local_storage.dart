import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/core/utils/strings.dart';
import 'package:hive/hive.dart';

abstract class WishlistRepository {
  Future<void> addProductToWishlist(ItemModel item);

  Future<void> removeProductFromWishlist(int index);

  Future<List<ItemModel>> getWishlistProducts();

  bool isProductInWishlist(
      {required List<ItemModel> items, required int itemID});

  List<ItemModel> filterWishlistProducts(
      {required List<ItemModel> items, required String searchQuery});
}

/// local storage
class WishlistRepositoryImpl extends WishlistRepository {
  /// add item
  @override
  Future<void> addProductToWishlist(ItemModel item) async {
    var box =
        await Hive.openBox<ItemModel>(AppStrings.kWishlistBoxInLocalStorage);
    box.add(item);
  }

  /// get all items
  @override
  Future<List<ItemModel>> getWishlistProducts() async {
    var data =
        await Hive.openBox<ItemModel>(AppStrings.kWishlistBoxInLocalStorage);
    List<ItemModel> items = data.values.toList();
    return items;
  }

  /// check if item is in the wish list
  @override
  bool isProductInWishlist(
      {required List<ItemModel> items, required int itemID}) {
    return items.map((item) => item.id).contains(itemID);
  }

  /// remove an item from the wish list
  @override
  Future<void> removeProductFromWishlist(int index) async {
    var box =
        await Hive.openBox<ItemModel>(AppStrings.kWishlistBoxInLocalStorage);
    box.deleteAt(index);
  }

  /// filter items
  @override
  List<ItemModel> filterWishlistProducts(
      {required List<ItemModel> items, required String searchQuery}) {
    return items
        .where((element) =>
            element.name.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();
  }
}
