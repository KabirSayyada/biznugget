part of 'wishlist_bloc.dart';

@immutable
abstract class WishlistEvent {}

class WishlistAdd extends WishlistEvent {
  final ItemModel item;

  WishlistAdd(this.item);
}

class WishlistRemove extends WishlistEvent {
  final int index;

  WishlistRemove({required this.index});
}