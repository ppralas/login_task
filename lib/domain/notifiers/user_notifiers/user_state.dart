import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:init_test_task/domain/entities/failure.dart';
import 'package:init_test_task/domain/entities/user.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  //definiranje koje cu imati stateove u aplikaciji
  const factory UserState.initial() = _Initial;
  const factory UserState.loading(User user) = _Loading;
  const factory UserState.failure(Failure failure) = _Failure;
  const factory UserState.loaded(User user) = _Loaded;
}
//nakon sto ovo napisem moram pokretuti build runner kako bi se izgenerirao .freezed file 
