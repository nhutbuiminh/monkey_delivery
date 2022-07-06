// import 'package:fluttour/data/api/response/email.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  RegisterResponse(
    this.registerOVO
  );

  Email? registerOVO;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);
}

@JsonSerializable()
class Email {
  Email(
    this.email
  );

  String? email;

  factory Email.fromJson(Map<String, dynamic> json) =>
      _$EmailFromJson(json);
  Map<String, dynamic> toJson() => _$EmailToJson(this);
}