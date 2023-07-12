import 'package:init_test_task/data/models/user_response.dart';

class Response {
  String? token;
  UserResponse? user;

  Response({
    this.token,
    this.user,
  });

  Response.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    user = json['user'] != null ? UserResponse.fromJson(json['user']) : null;
  }
}
