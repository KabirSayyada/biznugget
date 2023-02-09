part of 'wishlist_items_cubit.dart';

@immutable
abstract class WishlistItemsState {}

class WishlistItemsInitial extends WishlistItemsState {}

class WishlistItemsLoading extends WishlistItemsInitial {}

class WishlistItemsSuccess extends WishlistItemsInitial {}

class WishlistItemsFailure extends WishlistItemsInitial {
  final String message;

  WishlistItemsFailure({required this.message});
}
