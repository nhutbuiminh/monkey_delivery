import 'package:fluttour/data/api/api_client/api_client_type.dart';
import 'package:fluttour/data/api/request/register_request.dart';
import 'package:fluttour/data/api/response/register_response.dart';
import 'package:fluttour/data/datasource/register/register_datasource_type.dart';


class RegisterDataSource implements RegisterDataSourceType {
  RegisterDataSource({required this.apiClient});

  final APIClientType apiClient;

  @override
  Future<RegisterResponse> doRegister({required RegisterRequest request}) async {
    return await apiClient.register(request: request);
  }
}