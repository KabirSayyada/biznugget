import 'package:biznugget/presentation/widgets/dashed_divider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(AppRouter.routes[index].path),
              onTap: () => context.goNamed(AppRouter.routes[index].path),
            );
          },
          separatorBuilder: (_, __) => const DashedDivider(),
          itemCount: AppRouter.routes.length,
        ),
      ),
    );
  }
}
