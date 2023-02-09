import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/features/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import 'package:biznugget/features/wishlist/presentation/pages/wishlist_screen.dart';
import 'package:biznugget/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Constants.screenHeight = MediaQuery.of(context).size.height;
    Constants.screenWidth = MediaQuery.of(context).size.width;

    // BlocProvider.of<WishlistItemsCubit>(context).addToWishlist(
    //   item: ItemModel(
    //     name: 'asds1111',
    //     price: 100,
    //     imageUrl: AppImages.item4,
    //     description: 'Item 1 description',
    //     sale: 10,
    //     id: 1,
    //     rate: 4.5,
    //     reviews: 100,
    //   ),
    // );

    return WishlistScreen();
  }
}
