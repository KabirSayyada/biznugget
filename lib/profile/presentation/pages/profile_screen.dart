import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/app_router.dart';
import '../../../core/widgets/dashed_divider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static final routes = [
    AppRouter.editProfile,
    AppRouter.history,
    AppRouter.favourites,
    AppRouter.setting,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (_, index) {
            return ListTile(
              title: Text(routes[index]),
              onTap: () => context.push(routes[index]),
            );
          },
          separatorBuilder: (_, __) => const DashedDivider(),
          itemCount: routes.length,
        ),
      ),
    );
  }
}
