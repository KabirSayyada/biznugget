import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: Dimensions.height10,
        right: Dimensions.height10,
        left: Dimensions.height10,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(Dimensions.radius30),
      ),
      child: TextFormField(
        controller: _searchController,
        onSaved: (value) {
          _filterItems(context, value);
        },
        onChanged: (value) {
          _filterItems(context, value);
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey[800],
          ),
          hintText: 'Search',
          border: InputBorder.none,
        ),
      ),
    );
  }


_filterItems (BuildContext context, value) {
  BlocProvider.of<WishlistItemsCubit>(context).filterWishlistItems(searchQuery: value);
}


}
