import 'package:biznugget/features/home/business_home/presentation/cubits/advertise_cubit/sub_categories_cubit/sub_categories_cubit.dart';
import 'package:biznugget/features/home/business_home/presentation/cubits/advertise_cubit/categories_cubit/categories_cubit.dart';
import 'package:biznugget/features/home/business_home/presentation/cubits/business_home_cubit/business_home_cubit.dart';
import 'package:biznugget/features/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import 'package:biznugget/features/bottom_navigation_bar/presentation/cubits/bottom_navigation_bar_cubit.dart';
import 'package:biznugget/features/home/user_home/presentation/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:biznugget/features/wishlist/data/repositories/local_storage.dart';
import 'package:biznugget/core/helpers/network_helper/bloc/network_bloc.dart';
import 'package:biznugget/core/utils/strings.dart';
import 'package:biznugget/config/app_routes.dart';
import 'package:biznugget/config/app_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

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
            create: (context) => WishlistItemsCubit(WishlistRepositoryImpl())
              ..fetchAllWishlistItems()),

        /// Network provider
        BlocProvider<NetworkBloc>(
            create: (context) => NetworkBloc()..add(NetworkObserve())),

        /// home bloc
        BlocProvider<HomeScreenBloc>(create: (context) => HomeScreenBloc()),

        /// Business Home Cubit
        BlocProvider<BusinessHomeCubit>(
            create: (context) => BusinessHomeCubit()),

        /// categories cubit
        BlocProvider<CategoriesCubit>(create: (context) => CategoriesCubit()),

        /// Sub categories cubit
        BlocProvider<SubCategoriesCubit>(
            create: (context) => SubCategoriesCubit()),

        /// add other bloc/cubit providers here
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        theme: appTheme(),
        routes: AppRoutes.routes,
        onGenerateRoute: AppRoutes.generateRoute,
      ),
    );
  }
}
