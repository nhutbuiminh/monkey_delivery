import 'package:fluttour/environment/environment.dart';

extension DevelopmentEnvironment on Environment {
  static Environment development() {
    return Environment(
        baseUrl: 'http://127.0.0.1:3000/'
    );
  }
}