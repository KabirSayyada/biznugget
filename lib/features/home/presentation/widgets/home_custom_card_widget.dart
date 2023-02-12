import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/common/widgets/custom_button_widget.dart';
import 'package:biznugget/core/common/widgets/custom_icon_button_widget.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/presentation/bloc/home_screen_bloc.dart';
import 'package:biznugget/features/home/presentation/widgets/home_custom_card_decoration.dart';
import 'package:biznugget/features/home/presentation/widgets/home_custom_icon_button_widget.dart';
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Title
                Expanded(
                  flex: 1,
                  child: Text(
                    item.name,
                    style: TextStyle(
                      fontSize: Dimensions.font16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                /// image of item
                Expanded(
                  flex: 2,
                  child: _itemImage(),
                ),

                /// item details
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    padding: _paddingOfItemDetailsColumn(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// title
                        BigText(
                          text: item.name,
                          size: Dimensions.font16,
                          maxLines: 2,
                        ),

                        /// row of button and (price and sale)
                        _price(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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

  /// padding of item details column
  EdgeInsets _paddingOfItemDetailsColumn() {
    return EdgeInsets.only(
      top: Dimensions.radius10,
      left: Dimensions.radius15,
      right: Dimensions.radius15,
      bottom: Dimensions.radius10,
    );
  }

  /// item image
  Container _itemImage() {
    return Container(
      margin: EdgeInsets.only(
        top: Dimensions.radius10,
        left: Dimensions.radius5,
        right: Dimensions.radius5,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(item.imageUrl),
          fit: BoxFit.fitHeight,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimensions.radius10),
          topRight: Radius.circular(Dimensions.radius10),
        ),
      ),
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

class GoToDetailsButton extends StatelessWidget {
  const GoToDetailsButton({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    Color? bgColor = HomeCustomCardDecoration().cardColors(index: index, isIcon: true);
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
