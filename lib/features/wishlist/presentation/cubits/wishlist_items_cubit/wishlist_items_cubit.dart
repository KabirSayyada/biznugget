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
  List<ItemModel> filterdItems = [];

  /// Fetch all wishlist items from local storage
  fetchAllWishlistItems() async {
    emit(WishlistItemsLoading());
    try {
      /// Fetch all wishlist items from local storage
      Hive.openBox<ItemModel>(AppStrings.kWishlistBoxInLocalStorage)
          .then((value) {
        items = value.values.toList();
        filterdItems = items;
        emit(WishlistItemsSuccess());
      });
      print(items);
    } catch (e) {
      emit(WishlistItemsFailure(
        message: e.toString(),
      ));
    }
  }

  /// Add Item to Wishlist
  Future<void> addToWishlist({required ItemModel item}) async {
    emit(WishlistItemsLoading());
    try {
      items.add(item);
      filterdItems = items;

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
      filterdItems = items;

      /// Update Local WishList
      await RemoveWishlistItemLocally.removeWishlistItemLocally(index);

      emit(WishlistItemsSuccess());
    } catch (e) {
      emit(WishlistItemsFailure(
        message: e.toString(),
      ));
    }
  }

  /// filter wishlist items according to search query
  filterWishlistItems({required String searchQuery}) {
    emit(WishlistItemsLoading());
    try {
      filterdItems = items
          .where((element) =>
              element.name.toLowerCase().contains(searchQuery.toLowerCase()))
          .toList();
      emit(WishlistItemsSuccess());
    } catch (e) {
      emit(WishlistItemsFailure(
        message: e.toString(),
      ));
    }
  }
}
