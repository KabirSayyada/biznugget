import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/utils/strings.dart';
import '../presentation/create_ad/pressentation/create_ad.dart';
import '../presentation/create_ad/pressentation/create_category.dart';
import '../presentation/create_ad/pressentation/create_user_details.dart';
import '../presentation/create_ad/pressentation/publish_ad.dart';
import '../presentation/create_ad/pressentation/select_category.dart';
import '../presentation/create_ad/pressentation/target_location.dart';
import '../presentation/details/presentation/pages/details_screen.dart';
import '../presentation/home/user_home/presentation/pages/home_screen.dart';
import '../presentation/messages/messages_screen.dart';
import '../presentation/post_content/presentation/post_content.dart';
import '../presentation/post_job/presentation/post_job.dart';
import '../presentation/wishlist/data/repositories/local_storage.dart';
import '../presentation/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import '../presentation/wishlist/presentation/pages/wishlist_screen.dart';

class AppRoutes {
  static const String initial = '/';
  static const String wishlist = '/Wishlist';
  static const String homeScreen = '/home';
  static const String advertise = '/advertise';
  static const String messages = '/messages';
  static const String profile = '/profile';
  static const String details = '/details';

  static const String postContent = "/postContent";
  static const String createAd = "/createAd";
  static const String postJob = "/postJob";
  static const String targetLocation = "/targetLocation";
  static const String createCategory = "/createCategory";
  static const String selectCategory = "/selectCategory";
  static const String createUserDetails = "/createUserDetails";
  static const String publishAd = "/publishAd";

  static Route? routes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      /// bottom navigation bar
      case AppRoutes.initial:
        //return MaterialPageRoute(builder: (context) => const SplashScreen());
        return MaterialPageRoute(builder: (context) => const PostContent());

      /// wishlist
      case AppRoutes.wishlist:
        return MaterialPageRoute(
          builder: ((context) {
            return BlocProvider(
              create: (context) => WishlistItemsCubit(WishlistRepositoryImpl())
                ..fetchAllWishlistItems(),
              child: WishlistScreen(),
            );
          }),
        );

      /// home
      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      /// advertise
      case AppRoutes.advertise:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      /// messages
      case AppRoutes.messages:
        return MaterialPageRoute(builder: (context) => const MessagesScreen());

      /// profile
      case AppRoutes.profile:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      /// DetailsScreen
      case AppRoutes.details:
        return MaterialPageRoute(builder: (context) => const DetailsScreen());

      /// PostContent LandingScreen
      case AppRoutes.postContent:
        return MaterialPageRoute(builder: (context) => const PostContent());

      /// CreateAdScreen
      case AppRoutes.createAd:
        return MaterialPageRoute(builder: (context) => const CreateAd());

      /// PostJobScreen
      case AppRoutes.postJob:
        return MaterialPageRoute(builder: (context) => const PostJob());

      /// TargetLocationScreen
      case AppRoutes.targetLocation:
        return MaterialPageRoute(builder: (context) => const TargetLocation());

      /// CreateCategoryScreen
      case AppRoutes.createCategory:
        return MaterialPageRoute(builder: (context) => const CreateCategory());

      /// SelectCategoryScreen
      case AppRoutes.selectCategory:
        return MaterialPageRoute(
            builder: (context) => const SelectAdCategory());

      /// CreateUserDetailsScreen
      case AppRoutes.createUserDetails:
        return MaterialPageRoute(
            builder: (context) => const CreateUserDetails());

      /// PublishAdScreen
      case AppRoutes.publishAd:
        return MaterialPageRoute(builder: (context) => const PublishAd());

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
