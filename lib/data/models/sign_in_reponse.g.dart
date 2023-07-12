// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInResponse _$SignInResponseFromJson(Map<String, dynamic> json) =>
    SignInResponse(
      json['token'] as String,
      UserResponse.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignInResponseToJson(SignInResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };
