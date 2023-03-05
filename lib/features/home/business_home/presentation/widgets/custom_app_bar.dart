import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:flutter/material.dart';

class BHCustomAppBar extends StatelessWidget {
  const BHCustomAppBar({
    Key? key,
    required this.drawerKey,
  }) : super(key: key) ;

  final GlobalKey<ScaffoldState> drawerKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            drawerKey.currentState!.openDrawer();
          },
          child: Container(
            height: Dimensions.height47,
            width: Dimensions.width47,
            decoration: _menuIconContainerDecoration(),
            // change icon according to the drawer state
            child: Image.asset(AppImages.menuIcon),
          ),
        ),
        // title
        BigText(
            text: 'Welcome Biznugget!',
            size: Dimensions.font18,
            fontWeight: FontWeight.w800),
        // profile image
        GestureDetector(
          onTap: () {
            /// todo : go to profile screen
          },
          child: CircleAvatar(
            backgroundImage: const AssetImage(AppImages.logo),
            radius: Dimensions.radius22,
          ),
        ),
      ],
    );
  }

  // menu icon container decoration
  BoxDecoration _menuIconContainerDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(Dimensions.radius10),
      boxShadow: [
        BoxShadow(
          color: AppColors.secondaryColor.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 2,
          offset: const Offset(1, 1), // changes position of shadow
        ),
      ],
    );
  }
}
