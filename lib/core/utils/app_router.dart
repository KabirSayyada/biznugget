import 'package:biznugget/profile/Profile_Edit/consumer_edit.dart';
import 'package:biznugget/profile/Profile_Page/Features/Favorite/favorite.dart';
import 'package:biznugget/profile/Profile_Page/Features/History/history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../account_type/presentation/acc_type_screen.dart';
import '../../create_ad/pressentation/create_ad.dart';
import '../../create_ad/pressentation/create_category.dart';
import '../../create_ad/pressentation/create_user_details.dart';
import '../../create_ad/pressentation/publish_ad.dart';
import '../../create_ad/pressentation/select_category.dart';
import '../../create_ad/pressentation/target_location.dart';
import '../../details/presentation/pages/details_screen.dart';
import '../../home/home_control/presentation/home_control_screen.dart';
import '../../messages/message_screen.dart';
import '../../messages/messages_screen.dart';
import '../../paid_ads/paid_ads_view/paid_ads_audience_screen.dart';
import '../../paid_ads/paid_ads_view/paid_ads_basic_info_screen.dart';
import '../../payment/payment_view/payment_screen.dart';
import '../../post_content/presentation/post_content.dart';
import '../../post_job/presentation/post_job.dart';
import '../../profile/presentation/pages/profile_screen.dart';
import '../../share_service/presentation/share_service.dart';
import '../../share_service/presentation/share_service_specialty.dart';
import '../../signin/auth_checker.dart';
import '../../signin/sign_in_screen.dart';
import '../../splash/presentation/pages/splash_screen.dart';
import '../../start_up/presentation/onboarding_screen.dart';
import '../../traders/trader_screen.dart';
import '../../traders/traders_screen.dart';
import '../../wishlist/data/repositories/local_storage.dart';
import '../../wishlist/presentation/cubits/wishlist_items_cubit/wishlist_items_cubit.dart';
import '../../wishlist/presentation/pages/wishlist_screen.dart';

class AppRouter {
  static const String initial = '/';
  static const String wishlist = '/wishlist';
  static const String home = '/home';
  static const String advertise = '/advertisement';
  static const String messages = '/messages';
  static const String profile = '/profile';
  static const String details = '/details';
  static const String traders = '/traders';
  static const String payment = '/payment';
  static const String postContent = "/postContent";
  static const String createAd = "/advertisement/create";
  static const String postJob = "/postJob";
  static const String targetLocation = "/targetLocation";
  static const String createCategory = "/createCategory";
  static const String selectCategory = "/selectCategory";
  static const String createUserDetails = "/createUserDetails";
  static const String publishAd = "/advertisement/publish";
  static const String paidAdsBasicInfo = '/paidAdsBasicInfo';
  static const String paidAdsAudience = '/paidAdsAudience';
  static const String authChecker = '/auth/checker';
  static const String signInScreen = '/auth';
  static const String accTypeScreen = '/accTypeScreen';
  static const String shareService = '/share-service';
  static const String shareServiceSpecialty = '/share-service/specialty';

  static const String favourites = '/profile/favourites';
  static const String history = '/profile/history';
  static const String editProfile = '/profile/edit';
  static const String setting = '/profile/edit';
  static const String onboardingScreen = '/onBoarding';
  static const String splashScreen = '/welcome';
  static const String orders = '/orders';

  static final routes = [
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
      path: '$messages/:id',
      builder: (BuildContext context, GoRouterState state) {
        return MessageScreen(messageId: state.params["id"] as String);
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
      path: '$traders/:id',
      builder: (BuildContext context, GoRouterState state) {
        return TraderScreen(traderId: state.params["id"] as String);
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
        return const SelectAdCategory();
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
    //checks if user is authenticated
    GoRoute(
      path: authChecker,
      builder: (BuildContext context, GoRouterState state) {
        return const AuthChecker();
      },
    ),
    GoRoute(
      path: signInScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SigninScreen();
      },
    ),
    GoRoute(
      path: accTypeScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const AccountTypeScreen();
      },
    ),
    GoRoute(
      path: shareService,
      builder: (BuildContext context, GoRouterState state) {
        return const ShareService();
      },
    ),
    GoRoute(
      path: shareServiceSpecialty,
      builder: (BuildContext context, GoRouterState state) {
        return const ShareServiceSpecialty();
      },
    ),
    GoRoute(
      path: onboardingScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const OnboardingScreen();
      },
    ),
    GoRoute(
      path: splashScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    //TODO: Navigate to orders screen
    GoRoute(
      path: orders,
      builder: (BuildContext context, GoRouterState state) {
        return const Placeholder();
      },
    ),
    GoRoute(
      path: editProfile,
      builder: (BuildContext context, GoRouterState state) {
        return const ConsumerProfileEdit();
      },
    ),
    GoRoute(
      path: history,
      builder: (BuildContext context, GoRouterState state) {
        return const HistoryPage();
      },
    ),
    GoRoute(
      path: favourites,
      builder: (BuildContext context, GoRouterState state) {
        return const Favorite();
      },
    ),
    GoRoute(
      path: setting,
      builder: (BuildContext context, GoRouterState state) {
        return const ConsumerProfileEdit();
      },
    ),
  ]..sort((a, b) => a.path.compareTo(b.path));

  static final List<GoRoute> splashRoutes = [
    GoRoute(
      path: onboardingScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const OnboardingScreen();
      },
    ),
    //checks if user is authenticated
    GoRoute(
      path: authChecker,
      builder: (BuildContext context, GoRouterState state) {
        return const AuthChecker();
      },
    ),
    GoRoute(
      path: signInScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SigninScreen();
      },
    ),

    /// Using splash screen as welcome screen for now
    GoRoute(
      path: splashScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: home,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeControlScreen();
      },
    ),
  ]..sort((a, b) => a.path.compareTo(b.path));

  static final List<GoRoute> bottomNavRoutes = [
    GoRoute(
      path: home,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeControlScreen();
      },
    ),
    //TODO: Navigate to orders screen
    GoRoute(
      path: orders,
      builder: (BuildContext context, GoRouterState state) {
        return const Placeholder();
      },
    ),
    GoRoute(
      path: createAd,
      builder: (BuildContext context, GoRouterState state) {
        return const CreateAd();
      },
    ),
    GoRoute(
      path: createCategory,
      builder: (BuildContext context, GoRouterState state) {
        return const CreateCategory();
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
  ]..sort((a, b) => a.path.compareTo(b.path));

  /// All profile actions already exist in lib/profile/Profile_Page/Features/features.dart
  static final profileRoutes = [
    GoRoute(
      path: editProfile,
      builder: (BuildContext context, GoRouterState state) {
        return const ConsumerProfileEdit();
      },
    ),
    GoRoute(
      path: history,
      builder: (BuildContext context, GoRouterState state) {
        return const HistoryPage();
      },
    ),
    GoRoute(
      path: favourites,
      builder: (BuildContext context, GoRouterState state) {
        return const Favorite();
      },
    ),
    GoRoute(
      path: setting,
      builder: (BuildContext context, GoRouterState state) {
        return const ConsumerProfileEdit();
      },
    ),
  ]..sort((a, b) => a.path.compareTo(b.path));

  static final GoRouter router = GoRouter(routes: routes);
}
