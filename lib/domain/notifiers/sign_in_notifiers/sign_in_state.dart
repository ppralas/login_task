import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:init_test_task/domain/entities/failure.dart';
import 'package:init_test_task/domain/entities/sign_in.dart';

part 'sign_in_state.freezed.dart';

@freezed
class SignInState with _$SignInState {
  //definiranje koje cu imati stateove u aplikaciji
  const factory SignInState.initial() = _Initial;
  const factory SignInState.loading() = _Loading;
  const factory SignInState.failure(Failure failure) = _Failure;
  const factory SignInState.loaded(SignIn signIn) = _Loaded;
}

//nakon sto ovo napisem moram pokretuti build runner kako bi se izgenerirao .freezed file 
