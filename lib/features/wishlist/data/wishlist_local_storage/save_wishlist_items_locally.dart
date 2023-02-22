import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/core/utils/strings.dart';
import 'package:hive/hive.dart';

class SaveWishlistItems {
  static Future<void> saveWishlistItemLocally(ItemModel item) async {
    var box =
        await Hive.openBox<ItemModel>(AppStrings.kWishlistBoxInLocalStorage);
    box.add(item);
  }
}
