part of 'wishlist_items_cubit.dart';

@immutable
abstract class WishlistItemsState {}

class WishlistItemsInitial extends WishlistItemsState {}

class WishlistItemsLoading extends WishlistItemsState {}

class WishlistItemsSuccess extends WishlistItemsState {}

class WishlistItemsFailure extends WishlistItemsState {
  final String message;

  WishlistItemsFailure({required this.message});
}
