import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/core/utils/strings.dart';
import 'package:biznugget/features/wishlist/data/wishlist_local_storage/remove_wishlist_item_locally.dart';
import 'package:biznugget/features/wishlist/data/wishlist_local_storage/save_wishlist_items_locally.dart';
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'wishlist_items_state.dart';

class WishlistItemsCubit extends Cubit<WishlistItemsState> {
  WishlistItemsCubit() : super(WishlistItemsInitial());

  List<ItemModel> items = [];

  /// Fetch all wishlist items from local storage
  fetchAllWishlistItems() async {
    emit(WishlistItemsLoading());
    try {
      /// Fetch all wishlist items from local storage
      Hive.openBox<ItemModel>(AppStrings.kWishlistBoxInLocalStorage)
          .then((value) {
        items = value.values.toList();
        print(value.values.toList().length);
        print(items.length);
      });
      emit(WishlistItemsSuccess());
    } catch (e) {
      emit(WishlistItemsFailure(
        message: e.toString(),
      ));
    }
  }

  /// Add Item to Wishlist
  Future<void> addToWishlist(ItemModel item) async {
    emit(WishlistItemsLoading());
    try {
      items.add(item);

      /// add item to local storage
      await SaveWishlistItems.saveWishlistItemLocally(item);

      emit(WishlistItemsSuccess());
    } catch (e) {
      emit(WishlistItemsFailure(
        message: e.toString(),
      ));
    }
  }

  /// Remove Item from Wishlist
  removeFromWishlist({required int index}) async {
    emit(WishlistItemsLoading());
    try {
      items.removeAt(index);

      /// Update Local WishList
      await RemoveWishlistItemLocally.removeWishlistItemLocally(index);

      emit(WishlistItemsSuccess());
    } catch (e) {
      emit(WishlistItemsFailure(
        message: e.toString(),
      ));
    }
  }
}
