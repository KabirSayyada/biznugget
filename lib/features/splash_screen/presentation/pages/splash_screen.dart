import 'package:biznugget/config/routes/app_routes.dart';
import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/features/details/presentation/pages/details_screen.dart';
import 'package:biznugget/features/home/presentation/pages/home_screen.dart';
import 'package:biznugget/features/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import 'package:biznugget/features/wishlist/presentation/pages/wishlist_screen.dart';
import 'package:biznugget/core/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../messages/presentation/messages_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConstants.screenHeight = MediaQuery.of(context).size.height;
    AppConstants.screenWidth = MediaQuery.of(context).size.width;

    return MessagesScreen();

    /// temporary code :D
    /// temporary code :D
    /// temporary code :D
    /// temporary code :D
    /// temporary code :D

    //     Scaffold(
    //   body: Center(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Text('Splash Screen'),
    //         SizedBox(height: 20),
    //         ElevatedButton(
    //           onPressed: () {
    //             Navigator.of(context).pushNamed(Routes.wishlistScreenRoute);
    //           },
    //           child: const Text('Go to Wishlist'),
    //         ),
    //         ElevatedButton(
    //           onPressed: () {
    //             BlocProvider.of<WishlistItemsCubit>(context).addToWishlist(
    //               item: ItemModel(
    //                 name: 'hfg',
    //                 price: 100,
    //                 imageUrl: AppImages.item4,
    //                 description: 'Item 1 description',
    //                 sale: 10,
    //                 id: 1,
    //                 rate: 4.5,
    //                 reviews: 100,
    //               ),
    //             );
    //           },
    //           child: Text('add elemnt'),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
