import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistSearchBar extends StatelessWidget {
  WishlistSearchBar({super.key});

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: Dimensions.height10,
        left: Dimensions.height10,
      ),
      padding: EdgeInsets.only(
        top: Dimensions.height5,
        bottom: Dimensions.height5,
      ),
      child: TextFormField(
        controller: _searchController,
        onChanged: (value) {
          _filterItems(context, value);
        },
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.hintColor,
          ),
          hintText: 'Search your wishlist products',
          hintStyle: const TextStyle(
            color: AppColors.hintColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius15),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Dimensions.radius15),
            borderSide: const BorderSide(
              color: AppColors.primaryColor1,
            ),
          ),
        ),
      ),
    );
  }

  _filterItems(BuildContext context, value) {
    BlocProvider.of<WishlistItemsCubit>(context)
        .filterWishlistItems(searchQuery: value);
  }
}
