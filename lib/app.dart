import 'package:biznugget/core/helpers/network_helper/bloc/network_bloc.dart';
import 'package:biznugget/core/utils/strings.dart';
import 'presentation/home/business_home/presentation/cubits/advertise_cubit/categories_cubit/categories_cubit.dart';
import 'presentation/home/business_home/presentation/cubits/advertise_cubit/sub_categories_cubit/sub_categories_cubit.dart';
import 'presentation/home/business_home/presentation/cubits/business_home_cubit/business_home_cubit.dart';
import 'presentation/home/user_home/presentation/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'presentation/payment/bloc/payment_event.dart';
import 'presentation/payment/bloc/paymet_bloc.dart';
import 'presentation/wishlist/data/repositories/local_storage.dart';
import 'presentation/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_config/app_routes/app_router.dart';

import 'core/utils/app_router.dart';
import 'core/utils/app_theme.dart';

class BiznuggetApp extends StatelessWidget {
  const BiznuggetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
    return MultiBlocProvider(
      providers: [

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

        /// PAYMENT BLOC
        BlocProvider<PaymentBloc>(
            create: (_) => PaymentBloc()..add(const PaymentEventInitialize())),

        /// add other bloc/cubit providers here
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: AppStrings.appName,
            theme: appTheme(),
            routerConfig: AppRouter.router,
          );
        },
      ),
    );
  });
}}
