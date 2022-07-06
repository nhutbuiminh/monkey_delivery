import 'package:dartz/dartz.dart';
import 'package:fluttour/data/api/api_client/error/error.dart';
import 'package:fluttour/data/api/response/register_response.dart';
import 'package:fluttour/data/repository/register/register_reponsitory_type.dart';
import 'package:fluttour/domain/usecase/register/register_usecase_type.dart';

class RegisterUseCase implements RegisterUseCaseType {

  RegisterUseCase({required this.repository});

  final RegisterRepositoryType repository;

  @override
  Future<Either<Failure, RegisterResponse>> doRegister(request) async {
    final result = await repository.doRegister(request);
    // no needed translator
    return result;
  }

}