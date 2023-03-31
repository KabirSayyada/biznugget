import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';

class BHDrawer extends StatelessWidget {
  const BHDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions.width / 1.15,
      height: Dimensions.height / 1.15,
      child: Drawer(
        backgroundColor: Colors.white.withOpacity(0),
        child: Container(
          decoration: BoxDecoration(
            // gradient: AppColors.primaryGradient(),
            // color: AppColors.primaryColor1,
            borderRadius: BorderRadius.circular(Dimensions.radius10),
          ),
          child: ListView(
            // padding: EdgeInsets.zero,
            children: [
              SizedBox(height: Dimensions.height20),
              // logo
              Container(
                width: Dimensions.width128,
                height: Dimensions.height128,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.asset(
                  // todo : fetch logo from user
                  AppImages.logo,
                ),
              ),
              SizedBox(height: Dimensions.height30),
              ListTile(
                onTap: () {
                  /// todo : go to 'sell Buy' screen
                },
                leading:
                    const Icon(Icons.menu_open_rounded, color: Colors.white),
                title: const BigText(text: 'Main Menu', color: Colors.white),
              ),
              ListTile(
                onTap: () {
                  /// todo : goto home screen
                },
                leading: Icon(Icons.home, color: Colors.white),
                title: const BigText(text: 'Home', color: Colors.white),
              ),
              ListTile(
                onTap: () {
                  /// todo : goto profile screen
                },
                leading: const Icon(Icons.account_circle_rounded,
                    color: Colors.white),
                title: const BigText(text: 'Profile', color: Colors.white),
              ),
              ListTile(
                onTap: () {
                  /// todo : goto favorites screen
                },
                leading: const Icon(Icons.favorite, color: Colors.white),
                title: const BigText(text: 'FAVORITES', color: Colors.white),
              ),
              ListTile(
                onTap: () {
                  /// todo : goto settings screen
                },
                leading: const Icon(Icons.settings, color: Colors.white),
                title: const BigText(text: 'SETTINGS', color: Colors.white),
              ),
              ListTile(
                onTap: () {
                  /// todo : goto help screen
                },
                leading: const Icon(Icons.logout, color: Colors.white),
                title: const BigText(text: 'SIGN OUT', color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
