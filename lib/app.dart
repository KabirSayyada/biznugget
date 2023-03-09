import 'package:biznugget/features/home/business_acc_home/presentation/cubits/advertise_cubit/advertise_cubit.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/cubits/sell_or_buy_cubit/sell_or_buy_cubit.dart';
import 'package:biznugget/features/home/presentation/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:biznugget/config/app_routes.dart';
import 'package:biznugget/config/app_theme.dart';
import 'package:biznugget/core/helpers/network_helper/bloc/network_bloc.dart';
import 'package:biznugget/core/utils/strings.dart';
import 'package:biznugget/features/bottom_navigation_bar/presentation/cubits/bottom_navigation_bar_cubit.dart';
import 'package:biznugget/features/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_config/app_routes/app_router.dart';

class Biznugget extends StatelessWidget {
  const Biznugget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
    return MultiBlocProvider(
      providers: [
        /// bottom navigation bar provider
        BlocProvider<BottomNavigationBarCubit>(
            create: (context) => BottomNavigationBarCubit()),

        /// wishlist provider
        BlocProvider<WishlistItemsCubit>(
            create: (context) => WishlistItemsCubit()..fetchAllWishlistItems()),

        /// Network provider
        BlocProvider<NetworkBloc>(
            create: (context) => NetworkBloc()..add(NetworkObserve())),

        /// home bloc
        BlocProvider<HomeScreenBloc>(create: (context) => HomeScreenBloc()),

        /// sell or buy cubit
        BlocProvider<SellOrBuyCubit>(create: (context) => SellOrBuyCubit()),

        /// ADVERTISE Cubit
        BlocProvider<AdvertiseCubit>(create: (context) => AdvertiseCubit()),

        /// add other bloc/cubit providers here
      ],
      child: MaterialApp.router(
         routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        theme: appTheme(),
        //onGenerateRoute: AppRoutes.routes,
      ),
    );
  });
}}
