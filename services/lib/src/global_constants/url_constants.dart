import '../../services.dart';

class UrlConstants {
  const UrlConstants._();
  static const String randomUserBaseUrl = 'https://randomuser.me/api/';

  static String get appApiBaseUrl {
    return switch (EnvConstants.flavor) {
      Flavor.develop => 'http://192.168.1.7:8080/api/v1',
      Flavor.production => 'http://192.168.1.7:8080/api/v1',
    };
  }
}
