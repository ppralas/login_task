import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<dynamic, dynamic>> signIn({
    required String email,
    required String password,
  });
}
