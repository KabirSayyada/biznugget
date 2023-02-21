import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/common/widgets/custom_button_widget.dart';
import 'package:biznugget/core/common/widgets/small_text.dart';
import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/core/common/widgets/custom_image_widget.dart';
import 'package:flutter/material.dart';

class NoInternetConnectionPage extends StatelessWidget {
  const NoInternetConnectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(AppImages.networkAlertIcon);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageWidget(
          assetImagePath: AppImages.networkAlertIcon,
          imgHeight: Dimensions.height105,
          imgWidth: Dimensions.width120,
          padding: EdgeInsets.only(right: Dimensions.height15),
          margin: EdgeInsets.only(bottom: Dimensions.height5),
        ),
        BigText(
            text: 'Ooops!',
            size: Dimensions.font18,
            fontWeight: FontWeight.w600),
        SizedBox(height: Dimensions.height5),
        SmallText(
          text: 'No internet connection found.\nCheck your connection!',
          textAlign: TextAlign.center,
          color: AppColors.hintColor,
        ),
        SizedBox(height: Dimensions.height20),
        CustomButtonWidget(
          text: 'Try Again',
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
    );
  }

  _onTap(BuildContext context) {
    /// todo: implement the logic to check the internet connection
  }
}
