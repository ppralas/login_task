import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:init_test_task/common/models/not_authenticated.dart';

part 'authentication_state.freezed.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.init() = _Init;
  const factory AuthenticationState.authenticated() = _Authenticated;
  const factory AuthenticationState.signedOut(NotAuthenticated data) =
      _SignedOut;
  const factory AuthenticationState.waiting() = _Waiting;
  const factory AuthenticationState.unAuthenticated(NotAuthenticated data) =
      _UnAuthenticated;
}
