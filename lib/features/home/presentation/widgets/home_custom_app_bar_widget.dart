import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: _onTap,
            child: Container(
              height: Dimensions.height47,
              width: Dimensions.width47,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.radius10),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.secondaryColor.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Image.asset(AppImages.menuIcon),
            ),
          ),
          BigText(
              text: 'Welcome Biznugget!',
              size: Dimensions.font18,
              fontWeight: FontWeight.w800),
          GestureDetector(
            onTap: () {
              /// todo : go to profile screen
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(AppImages.logo),
              radius: Dimensions.radius22,
            ),
          ),
        ],
      ),
    );
  }

  void _onTap() {
    /// TODO: implement drawer
    print('menu icon tapped');
  }
}
