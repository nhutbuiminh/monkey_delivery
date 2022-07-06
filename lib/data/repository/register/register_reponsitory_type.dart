import 'package:dartz/dartz.dart';
import 'package:fluttour/data/api/api_client/error/error.dart';
import 'package:fluttour/data/api/request/register_request.dart';
import 'package:fluttour/data/api/response/register_response.dart';

abstract class RegisterRepositoryType {
  Future<Either<Failure, RegisterResponse>> doRegister(RegisterRequest request);
}