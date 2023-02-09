import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/common/widgets/custom_icon_button_widget.dart';
import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/features/wishlist/presentation/widgets/custom_image_widget.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/wishlist/presentation/widgets/price_widget.dart';
import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    Key? key,
    required this.item,
    required this.onTap,
  }) : super(key: key);

  final ItemModel item;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Dimensions.height150,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: Dimensions.height10,
          right: Dimensions.height10,
          left: Dimensions.height10,
          bottom: Dimensions.height10,
        ),
        padding: EdgeInsets.only(
          top: Dimensions.height10,
          right: Dimensions.height15,
          left: Dimensions.height15,
          bottom: Dimensions.height10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimensions.height10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            // product image
            CustomImageWidget(imageUrl: item.imageUrl),
            SizedBox(width: Dimensions.width10),
            // product name, description, price and delete button
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // name and description
                  _itemNameAndDescription(),
                  // price and button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // price and sale
                      PriceWidget(price: item.price, sale: item.sale),
                      // delete button
                      CustomIconButtonWidget(
                        icon: Icons.delete_forever_sharp,
                        onTap: onTap,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
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

}
