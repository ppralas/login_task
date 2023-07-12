// ignore_for_file: deprecated_member_use

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:init_test_task/common/domain/failure.dart';
import 'package:init_test_task/data/models/log_in_request.dart';
import 'package:init_test_task/data/models/user_response.dart';
import 'package:init_test_task/data/network/api_client.dart';
import 'package:init_test_task/data/network/storage.dart';
import 'package:init_test_task/data/repositories/i_auth_repository.dart';
import 'package:init_test_task/data/storage/storage.dart';
import 'package:init_test_task/domain/network_failure.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) {
    return AuthRepository(
      ref.read(apiClientProvider),
      ref.read(storageProvider),
    );
  },
);

class AuthRepository implements IAuthRepository {
  final ApiClient _apiClient;
  final IStorage _storage;

  AuthRepository(this._apiClient, this._storage);

  @override
  Future<Either<Failure, Unit>> signIn({
    required String email,
    required String password,
  }) async {
    final request = LogInRequest(
      email: email,
      password: password,
    );

    try {
      final result = await _apiClient.signIn(request);
      final signInResponse = UserResponse.fromJson(result.toJson());
      await _storage.storeTokenData(signInResponse);

      return right(unit);
    } on DioError catch (e) {
      switch (e.response?.statusCode) {
        case 404:
          {
            return left(const Failure.unauthorizedAccess());
          }

        case 401:
          {
            return left(const Failure.accountNotActivated());
          }
        default:
          break;
      }
      if (e.response?.statusCode == 404) {}
      return left(NetworkFailure.handleFailure(e));
    }
  }
}
