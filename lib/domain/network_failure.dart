// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';
import 'package:init_test_task/common/domain/failure.dart';

class NetworkFailure {
  static Failure handleFailure(DioError e) {
    switch (e.response?.statusCode) {
      case 500:
        return const Failure.serverError();
      case 403:
        return const Failure.forbidden();
      case 401:
        return const Failure.unauthorizedAccess();
      default:
        return const Failure.unexpectedDataError();
    }
  }
}
