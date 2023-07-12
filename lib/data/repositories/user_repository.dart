import 'package:init_test_task/data/mappers/entity_mapper.dart';
import 'package:init_test_task/data/mappers/user_entity_mapper.dart';
import 'package:init_test_task/data/models/user_response.dart';
import 'package:init_test_task/data/network/api_client.dart';
import 'package:init_test_task/domain/entities/failure.dart';
import 'package:init_test_task/domain/entities/user.dart';
import 'package:riverpod/riverpod.dart';
import 'package:dartz/dartz.dart';

final userRepositoryProvider = Provider(((ref) => UserRepositoryImpl(
      ref.watch(apiClientProvider),
      ref.watch(userEntitiyMapperProvider),
    )));

abstract class UserRepository {
  Future<Either<Failure, User>> getUser();
}

class UserRepositoryImpl implements UserRepository {
  final ApiClient userApi;
  final EntityMapper<User, UserResponse> userMapper;

  UserRepositoryImpl(this.userApi, this.userMapper);

  @override
  Future<Either<Failure, User>> getUser() async {
    try {
      final user = await userApi.getUser();
      return right(user as User);
    } catch (error, StackTrace) {
      return left(Failure(error, StackTrace));
    }
  }
}
