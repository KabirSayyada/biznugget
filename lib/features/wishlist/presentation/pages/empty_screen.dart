import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/common/widgets/custom_button_widget.dart';
import 'package:biznugget/core/common/widgets/small_text.dart';
import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimensions.height,
      width: Dimensions.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: Dimensions.height167,
            width: Dimensions.width125,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.emptyImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: Dimensions.height22),
          BigText(
            text: 'Your Wishlist is Empty',
            size: Dimensions.font18,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: Dimensions.height10),
          SmallText(
            text: "Seems like you don’t have wishes here.\nMake a wish!",
            size: Dimensions.font14,
            color: Colors.black54,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: Dimensions.height20),
          CustomButtonWidget(
            text: 'Make a Wish',
            size: Dimensions.font16,
            onTap: () => _onTap(context),
            height: Dimensions.height40,
            width: Dimensions.width115,
            gradient: AppColors.customGradient(
              color1: AppColors.primaryColor1,
              color2: AppColors.gradientColor,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stop1: 0.25,
              stop2: 1.0,
            ),
          )
        ],
      ),
    );
  }

  _onTap(BuildContext context) {
    /// TODO: navigate to home screen
  }
}
