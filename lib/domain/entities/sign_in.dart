import 'package:equatable/equatable.dart';
import 'package:init_test_task/data/models/user_response.dart';

class SignIn extends Equatable {
  final String token;
  final UserResponse user;

  const SignIn({
    required this.token,
    required this.user,
  });

  factory SignIn.fromJson(Map<String, dynamic> json) => SignIn(
        token: json['token'],
        user: json['user'],
      );

  Map<String, dynamic> toJson() => {
        'token': token,
        'user': user,
      };

  @override
  List<Object> get props => [token, user];

  @override
  String toString() {
    return toJson().toString();
  }
}
