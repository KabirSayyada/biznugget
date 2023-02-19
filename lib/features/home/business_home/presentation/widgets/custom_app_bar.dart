import 'package:biznugget/features/home/business_home/presentation/cubits/business_home_cubit/business_home_cubit.dart';
import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class SBCustomAppBar extends StatelessWidget {
  const SBCustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            BlocProvider.of<BusinessHomeCubit>(context)
                .openDrawer();
          },
          child: Container(
            height: Dimensions.height47,
            width: Dimensions.width47,
            decoration: _menuIconContainerDecoration(),
            // change icon according to the drawer state
            child: _drawerIcon(context),
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
  Image _drawerIcon(BuildContext context) {
    return BlocProvider.of<BusinessHomeCubit>(context)
            .drawerKey
            .currentState!
            .isDrawerOpen
        ? Image.asset(AppImages.closeIcon)
        : Image.asset(AppImages.menuIcon);
  }
}
