import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class ImagesSlider extends StatelessWidget {
  const ImagesSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      AppImages.item1,
      AppImages.item2,
      AppImages.item3,
    ];
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          height: Dimensions.height300,
          child: Swiper(
            itemCount: imageList.length,
            viewportFraction: 1,
            scale: 0.3,
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                imageList[index],
                fit: BoxFit.fitHeight,
              );
            },
            outer: true,
            pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                space: Dimensions.height3,
                color: AppColors.primaryColor2,
                activeColor: AppColors.cardBorderColor1,
                size: Dimensions.height15,
                activeSize: Dimensions.height20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
