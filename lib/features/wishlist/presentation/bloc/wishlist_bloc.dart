import 'dart:async';

import 'package:biznugget/common/models/item_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'wishlist_event.dart';

part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  List<ItemModel> items = [
    ItemModel(
        name: "item1", price: 12.99, description: "This is item1 description", imageUrl: "assets/images/item1.png"),
    ItemModel(
        name: "item2", price: 29.99, description: "This is item2 description", imageUrl: "assets/images/item2.png", sale: 10),
    ItemModel(
        name: "item3", price: 49.99, description: "This is item3 description", imageUrl: "assets/images/item3.png"),

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
