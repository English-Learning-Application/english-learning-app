import '../../services.dart';

class UrlConstants {
  const UrlConstants._();
  static const String randomUserBaseUrl = 'https://randomuser.me/api/';

  static String get appApiBaseUrl {
    return switch (EnvConstants.flavor) {
      Flavor.develop => 'http://192.168.68.98:3000/api',
      Flavor.production => 'http://192.168.68.98:3000/api',
    };
  }
}
