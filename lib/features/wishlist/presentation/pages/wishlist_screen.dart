import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/features/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import 'package:biznugget/features/wishlist/presentation/widgets/custom_card_widget.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/wishlist/presentation/widgets/cutom_list_view_builder_widget.dart';
import 'package:biznugget/features/wishlist/presentation/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistScreen extends StatefulWidget {
  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  /// todo: filter according to the search word
  // List<Map<String, dynamic>> _filteredWishlist = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: EdgeInsets.only(
        top: Dimensions.radius20,
        right: Dimensions.radius10,
        bottom: Dimensions.radius20,
        left: Dimensions.radius10,
      ),
      child: Column(
        children: <Widget>[
          SearchBar(),
          SizedBox(height: Dimensions.radius25),
          BlocBuilder<WishlistItemsCubit, WishlistItemsState>(
              builder: (context, state) {
            /// Initial state and success state
            if (state is WishlistItemsInitial ||
                state is WishlistItemsSuccess) {
              return Expanded(
                child: CutomListViewBuilder(
                  items: BlocProvider.of<WishlistItemsCubit>(context).items,
                ),
              );
            } else if (state is WishlistItemsLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );

              /// failure state
            } else if (state is WishlistItemsFailure) {
              return Center(
                child: Text('error : ${state.message}'),
              );

              /// default state
            } else {
              return const Center(
                child: Text('Something went wrong'),
              );
            }
          })
        ],
      ),
    )));

    /// loading state
  }
}
