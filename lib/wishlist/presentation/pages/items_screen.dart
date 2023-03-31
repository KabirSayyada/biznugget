import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import '../widgets/custom_app_bar_widget.dart';
import '../widgets/wishlist_custom_card_widget.dart';
import '../widgets/wishlist_search_bar_widget.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({
    super.key,
    required this.searchBar,
  });

  final WishlistSearchBar searchBar;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishlistItemsCubit, WishlistItemsState>(
        builder: (context, state) {
      if (state is WishlistItemsInitial || state is WishlistItemsSuccess) {
        return Padding(
          padding: _padding(),
          child: Column(
            children: [
              // custom app bar
              CustomAppBar(
                text: 'Wishlist',
                onTap: () {
                  // BlocProvider.of<BottomNavigationBarCubit>(context)
                  //     .selectTab(0);
                  //
                  // /// todo : navigate to cart page
                },
              ),
              SizedBox(height: Dimensions.height50),
              // search bar
              searchBar,
              SizedBox(height: Dimensions.height40),
              // list of items
              _buildListView(
                  BlocProvider.of<WishlistItemsCubit>(context).filterdItems),
            ],
          ),
        );
      } else if (state is WishlistItemsLoading) {
        return const Center(
          child: Center(child: CircularProgressIndicator()),
        );

        /// failure state
      } else if (state is WishlistItemsFailure) {
        return Center(
          child: Text('error : ${state.message}'),
        );

        /// default state
      } else {
        return const Center(child: Text('Something went wrong'));
      }
    });
  }

  /// padding for the screen
  EdgeInsets _padding() {
    return EdgeInsets.only(
      top: Dimensions.height60,
      bottom: Dimensions.radius20,
      right: Dimensions.width15,
      left: Dimensions.width15,
    );
  }

  /// build list of items
  _buildListView(List<ItemModel> items) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              /// todo : navigate to product details page
            },
            child: WishlistCustomCard(
              item: items[index],
              index: index,
            ),
          );
        },
      ),
    );
  }
}
