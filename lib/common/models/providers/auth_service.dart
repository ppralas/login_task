import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:init_test_task/common/models/i_auth_service.dart';
import 'package:init_test_task/common/models/not_authenticated.dart';
import 'package:init_test_task/data/network/storage.dart';
import 'package:init_test_task/data/storage/storage.dart';

final authServiceProvider = Provider<IAuthService>(
  (ref) => AuthService(
    ref.read(storageProvider),
  ),
);

class AuthService implements IAuthService {
  final IStorage _storage;

  AuthService(this._storage);

  @override
  Future<void> signOut() async {
    await _storage.removeUserData();
  }

  @override
  Future<Either<NotAuthenticated, Unit>> isAuthenticated() async {
    final token = await _storage.getToken();

    if (token != null) {
      // Return Right(Unit) when the token is available
      return right(unit);
    } else {
      return left(NotAuthenticated(isAuthenticated: false));
    }
  }
}
