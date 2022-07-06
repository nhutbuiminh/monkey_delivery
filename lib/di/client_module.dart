import 'package:fluttour/data/api/api_client/api_client.dart';
import 'package:fluttour/data/api/api_client/api_client_type.dart';
import 'package:fluttour/di/config_module.dart';

mixin ClientModule on ConfigModule {

  String versionApi =  "api/v1";

  /// API Client
  APIClientType get apiClient {
    return APIClient.apiClient(
        baseDomain: appConfig.baseDomain + versionApi,
        authToken: appSecureConfig.authToken
    );
  }
}