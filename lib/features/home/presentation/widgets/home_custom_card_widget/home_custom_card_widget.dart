import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/common/widgets/custom_button_widget.dart';
import 'package:biznugget/core/common/widgets/custom_icon_button_widget.dart';
import 'package:biznugget/core/common/widgets/small_text.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/presentation/bloc/home_screen_bloc.dart';
import 'package:biznugget/features/home/presentation/widgets/home_custom_card_widget/home_custom_card_decoration.dart';
import 'package:biznugget/features/home/presentation/widgets/home_custom_icon_button_widget.dart';
import 'package:biznugget/features/wishlist/presentation/widgets/custom_image_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class HomeCustomCard extends StatelessWidget {
  const HomeCustomCard({Key? key, required this.item, required this.index})
      : super(key: key);

  final ItemModel item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      /// white parent to avoid shadow and background color overlapping
      decoration: _cardShadow(),
      child: Stack(
        children: [
          Container(
            decoration: HomeCustomCardDecoration()
                .decoration(index: index, context: context),
            child: CardBody(item: item),
          ),
          GoToDetailsButton(index: index),
        ],
      ),
    );
  }

  /// card shadow
  BoxDecoration _cardShadow() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(Dimensions.radius5),
      boxShadow:
          HomeCustomCardDecoration().cardColors(index: index, isShadow: true) !=
                  null
              ? [
                  BoxShadow(
                    // blurStyle: ,
                    color: HomeCustomCardDecoration()
                        .cardColors(index: index, isShadow: true)
                        .withOpacity(0.24),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ]
              : null,
    );
  }
}

class CardBody extends StatelessWidget {
  const CardBody({Key? key, required this.item}) : super(key: key);

  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _paddingOfItemDetailsColumn(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// sub category
          SmallText(text: item.name, color: AppColors.hintColor, size: 14),
          SizedBox(height: Dimensions.height7),
          /// Title
          BigText(
              text: item.name,
              size: Dimensions.font16,
              fontWeight: FontWeight.w600,
              maxLines: 2),

          /// image of item
          Center(
            child: CustomImageWidget(
              assetImagePath: item.imageUrl,
              imgHeight: Dimensions.height100,
              imgWidth: Dimensions.width100,
            ),
          ),

          /// item details
          _price(),
        ],
      ),
    );
  }

  /// padding of item details column
  EdgeInsets _paddingOfItemDetailsColumn() {
    return EdgeInsets.only(
      top: Dimensions.radius15,
      left: Dimensions.radius15,
      right: Dimensions.radius15,
      bottom: Dimensions.radius15,
    );
  }

  /// row of item price and sale
  _price() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (item.sale != null)
          BigText(
            text: "\$${item.sale}",
            size: Dimensions.font18,
            fontWeight: FontWeight.bold,
          ),
        BigText(
          text: '\$${item.price}',
          size: item.sale != null ? Dimensions.font16 : Dimensions.font18,
          color: item.sale != null ? Colors.grey : Colors.black,
          decoration: item.sale != null ? TextDecoration.lineThrough : null,
        ),
      ],
    );
  }
}

/// button to go to details page
class GoToDetailsButton extends StatelessWidget {
  const GoToDetailsButton({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    Color? bgColor =
        HomeCustomCardDecoration().cardColors(index: index, isIcon: true);
    Color? iconColor = HomeCustomCardDecoration().cardColors(index: index);
    return Align(
        alignment: Alignment.bottomRight,
        child: bgColor != null
            ? HomeCustomIconButtonWidget(
                height: Dimensions.height35,
                width: Dimensions.width35,
                radius: Dimensions.height5,
                icon: Icons.add,
                iconColor: iconColor,
                iconSize: Dimensions.iconSize20,
                bgColor: bgColor,
                onTap: () {},
              )
            : CustomIconButtonWidget(icon: Icons.add_box, onTap: () {}));
  }
}
