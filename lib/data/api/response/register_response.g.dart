// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      json['registerOVO'] == null
          ? null
          : Email.fromJson(json['registerOVO'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'registerOVO': instance.registerOVO,
    };

Email _$EmailFromJson(Map<String, dynamic> json) => Email(
      json['email'] as String?,
    );

Map<String, dynamic> _$EmailToJson(Email instance) => <String, dynamic>{
      'email': instance.email,
    };
