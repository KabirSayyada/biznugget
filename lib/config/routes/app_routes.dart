import 'package:biznugget/core/utils/strings.dart';
import 'package:biznugget/features/bottom_navigation_bar/presentation/pages/bottom_navigation_bar_page.dart';
import 'package:biznugget/features/details/presentation/pages/details_screen.dart';
import 'package:biznugget/features/home/presentation/pages/home_screen.dart';
import 'package:biznugget/features/splash_screen/presentation/pages/splash_screen.dart';
import 'package:biznugget/features/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import 'package:biznugget/features/wishlist/presentation/pages/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  static const String initialRoute = '/';
  static const String wishlistScreenRoute = '/WishlistScreen';
  static const String HomeScreenRoute = '/HomeScreen';
  static const String AdvertiseScreenRoute = '/AdvertiseScreen';
  static const String MessagesScreenRoute = '/MessagesScreen';
  static const String ProfileScreenRoute = '/ProfileScreen';
  static const String DetailsScreenRoute = '/DetailsScreen';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      /// bottom navigation bar
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context) {
          return const SplashScreen();
        });

      /// wishlist
      case Routes.wishlistScreenRoute:
        return MaterialPageRoute(builder: ((context) {
          return BlocProvider(
            create: (context) => WishlistItemsCubit()..fetchAllWishlistItems(),
            child: WishlistScreen(),
          );
        }));

      /// home
      case Routes.HomeScreenRoute:
        return MaterialPageRoute(builder: ((context) {
          return HomeScreen();
        }));

      /// advertise
      case Routes.AdvertiseScreenRoute:
        return MaterialPageRoute(builder: ((context) {
          return HomeScreen();
        }));

      /// messages
      case Routes.MessagesScreenRoute:
        return MaterialPageRoute(builder: ((context) {
          return HomeScreen();
        }));

      /// profile
      case Routes.ProfileScreenRoute:
        return MaterialPageRoute(builder: ((context) {
          return HomeScreen();
        }));

      /// DetailsScreen
      case Routes.DetailsScreenRoute:
        return MaterialPageRoute(builder: ((context) {
          return DetailsScreen();
        }));

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: ((context) => const Scaffold(
              body: Center(
                child: Text(AppStrings.noRouteFound),
              ),
            )));
  }
}
