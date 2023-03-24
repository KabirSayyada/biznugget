import 'package:biznugget/presentation/home/home_control/presentation/home_control_screen.dart';
import 'package:biznugget/presentation/signin/providers/auth_provider.dart';
import 'package:biznugget/presentation/signin/sign_in_screen.dart';
import 'package:biznugget/presentation/splash/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthChecker extends ConsumerWidget {
  const AuthChecker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _authState = ref.watch(authStateProvider);
    return _authState.when(
      data: (user) {
        if (user != null) return const HomeControlScreen();
        return const SigninScreen();
      },
      loading: () => const SplashScreen(),
      error: (e, trace) => const SigninScreen(),
    );
  }
}
