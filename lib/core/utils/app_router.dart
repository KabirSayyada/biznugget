import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:go_router/go_router.dart';

import '../../features/create_ad/pressentation/create_ad.dart';
import '../../features/create_ad/pressentation/create_category.dart';
import '../../features/create_ad/pressentation/create_user_details.dart';
import '../../features/create_ad/pressentation/publish_ad.dart';
import '../../features/create_ad/pressentation/select_category.dart';
import '../../features/create_ad/pressentation/target_location.dart';
import '../../features/details/presentation/pages/details_screen.dart';
import '../../features/home/home_control/presentation/home_control_screen.dart';
import '../../features/messages/message_screen.dart';
import '../../features/messages/messages_screen.dart';
import '../../features/paid_ads/paid_ads_view/paid_ads_audience_screen.dart';
import '../../features/paid_ads/paid_ads_view/paid_ads_basic_info_screen.dart';
import '../../features/payment/payment_view/payment_screen.dart';
import '../../features/post_content/presentation/post_content.dart';
import '../../features/post_job/presentation/post_job.dart';
import '../../features/profile/presentation/pages/profile_screen.dart';
import '../../features/splash/presentation/pages/splash_screen.dart';
import '../../features/traders/trader_screen.dart';
import '../../features/traders/traders_screen.dart';
import '../../features/wishlist/data/repositories/local_storage.dart';
import '../../features/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import '../../features/wishlist/presentation/pages/wishlist_screen.dart';

class AppRouter {
  static const String initial = '/';
  static const String wishlist = '/wishlist';
  static const String home = '/home';
  static const String advertise = '/advertise';
  static const String messages = '/messages';
  static const String message = '/message';
  static const String profile = '/profile';
  static const String details = '/details';
  static const String traders = '/traders';
  static const String trader = '/trader';
  static const String payment = '/payment';
  static const String postContent = "/postContent";
  static const String createAd = "/createAd";
  static const String postJob = "/postJob";
  static const String targetLocation = "/targetLocation";
  static const String createCategory = "/createCategory";
  static const String selectCategory = "/selectCategory";
  static const String createUserDetails = "/createUserDetails";
  static const String publishAd = "/publishAd";
  static const String paidAdsBasicInfo = '/paidAdsBasicInfo';
  static const String paidAdsAudience = '/paidAdsAudience';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: initial,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: wishlist,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => WishlistItemsCubit(WishlistRepositoryImpl())
              ..fetchAllWishlistItems(),
            child: WishlistScreen(),
          );
        },
      ),
      GoRoute(
        path: home,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeControlScreen();
        },
      ),
      GoRoute(
        path: advertise,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeControlScreen();
        },
      ),
      GoRoute(
        path: message,
        builder: (BuildContext context, GoRouterState state) {
          return MessageScreen(user: state.extra as types.User);
        },
      ),
      GoRoute(
        path: messages,
        builder: (BuildContext context, GoRouterState state) {
          return const MessagesScreen();
        },
      ),
      GoRoute(
        path: profile,
        builder: (BuildContext context, GoRouterState state) {
          return const ProfileScreen();
        },
      ),
      GoRoute(
        path: details,
        builder: (BuildContext context, GoRouterState state) {
          return const DetailsScreen();
        },
      ),
      GoRoute(
        path: trader,
        builder: (BuildContext context, GoRouterState state) {
          return TraderScreen(traderId: state.queryParams["id"] as String);
        },
      ),
      GoRoute(
        path: traders,
        builder: (BuildContext context, GoRouterState state) {
          return const TradersScreen();
        },
      ),
      GoRoute(
        path: payment,
        builder: (BuildContext context, GoRouterState state) {
          return const PaymentScreen();
        },
      ),
      GoRoute(
        path: postContent,
        builder: (BuildContext context, GoRouterState state) {
          return const PostContent();
        },
      ),
      GoRoute(
        path: createAd,
        builder: (BuildContext context, GoRouterState state) {
          return const CreateAd();
        },
      ),
      GoRoute(
        path: postJob,
        builder: (BuildContext context, GoRouterState state) {
          return const PostJob();
        },
      ),
      GoRoute(
        path: targetLocation,
        builder: (BuildContext context, GoRouterState state) {
          return const TargetLocation();
        },
      ),
      GoRoute(
        path: createCategory,
        builder: (BuildContext context, GoRouterState state) {
          return const CreateCategory();
        },
      ),
      GoRoute(
        path: selectCategory,
        builder: (BuildContext context, GoRouterState state) {
          return const SelectCategory();
        },
      ),
      GoRoute(
        path: createUserDetails,
        builder: (BuildContext context, GoRouterState state) {
          return const CreateUserDetails();
        },
      ),
      GoRoute(
        path: publishAd,
        builder: (BuildContext context, GoRouterState state) {
          return const PublishAd();
        },
      ),
      GoRoute(
        path: payment,
        builder: (BuildContext context, GoRouterState state) {
          return const PaymentScreen();
        },
      ),
      GoRoute(
        path: paidAdsBasicInfo,
        builder: (BuildContext context, GoRouterState state) {
          return const PaidAdsBasicInfoScreen();
        },
      ),
      GoRoute(
        path: paidAdsAudience,
        builder: (BuildContext context, GoRouterState state) {
          return const PaidAdsAudienceScreen(i: 1);
        },
      ),
    ],
  );
}
