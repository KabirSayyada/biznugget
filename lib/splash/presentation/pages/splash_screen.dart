import 'package:biznugget/start_up/presentation/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const OnboardingScreen();
    // return Scaffold(
    //   body: SafeArea(
    //     child: ListView.separated(
    //       itemBuilder: (_, index) {
    //         return ListTile(
    //           title: Text(AppRouter.routes[index].path),
    //           onTap: () => context.push(AppRouter.routes[index].path),
    //         );
    //       },
    //       separatorBuilder: (_, __) => const DashedDivider(),
    //       itemCount: AppRouter.routes.length,
    //     ),
    //   ),
    // );
  }
}
