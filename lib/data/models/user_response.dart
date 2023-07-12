import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  final int id;
  final String email;
  final String firstName;
  final String lastName;

  UserResponse(
    this.id,
    this.email,
    this.firstName,
    this.lastName,
  );

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
