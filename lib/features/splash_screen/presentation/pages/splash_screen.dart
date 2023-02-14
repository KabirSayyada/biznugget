import 'package:biznugget/features/home/business_acc_home/presentation/cubits/advertise_cubit/advertise_cubit.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/pages/_1_buy_or_sell_screen.dart';
import 'package:biznugget/core/utils/app_constants.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/pages/_2_advertise_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_select_flutter/dialog/mult_select_dialog.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    AppConstants.screenHeight = MediaQuery.of(context).size.height;
    AppConstants.screenWidth = MediaQuery.of(context).size.width;




    return AdvertiseScreen();
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
