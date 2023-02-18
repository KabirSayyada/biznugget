import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/utils/strings.dart';
import '../features/details/presentation/pages/details_screen.dart';
import '../features/home/presentation/pages/home_screen.dart';
import '../features/messages/messages_screen.dart';
import '../features/splash_screen/presentation/pages/splash_screen.dart';
import '../features/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import '../features/wishlist/presentation/pages/wishlist_screen.dart';

class AppRoutes {
  static const String initial = '/';
  static const String wishlist = '/Wishlist';
  static const String homeScreen = '/home';
  static const String advertise = '/advertise';
  static const String messages = '/messages';
  static const String profile = '/profile';
  static const String details = '/details';

  static Route? routes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      /// bottom navigation bar
      case AppRoutes.initial:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      /// wishlist
      case AppRoutes.wishlist:
        return MaterialPageRoute(
          builder: ((context) {
            return BlocProvider(
              create: (context) =>
                  WishlistItemsCubit()..fetchAllWishlistItems(),
              child: WishlistScreen(),
            );
          }),
        );

      /// home
      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      /// advertise
      case AppRoutes.advertise:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      /// messages
      case AppRoutes.messages:
        return MaterialPageRoute(builder: (context) => const MessagesScreen());

      /// profile
      case AppRoutes.profile:
        return MaterialPageRoute(builder: (context) => const HomeScreen());

      /// DetailsScreen
      case AppRoutes.details:
        return MaterialPageRoute(builder: (context) => const DetailsScreen());

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text(AppStrings.noRouteFound),
            ),
          ),
        );
    }
  }
}
