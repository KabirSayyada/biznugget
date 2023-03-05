import 'package:biznugget/features/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import 'package:biznugget/features/wishlist/presentation/pages/empty_screen.dart';
import 'package:biznugget/features/wishlist/presentation/pages/items_screen.dart';
import 'package:biznugget/features/wishlist/presentation/widgets/wishlist_search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistScreen extends StatelessWidget {
  WishlistScreen({super.key});

  final WishlistSearchBar _searchBar = WishlistSearchBar();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: <Widget>[
        BlocConsumer<WishlistItemsCubit, WishlistItemsState>(
            listener: (context, state) {
          if (state is WishlistItemsInitial) {
            BlocProvider.of<WishlistItemsCubit>(context)
                .fetchAllWishlistItems();
          }
        }, builder: (context, state) {
          /// Initial state and success state
          if (state is WishlistItemsInitial || state is WishlistItemsSuccess) {
            if (BlocProvider.of<WishlistItemsCubit>(context).items.isNotEmpty) {
              return Expanded(
                child: ItemsScreen(
                  searchBar: _searchBar,
                ),
              );
            } else {
              /// if empty show empty screen
              return const Expanded(child: EmptyScreen());
            }
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
        })
      ],
    )));
  }
}
