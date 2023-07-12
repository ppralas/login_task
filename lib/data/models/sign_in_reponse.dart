import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_response.dart';

part 'sign_in_reponse.g.dart';

@JsonSerializable()
class SignInResponse {
  final String token;
  final UserResponse user;

  SignInResponse(
    this.token,
    this.user,
  );

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignInResponseToJson(this);
}
