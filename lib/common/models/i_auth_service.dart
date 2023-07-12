import 'package:dartz/dartz.dart';
import 'package:init_test_task/common/models/not_authenticated.dart';

abstract class IAuthService {
  Future<void> signOut();
  Future<Either<NotAuthenticated, Unit>> isAuthenticated();
}
