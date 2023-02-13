import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/common/widgets/custom_button_widget.dart';
import 'package:biznugget/core/common/widgets/small_text.dart';
import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/wishlist/presentation/widgets/custom_image_widget.dart';
import 'package:flutter/material.dart';

class HomeCardForPopularItemsWidget extends StatelessWidget {
  const HomeCardForPopularItemsWidget({Key? key, required this.item})
      : super(key: key);


  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.width25,
        vertical: Dimensions.height10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius10),
        gradient: _radialGradient(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          /// Details
          Expanded(child: PopularItemsDetails(item: item)),

          /// image
          CustomImageWidget(
            assetImagePath: AppImages.item3,
            // BlocProvider.of<HomeScreenBloc>(context).items[itemIndex].imageUrl,
            imgHeight: Dimensions.height167,
            // imgWidth: Dimensions.width150,
          ),
        ],
      ),
    );
  }

  /// this is the card gradient
  RadialGradient _radialGradient() {
    return const RadialGradient(
      colors: [
        AppColors.primaryColor1,
        AppColors.primaryColor2,
      ],
      radius: 1,
    );
  }
}

class PopularItemsDetails extends StatelessWidget {
  const PopularItemsDetails({
    super.key,
    required this.item,
  });

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SmallText(
          text: 'Popular now',
          color: Colors.white,
          size: Dimensions.font12,
        ),
        SizedBox(height: Dimensions.height10),
        BigText(
          text:item.name,
          color: Colors.white,
          size: Dimensions.font20,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: Dimensions.height22),
        CustomButtonWidget(
          border: Border.all(color: Colors.white),
          text: 'Bye Now',
          width: Dimensions.width125,
          onTap: () {
            /// TODO : go to details page
          },
        ),
      ],
    );
  }
}
