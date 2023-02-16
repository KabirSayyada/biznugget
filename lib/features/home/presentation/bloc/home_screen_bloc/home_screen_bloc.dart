import 'dart:async';

import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'home_screen_event.dart';

part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  /// temporary data
  List<ItemModel> items = [
    // some random items
    ItemModel(
      id: 1,
      name: 'BalenciagaSpeed',
      description: 'Item 1 Description',
      price: 100,
      imageUrl: AppImages.item1,
      categories: ['services'],
      subCategories: ['web development', 'mobile development'],

    ),
    ItemModel(
      id: 2,
      name: 'Jordan ZoomFreak 3',
      description: 'Item 2 Description',
      price: 90,
      imageUrl: AppImages.item2,
      categories: ['services'],
      subCategories: ['web development', 'mobile development'],

    ),
    ItemModel(
      id: 3,
      name: 'Colored AdidasSprint',
      description: 'Item 3 Description',
      price: 80,
      imageUrl: AppImages.item3,
      categories: ['services'],
      subCategories: ['web development', 'mobile development'],

    ),
    ItemModel(
      id: 1,
      name: 'Item 1',
      description: 'Item 1 Description',
      price: 100,
      imageUrl: AppImages.item1,
      categories: ['services'],
      subCategories: ['web development', 'mobile development'],

    ),
    ItemModel(
      id: 2,
      name: 'Item 2',
      description: 'Item 2 Description',
      price: 90,
      imageUrl: AppImages.item2,
      categories: ['services'],
      subCategories: ['web development', 'mobile development'],

    ),
    ItemModel(
      id: 3,
      name: 'Item 3',
      description: 'Item 3 Description',
      price: 80,
      imageUrl: AppImages.item3,
      categories: ['services'],
      subCategories: ['web development', 'mobile development'],

    ),
    ItemModel(
      id: 1,
      name: 'Item 1',
      description: 'Item 1 Description',
      price: 100,
      imageUrl: AppImages.item1,
      categories: ['services'],
      subCategories: ['web development', 'mobile development'],

    ),
    ItemModel(
      id: 2,
      name: 'Item 2',
      description: 'Item 2 Description',
      price: 90,
      imageUrl: AppImages.item2,
      categories: ['services'],
      subCategories: ['web development', 'mobile development'],

    ),
    ItemModel(
      id: 3,
      name: 'Item 3',
      description: 'Item 3 Description',
      price: 80,
      imageUrl: AppImages.item3,
      categories: ['services'],
      subCategories: ['web development', 'mobile development'],

    ),
    ItemModel(
      id: 1,
      name: 'Item 1',
      description: 'Item 1 Description',
      price: 100,
      imageUrl: AppImages.item1,
      categories: ['services'],
      subCategories: ['web development', 'mobile development'],

    ),
    ItemModel(
      id: 2,
      name: 'Item 2',
      description: 'Item 2 Description',
      price: 90,
      imageUrl: AppImages.item2,
      categories: ['services'],
      subCategories: ['web development', 'mobile development'],

    ),
    ItemModel(
      id: 3,
      name: 'Item 3',
      description: 'Item 3 Description',
      price: 80,
      imageUrl: AppImages.item3,
      categories: ['services'],
      subCategories: ['web development', 'mobile development'],

    ),
    ItemModel(
      id: 1,
      name: 'Item 1',
      description: 'Item 1 Description',
      price: 100,
      imageUrl: AppImages.item1,
      categories: ['services'],
      subCategories: ['web development', 'mobile development'],

    ),
    ItemModel(
      id: 2,
      name: 'Item 2',
      description: 'Item 2 Description',
      price: 90,
      imageUrl: AppImages.item2,
      categories: ['services'],
      subCategories: ['web development', 'mobile development'],

    ),
    ItemModel(
      id: 3,
      name: 'Item 3',
      description: 'Item 3 Description',
      price: 80,
      imageUrl: AppImages.item3,
      categories: ['services'],
      subCategories: ['web development', 'mobile development'],

    ),
  ];

  HomeScreenBloc() : super(HomeItemsScreenInitial()) {
    on<HomeScreenEvent>((event, emit) async {
      /// Fetch All Items
      if (event is FetchAllItems) {
        emit(FetchAllItemsLoading());
        try {
          /// todo : Fetch All Items from firebase
          await Future.delayed(const Duration(seconds: 2), () {
            emit(FetchAllItemsSuccess());
          });
          emit(FetchAllItemsSuccess());
        } catch (e) {
          emit(FetchAllItemsFailure(message: e.toString()));
        }

        /// Fetch Popular Items
      } else if (event is FetchPopularItems) {
        emit(FetchPopularItemsLoading());
        try {
          /// todo : Fetch Popular Items from firebase
          Future.delayed(const Duration(seconds: 2), () {
            emit(FetchPopularItemsSuccess());
          });
          emit(FetchPopularItemsSuccess());
        } catch (e) {
          emit(FetchAllItemsFailure(message: e.toString()));
        }

        /// Fetch Categories
      } else if (event is FetchCategories) {
        emit(FetchCategoriesLoading());
        try {
          /// todo : Fetch Categories from firebase
          Future.delayed(const Duration(seconds: 2), () {
            emit(FetchCategoriesSuccess());
          });
          emit(FetchCategoriesSuccess());
        } catch (e) {
          emit(FetchCategoriesFailure(message: e.toString()));
        }
      }
    });
  }
}
