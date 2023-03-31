import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../home/home_control/presentation/home_control_screen.dart';
import '../splash/presentation/pages/splash_screen.dart';
import 'providers/auth_provider.dart';
import 'sign_in_screen.dart';

class AuthChecker extends ConsumerWidget {
  const AuthChecker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(authStateProvider).when(
      data: (user) {
        if (user != null) return const HomeControlScreen();
        return const SigninScreen();
      },
      loading: () => const SplashScreen(),
      error: (e, trace) => const SigninScreen(),
    );
  }
}
