//import 'package:biznugget/features/sign_in/sign_in_screen.dart';
import 'package:biznugget/features/account_type/presentation/acc_type_screen.dart';
import 'package:biznugget/features/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../features/details/presentation/pages/details_screen.dart';
import '../features/home/presentation/pages/home_screen.dart';
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
  static const String signin = '/signin';
  static const String accountType = '/accountType';

  static Map<String, Widget Function(BuildContext)> get routes => {
        AppRoutes.initial: (_) => const SplashScreen(), 
        AppRoutes.wishlist: (_) => BlocProvider(
              create: (context) =>
                  WishlistItemsCubit()..fetchAllWishlistItems(),
              child: WishlistScreen(),
            ),
        AppRoutes.home: (_) => const HomeScreen(),
        AppRoutes.advertise: (_) => const HomeScreen(),
        AppRoutes.message: (_) => const MessageScreen(),
        AppRoutes.messages: (_) => const MessagesScreen(),
        AppRoutes.profile: (_) => const HomeScreen(),
        AppRoutes.details: (_) => const DetailsScreen(),
        AppRoutes.signin: (_) => const SigninScreen(),
        AppRoutes.accountType: (_) => const AccountTypeScreen(),
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
