import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class SBCustomAppBar extends StatelessWidget {
  const SBCustomAppBar({Key? key, required this.advancedDrawerController})
      : super(key: key);

  final AdvancedDrawerController advancedDrawerController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => advancedDrawerController.showDrawer(),
          child: Container(
            height: Dimensions.height47,
            width: Dimensions.width47,
            decoration: _menuIconContainerDecoration(),
            // change icon according to the drawer state
            child: _showDrawer(),
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

  // change icon according to the drawer state
  ValueListenableBuilder<AdvancedDrawerValue> _showDrawer() {
    return ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: const Duration(microseconds: 250),
                  child: Image.asset(
                    value.visible ? AppImages.closeIcon : AppImages.menuIcon,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            );
  }
}
