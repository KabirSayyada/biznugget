import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/features/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import 'package:biznugget/features/wishlist/presentation/widgets/custom_image_widget.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/wishlist/presentation/widgets/price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    Key? key,
    required this.item,
    required this.index,
  }) : super(key: key);

  final ItemModel item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Dimensions.height200,
        width: double.infinity,
        padding: _padding(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.height10),
        ),
        child: Row(
          children: [
            // product image
            _productImage(),
            SizedBox(width: Dimensions.width10),
            // product name, description, price and delete button
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _logoImageAndTrashIcon(context),
                  // name and description
                  _itemNameAndDescription(),
                  SizedBox(height: Dimensions.height10),
                  //rate and reviews
                  _rateAndReviews(),
                  SizedBox(height: Dimensions.height5),
                  // price and sale
                  PriceWidget(price: item.price, sale: item.sale),
                ],
              ),
            ),
          ],
        ));
  }

  /// padding for the card
  EdgeInsets _padding() {
    return EdgeInsets.only(
      top: Dimensions.height5,
      bottom: Dimensions.height5,
      right: Dimensions.height15,
      left: Dimensions.height15,
    );
  }

  /// product image
  CustomImageWidget _productImage() {
    return CustomImageWidget(
      assetImagePath: item.imageUrl,
      imgHeight: Dimensions.height150,
      imgWidth: Dimensions.width150,
      surroundingBGColor:
          index.isEven ? AppColors.primaryColor1 : AppColors.primaryColor2,
      surroundingHeight: Dimensions.height160,
      surroundingWidth: Dimensions.width160,
      surroundingRadius: Dimensions.height25,
    );
  }

  /// logo image and trash icon
  Row _logoImageAndTrashIcon(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // logo
        CustomImageWidget(
          assetImagePath: AppImages.logo,
          imgHeight: Dimensions.height35,
          imgWidth: Dimensions.width35,
        ),
        // delete button
        CustomImageWidget(
          assetImagePath: AppImages.trashIcon,
          imgHeight: Dimensions.height22,
          imgWidth: Dimensions.width22,
          onTap: () {
            BlocProvider.of<WishlistItemsCubit>(context)
                .removeFromWishlist(index: index);
          },
        ),
      ],
    );
  }

  /// item name and description
  Column _itemNameAndDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: item.name,
          size: Dimensions.font18,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: Dimensions.height5),
        BigText(
          text: item.description,
          size: Dimensions.font16,
          color: Colors.grey,
        ),
      ],
    );
  }

  /// rate and reviews
  _rateAndReviews() {
    return Row(
      children: [
        // rate
        Icon(Icons.star, color: Colors.yellow, size: Dimensions.height20),
        SizedBox(width: Dimensions.width5),
        BigText(
          text: item.rate.toString(),
          size: Dimensions.font16,
          color: Colors.black,
        ),
        SizedBox(width: Dimensions.width15),
        // reviews
        BigText(
          text: item.reviews.toString(),
          size: Dimensions.font16,
          color: Colors.grey,
        ),
      ],
    );
  }
}
