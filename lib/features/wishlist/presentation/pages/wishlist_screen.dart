import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/features/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import 'package:biznugget/features/wishlist/presentation/widgets/custom_card_widget.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/wishlist/presentation/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistScreen extends StatefulWidget {
  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  final TextEditingController _searchController = TextEditingController();

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
          child: BlocBuilder<WishlistItemsCubit, WishlistItemsState>(
            builder: (context, state) {
              /// Initial state and success state
              if (state is WishlistItemsInitial ||
                  state is WishlistItemsSuccess) {
                return Column(
                  children: <Widget>[
                    SearchBar(),
                    SizedBox(height: Dimensions.radius25),
                    Expanded(
                      child: _buildListView(
                          itemsList:
                              BlocProvider.of<WishlistItemsCubit>(context)
                                  .items),
                    ),
                  ],
                );

                /// loading state
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
            },
          ),
        ),
      ),
    );
  }

  ListView _buildListView({required List<ItemModel> itemsList}) {
    return ListView.builder(
      itemCount: itemsList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            /// todo : navigate to product details page
          },
          child: CustomCardWidget(
            item: itemsList[index],
            onTap: () {
              BlocProvider.of<WishlistItemsCubit>(context)
                  .removeFromWishlist(index: index);
            },
          ),
        );
      },
    );
  }
}
