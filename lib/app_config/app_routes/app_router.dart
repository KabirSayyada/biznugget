import 'package:biznugget/app_config/app_routes/route_path.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/share_service/presentation/share_service_specialty.dart';
import '../../features/share_service/presentation/select_service_category.dart';
import '../../features/share_service/presentation/share_service.dart';
import '../../presentation/create_ad/pressentation/activate_promotion.dart';
import '../../presentation/create_ad/pressentation/create_ad.dart';
import '../../presentation/create_ad/pressentation/create_category.dart';
import '../../presentation/create_ad/pressentation/create_user_details.dart';
import '../../presentation/create_ad/pressentation/publish_ad.dart';
import '../../presentation/create_ad/pressentation/select_category.dart';
import '../../presentation/create_ad/pressentation/target_location.dart';
import '../../presentation/post_content/presentation/post_content.dart';
import '../../presentation/post_job/presentation/post_job.dart';

class AppRouter {
  static final GoRouter router = GoRouter(routes: <RouteBase>[
    // GoRoute(
    //     path: RoutePath.startedScreen,
    //     builder: (BuildContext context, GoRouterState state) {
    //       return const SplashScreen();
    //     }),
    GoRoute(
        path: RoutePath.postContent,
        builder: (BuildContext context, GoRouterState state) {
          return const PostContent();
        }),
    GoRoute(
        path: RoutePath.createAd,
        builder: (BuildContext context, GoRouterState state) {
          return const CreateAd();
        }),
    GoRoute(
        path: RoutePath.postJob,
        builder: (BuildContext context, GoRouterState state) {
          return const PostJob();
        }),
    GoRoute(
        path: RoutePath.targetLocation,
        builder: (BuildContext context, GoRouterState state) {
          return const TargetLocation();
        }),
    GoRoute(
        path: RoutePath.createCategory,
        builder: (BuildContext context, GoRouterState state) {
          return const CreateCategory();
        }),
    GoRoute(
        path: RoutePath.selectCategory,
        builder: (BuildContext context, GoRouterState state) {
          return const SelectAdCategory();
        }),
    GoRoute(
        path: RoutePath.createUserDetails,
        builder: (BuildContext context, GoRouterState state) {
          return const CreateUserDetails();
        }),
    GoRoute(
        path: RoutePath.publishAd,
        builder: (BuildContext context, GoRouterState state) {
          return const PublishAd();
        }),
    GoRoute(
        path: RoutePath.shareService,
        builder: (BuildContext context, GoRouterState state) {
          return const ShareService();
        }),
    GoRoute(
        path: RoutePath.selectServiceCategory,
        builder: (BuildContext context, GoRouterState state) {
          return const SelectServiceCategory();
        }),
    GoRoute(
        path: RoutePath.activatePromo,
        builder: (BuildContext context, GoRouterState state) {
          return const ActivatePromo();
        }),
    GoRoute(
        path: RoutePath.shareServiceSpecialty,
        builder: (BuildContext context, GoRouterState state) {
          return const ShareServiceSpecialty();
        }),
  ]);
}
