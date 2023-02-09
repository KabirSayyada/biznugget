import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/features/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import 'package:biznugget/features/wishlist/presentation/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CutomListViewBuilder extends StatefulWidget {
  CutomListViewBuilder({
    super.key,
    required this.items,
  });

  List<ItemModel> items;

  @override
  State<CutomListViewBuilder> createState() => _CutomListViewBuilderState();
}

class _CutomListViewBuilderState extends State<CutomListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishlistItemsCubit, WishlistItemsState>(
        builder: (context, state) {
      if (state is WishlistItemsInitial || state is WishlistItemsSuccess) {
        widget.items =
            BlocProvider.of<WishlistItemsCubit>(context).filterdItems;
        return _buildListView();
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
    });
  }

  ListView _buildListView() {
    return ListView.builder(
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            /// todo : navigate to product details page
          },
          child: CustomCardWidget(
            item: widget.items[index],
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
