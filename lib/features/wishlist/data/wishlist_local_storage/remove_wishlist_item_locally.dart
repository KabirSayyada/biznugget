import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/core/utils/strings.dart';
import 'package:hive/hive.dart';

class RemoveWishlistItemLocally {
  /// Remove Wishlist Item Locally
  static Future<void> removeWishlistItemLocally(int index) async {
    var box =
        await Hive.openBox<ItemModel>(AppStrings.kWishlistBoxInLocalStorage);
    box.deleteAt(index);
  }
}
