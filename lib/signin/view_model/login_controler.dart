import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/auth_provider.dart';
import 'login_state.dart';

class LoginController extends StateNotifier<LoginState> {
  LoginController(this.ref) : super(const LoginStateInitial());

  final Ref ref;
  void login(String email, String password) async {
    state = const LoginStateLoading();
    try {
      await ref
          .read(authRepositoryProvider)
          .signInWithEmail(email: email, password: password);
      state = const LoginStateSuccess();
    } catch (e) {
      state = LoginStateError(e.toString());
    }
  }

  void loginWithGoogle() async {
    await ref.read(authRepositoryProvider).signInWithGoogle();
  }

  void loginWithFacebook() async {
    await ref.read(authRepositoryProvider).signInWithFacebook();
  }

  void logout() async {
    await ref.read(authRepositoryProvider).signout();
  }
}
final loginControllerProvider =
    StateNotifierProvider<LoginController, LoginState>((ref) {
  return LoginController(ref);
});
