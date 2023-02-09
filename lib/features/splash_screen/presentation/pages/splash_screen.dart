import 'package:biznugget/features/wishlist/presentation/pages/wishlist_screen.dart';
import 'package:biznugget/core/utils/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Constants.screenHeight = MediaQuery.of(context).size.height;
    Constants.screenWidth = MediaQuery.of(context).size.width;
    return WishlistScreen();
  }
}
