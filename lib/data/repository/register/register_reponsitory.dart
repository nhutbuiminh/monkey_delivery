import 'package:dartz/dartz.dart';
import 'package:fluttour/data/api/api_client/error/error.dart';
import 'package:fluttour/data/api/request/register_request.dart';
import 'package:fluttour/data/api/response/register_response.dart';
import 'package:fluttour/data/datasource/register/register_datasource_type.dart';
import 'package:fluttour/data/repository/register/register_reponsitory_type.dart';
import 'package:fluttour/util/app_mixin.dart';

class RegisterRepository with ConnectivityMixin implements RegisterRepositoryType {

  RegisterRepository({required this.dataSource});

  final RegisterDataSourceType dataSource;

  @override
  Future<Either<Failure, RegisterResponse>> doRegister(RegisterRequest request) async {
    if (await isInConnection()) {
      try {
        final response = await dataSource.doRegister(request: request);
        return Right(response);
      } catch (e) {
        return Left(Failure(e.toString()));
      }
    }
    return const Left(NoConnection());
  }
}