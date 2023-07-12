import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:init_test_task/common/authentication_state.dart';
import 'package:init_test_task/common/models/providers/auth_service.dart';
import 'package:init_test_task/common/models/i_auth_service.dart';
import 'package:init_test_task/common/models/not_authenticated.dart';

final authenticationNotifierProvider =
    StateNotifierProvider<AuthenticationNotifier, AuthenticationState>(
  (ref) => AuthenticationNotifier(
    ref.watch(authServiceProvider),
  )..checkAuthentication(),
);

class AuthenticationNotifier extends StateNotifier<AuthenticationState> {
  final IAuthService _service;

  AuthenticationNotifier(
    this._service,
  ) : super(const AuthenticationState.init());

  Future<void> checkAuthentication() async {
    state = const AuthenticationState.waiting();

    final isAuthenticated = await _service.isAuthenticated();

    state = isAuthenticated.fold((l) => AuthenticationState.unAuthenticated(l),
        (r) => const AuthenticationState.authenticated());
  }

  Future<void> signOut(NotAuthenticated data) async {
    // Sign out, delete tokens etc...
    await _service.signOut();

    state = AuthenticationState.signedOut(data);
  }
}
