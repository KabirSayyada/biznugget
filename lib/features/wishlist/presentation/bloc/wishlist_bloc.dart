import 'dart:async';

import 'package:biznugget/features/wishlist/data/models/item_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'wishlist_event.dart';

part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  List<ItemModel> items = [
    ItemModel(
        name: "item1", price: 12.99, description: "This is item1 description"),
    ItemModel(
        name: "item2", price: 29.99, description: "This is item2 description"),
    ItemModel(
        name: "item3", price: 49.99, description: "This is item3 description"),
  ];

  WishlistBloc() : super(WishlistInitial()) {
    on<WishlistEvent>((event, emit) {
      if (event is WishlistAdd) {
        emit(WishlistLoading());
        try {
          items.add(event.item);

          /// todo : add to local storage

          emit(WishlistSuccess());
        } catch (e) {
          emit(WishlistFailure(
            message: e.toString(),
          ));
        }
      }

      if (event is WishlistRemove) {
        emit(WishlistLoading());
        try {
          items.removeAt(event.index);

          /// todo : remove from local storage

          emit(WishlistSuccess());
        } catch (e) {
          emit(WishlistFailure(
            message: e.toString(),
          ));
        }
      }
    });
  }
}
