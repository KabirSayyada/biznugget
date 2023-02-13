
import 'package:biznugget/app_config/app_routes/route_path.dart';
import 'package:biznugget/features/file_upload/presentation/post_content.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



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
   
  ]);
}
