
import 'package:biznugget/features/payment/payment_view/payment_initial_screen.dart';
import 'package:biznugget/features/payment/payment_view/payment_screen.dart';

import 'package:biznugget/features/home/business_home/presentation/pages/_2_advertise_screen.dart';
import 'package:biznugget/features/home/home_control/presentation/home_control_screen.dart';
import 'package:biznugget/features/home/user_home/presentation/pages/home_screen.dart';
import 'package:biznugget/features/profile/presentation/pages/profile_screen.dart';
import 'package:biznugget/features/wishlist/data/repositories/local_storage.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/utils/strings.dart';
import '../features/details/presentation/pages/details_screen.dart';
import '../features/messages/message_screen.dart';
import '../features/messages/messages_screen.dart';
import '../features/splash_screen/presentation/pages/splash_screen.dart';
import '../features/wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import '../features/wishlist/presentation/pages/wishlist_screen.dart';

class AppRoutes {
  static const String initial = '/';
  static const String wishlist = '/Wishlist';
  static const String home = '/home';
  static const String advertise = '/advertise';
  static const String messages = '/messages';
  static const String message = '/message';
  static const String profile = '/profile';
  static const String details = '/details';
  static const String payment = '/payment';

  static Map<String, Widget Function(BuildContext)> get routes => {
        AppRoutes.initial: (_) => const PaymentScreen(),

        AppRoutes.initial: (_) =>  SplashScreen(),
        AppRoutes.wishlist: (_) => BlocProvider(
              create: (context) =>
                  WishlistItemsCubit(WishlistRepositoryImpl())..fetchAllWishlistItems(),
              child: WishlistScreen(),
            ),
        AppRoutes.home: (_) => const HomeControlScreen(),
        AppRoutes.advertise: (_) => const HomeControlScreen(),
        AppRoutes.message: (_) => const MessageScreen(),
        AppRoutes.messages: (_) => const MessagesScreen(),
        AppRoutes.profile: (_) => const ProfileScreen(),
        AppRoutes.details: (_) => const DetailsScreen(),
        AppRoutes.payment: (_) => const PaymentScreen(),
      };

  static Route? generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(
          child: Text(settings.name ?? ''),
        ),
      ),
    );
  }
}
