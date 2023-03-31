import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class HomeSearchBar extends StatelessWidget {
  HomeSearchBar({super.key});

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SearchBarAnimation(
      textEditingController: _searchController,
      durationInMilliSeconds: 500,
      hintText: 'Search your products',
      enableBoxBorder: true,

      /// search
      onChanged: (value) {
        _searchItems(context, value);
      },
      isOriginalAnimation: true,
      enableKeyboardFocus: true,
      onExpansionComplete: () {
        debugPrint('do something just after searchbox is opened.');
      },
      onCollapseComplete: () {
        debugPrint('do something just after searchbox is closed.');
      },
      onPressButton: (isSearchBarOpens) {
        debugPrint(
            'do something before animation started. It\'s the ${isSearchBarOpens ? 'opening' : 'closing'} animation');
      },
      trailingWidget: GestureDetector(
        onTap: () {
          /// todo : go to filter page
        },
        child: Icon(
          Icons.filter_list,
          size: Dimensions.height22,
          color: AppColors.hintColor,
        ),
      ),
      secondaryButtonWidget: Icon(
        Icons.close,
        size: Dimensions.height20,
        color: AppColors.hintColor,
      ),
      buttonWidget: Icon(
        Icons.search,
        size: Dimensions.height22,
        color: Colors.black,
      ),
    );
  }

  _searchItems(BuildContext context, value) {
    /// todo : search items
  }
}
