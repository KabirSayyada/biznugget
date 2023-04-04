import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:biznugget/core/helpers/Providers/error_screen.dart';
import 'package:biznugget/core/helpers/Providers/providers.dart';
import 'package:biznugget/profile/Profile_Page/consumer_profile.dart';

class AuthChecker extends ConsumerWidget {
  const AuthChecker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);

    return authState.when(
        data: (user) {
          if (user != null) return ConsumerProfile();
          return ConsumerProfile();
        },
        loading: () => const SplashScreen2(),
        error: (e, trace) => ErrorScreen(e, trace));
  }
}

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
