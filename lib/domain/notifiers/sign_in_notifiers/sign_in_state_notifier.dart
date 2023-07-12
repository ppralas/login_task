import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:init_test_task/common/authentication_notifier.dart';
import 'package:init_test_task/data/repositories/auth_repository.dart';
import 'package:init_test_task/data/repositories/user_repo.dart';

import 'package:init_test_task/domain/notifiers/sign_in_notifiers/sign_in_state.dart';
import 'package:riverpod/riverpod.dart';

final signInFormNotifierProvider =
    StateNotifierProvider.autoDispose<SignInFormNotifier, SignInState>(
        (ref) => SignInFormNotifier(
              ref.read(authRepositoryProvider),
              ref.read(authenticationNotifierProvider.notifier),
            ));

class SignInFormNotifier extends StateNotifier<SignInState> {
  final IAuthRepository _repository;
  final AuthenticationNotifier _authenticationNotifier;

  SignInFormNotifier(this._repository, this._authenticationNotifier)
      : super(const SignInState.initial());

  Future<void> submit(FormBuilderState? formState) async {
    state = const SignInState.loading();

    final result = await _repository.signIn(
      email: formState?.value['email'] ?? '',
      password: formState?.value['password'] ?? '',
    );
    result.fold(
      (l) => state = SignInState.failure(l),
      (r) async => _authenticationNotifier.checkAuthentication(),
    );
  }
}
