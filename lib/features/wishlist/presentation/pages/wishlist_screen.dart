import 'package:biznugget/common/widgets/search_bar.dart';
import 'package:biznugget/common/models/item_model.dart';
import 'package:biznugget/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:biznugget/features/wishlist/presentation/widgets/custom_card_widget.dart';
import 'package:biznugget/utils/dimensions.dart';
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
          child: BlocBuilder<WishlistBloc, WishlistState>(
            builder: (context, state) {
              /// Initial state and success state
              if (state is WishlistSuccess || state is WishlistInitial) {
                return Column(
                  children: <Widget>[
                    SearchBar(),
                    SizedBox(height: Dimensions.radius25),
                    Expanded(
                      child: _buildListView(
                          itemsList:
                              BlocProvider.of<WishlistBloc>(context).items),
                    ),
                  ],
                );

                /// loadint state
              } else if (state is WishlistLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );

                /// failure state
              } else if (state is WishlistFailure) {
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

          },
          child: CustomCardWidget(
            item: itemsList[index],
            onTap: () {
              BlocProvider.of<WishlistBloc>(context).add(
                WishlistRemove(index: index),
              );
            },
          ),
        );
      },
    );
  }
}
