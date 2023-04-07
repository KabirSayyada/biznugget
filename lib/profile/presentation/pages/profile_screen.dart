import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import '../../../core/utils/app_router.dart';
import '../../../core/widgets/dashed_divider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('profile'),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(AppRouter.profileRoutes[index].path),
              onTap: () => context.push(AppRouter.profileRoutes[index].path),
            );
          },
          separatorBuilder: (_, __) => const DashedDivider(),
          itemCount: AppRouter.profileRoutes.length,
        ),
      ),
    );
  }
}
