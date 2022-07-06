import 'package:fluttour/data/api/request/register_request.dart';
import 'package:fluttour/data/api/response/register_response.dart';

abstract class RegisterDataSourceType {
  Future<RegisterResponse> doRegister({required RegisterRequest request});
}