import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/common/widgets/custom_image_widget.dart';
import 'package:biznugget/core/common/widgets/small_text.dart';
import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/details/presentation/widgets/images_slider.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// background
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              gradient: AppColors.primaryGradient(),
            ),
          ),

          /// images slider
          Container(
            width: double.maxFinite,
            height: Dimensions.height / 2,
            padding: EdgeInsets.only(top: Dimensions.height50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ImagesSlider(),
              ],
            ),
          ),

          /// Item details
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.height / 2.1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius45),
                  topRight: Radius.circular(Dimensions.radius45),
                ),
              ),
              child: const ItemDetails(),
            ),
          ),
        ],
      ),
    );
  }
}

/// item details
class ItemDetails extends StatelessWidget {
  const ItemDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: Dimensions.height60,
        left: Dimensions.width30,
        right: Dimensions.width30,
      ),
      child: Column(
        children: [
          // title and icon
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BigText(
                  text: 'Jordan Retro High',
                  size: Dimensions.font18,
                  fontWeight: FontWeight.w800),
              CustomImageWidget(
                  assetImagePath: AppImages.shopIcon,
                  imgWidth: Dimensions.iconSize20,
                  imgHeight: Dimensions.iconSize22),
            ],
          ),
          SizedBox(height: Dimensions.height35),
          // description
          SmallText(
            size: Dimensions.font14,
            color: AppColors.hintColor,
            text:
                "A classic gentle man shoe that fits into any drip.\n\nYou can style with anything, all day and everyday, be it winter or even summer period.\n\nThe Nike fit give you confidence 24/7 and admiration from people people you walk past.\n\n",
          ),
          SizedBox(height: Dimensions.height20),
          // price and 'Add to cart' button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // price
              BigText(
                text: '\$ 200',
                size: Dimensions.font18,
                fontWeight: FontWeight.w800,
              ),
              // 'Add to cart' button
              Container(
                height: Dimensions.height45,
                width: Dimensions.width125,
                padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
                decoration: BoxDecoration(
                  gradient: AppColors.primaryGradient(),
                  borderRadius: BorderRadius.circular(Dimensions.radius5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigText(
                      text: 'Add to cart',
                      size: Dimensions.font16,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                    const Icon(Icons.add_shopping_cart_sharp,
                        color: Colors.white)
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
