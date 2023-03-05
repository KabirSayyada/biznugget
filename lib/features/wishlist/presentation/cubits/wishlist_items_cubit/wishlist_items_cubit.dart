import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/features/wishlist/data/repositories/local_storage.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'wishlist_items_state.dart';

class WishlistItemsCubit extends Cubit<WishlistItemsState> {
  final WishlistRepository wishlistRepository;

  WishlistItemsCubit(this.wishlistRepository) : super(WishlistItemsInitial());

  List<ItemModel> items = [];
  List<ItemModel> filterdItems = [];

  /// Fetch all wishlist items from local storage
  fetchAllWishlistItems() async {
    emit(WishlistItemsLoading());
    try {
      /// Fetch all wishlist items from local storage
      items = await wishlistRepository.getWishlistProducts();
      filterdItems = items;
      emit(WishlistItemsSuccess());
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
      await wishlistRepository.addProductToWishlist(item);
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
      await wishlistRepository.removeProductFromWishlist(index);
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
      filterdItems = wishlistRepository.filterWishlistProducts(
        items: items,
        searchQuery: searchQuery,
      );
      emit(WishlistItemsSuccess());
    } catch (e) {
      emit(WishlistItemsFailure(
        message: e.toString(),
      ));
    }
  }
}
