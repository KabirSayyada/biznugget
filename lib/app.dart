import 'package:biznugget/config/routes/app_routes.dart';
import 'package:biznugget/config/themes/app_theme.dart';
import 'package:biznugget/core/utils/strings.dart';
import 'package:biznugget/features/bottom_navigation_bar/presentation/cubits/bottom_navigation_bar_cubit.dart';
import 'package:biznugget/features/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Biznugget extends StatelessWidget {
  const Biznugget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

        /// bottom navigation bar provider
        BlocProvider<BottomNavigationBarCubit>(
            create: (context) => BottomNavigationBarCubit()),

        /// wishlist provider
        BlocProvider<WishlistItemsCubit>(
            create: (context) => WishlistItemsCubit()..fetchAllWishlistItems()),
            // add other bloc/cubit providers here
      ],
      child: MaterialApp(
        title: AppStrings.appName,
        theme: appTheme(),
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
