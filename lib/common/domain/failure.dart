import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure<State, OtherStates> with _$Failure<State, OtherStates> {
  const factory Failure.accountNotActivated() = AccountNotActivated;
  const factory Failure.unauthorizedAccess() = UnauthorizedAccess;
  const factory Failure.serverError() = ServerError;
  const factory Failure.unexpectedDataError() = UnexpectedDataError;
  const factory Failure.forbidden() = ForbiddenAccess;
}
