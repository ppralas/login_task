import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:init_test_task/common/dependency_registration.dart';
import 'package:init_test_task/data/models/log_in_request.dart';
import 'package:retrofit/retrofit.dart';
import 'package:init_test_task/data/models/user_response.dart';

part 'api_client.g.dart';

final apiClientProvider = Provider<ApiClient>(
  (ref) => ApiClient(ref.read(dioProvider)),
);

@RestApi(baseUrl: 'https://api.getcountapp.com/api/v1')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST('/authenticate')
  Future<UserResponse> signIn(@Body() LogInRequest request);

  @GET('/users/me')
  Future<UserResponse> getUser();
}

class Config {
  static String bearerToken =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1laWQiOiIxIiwiZ3JvdXBzaWQiOiIxIiwiZW1haWwiOiJqb2huQGRvZS5jb20iLCJyb2xlIjoiYWRtaW4iLCJuYmYiOjE2ODg2NDUwODQsImV4cCI6MTcyMDE4MTA4NCwiaWF0IjoxNjg4NjQ1MDg0fQ.i2VQ2Fyao6PwLkK_cYC7PqJyC-pJl7DjRTbOG5PG5CQ';
  static const String authenticationUrl =
      'https://api.getcountapp.com/api/v1/authenticate';
}
