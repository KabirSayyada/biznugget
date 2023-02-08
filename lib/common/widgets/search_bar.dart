import 'package:biznugget/utils/dimensions.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: Dimensions.height20,
        left: Dimensions.width15,
        right: Dimensions.width15,
        bottom: Dimensions.height20,
      ),
      padding: EdgeInsets.only(left: Dimensions.width30),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(Dimensions.radius20),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          hintText: 'Search',
          border: InputBorder.none,
          icon: Icon(Icons.search),
        ),
      ),
    );
  }
}

