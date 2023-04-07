import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';
import '../../../core/widgets/dashed_divider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(AppRouter.splashRoutes[index].path),
              onTap: () => context.push(AppRouter.splashRoutes[index].path),
            );
          },
          separatorBuilder: (_, __) => const DashedDivider(),
          itemCount: AppRouter.splashRoutes.length,
        ),
      ),
    );
  }
}
