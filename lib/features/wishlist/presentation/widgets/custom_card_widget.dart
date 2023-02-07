import 'package:biznugget/features/wishlist/data/models/item_model.dart';
import 'package:biznugget/utils/dimensions.dart';
import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  CustomCardWidget({Key? key, required this.item}) : super(key: key);

  ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: Dimensions.height10,
        left: Dimensions.height10,
        right: Dimensions.height10,
      ),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            item.name,
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: 8.0),
          Text(
            'Price: \$${item.price.toStringAsFixed(2)} \nDescription: ${item.description}',
          ),
        ],
      ),
    );
  }
}
