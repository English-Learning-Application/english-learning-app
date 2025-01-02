import '../../services.dart';

class UrlConstants {
  const UrlConstants._();
  static const String randomUserBaseUrl = 'https://randomuser.me/api/';

  static String get appApiBaseUrl {
    return switch (EnvConstants.flavor) {
      Flavor.develop => 'http://10.0.2.2:8080/api/v1',
      Flavor.production => 'http://10.0.2.2:8080/api/v1',
    };
  }
}
