import '../../services.dart';

class UrlConstants {
  const UrlConstants._();
  static const String randomUserBaseUrl = 'https://randomuser.me/api/';

  static String get appApiBaseUrl {
    return switch (EnvConstants.flavor) {
      Flavor.develop =>
        'http://k8s-default-appingre-c4549af8b6-365889156.ap-southeast-2.elb.amazonaws.com/api/v1',
      Flavor.production =>
        'http://k8s-default-appingre-c4549af8b6-365889156.ap-southeast-2.elb.amazonaws.com/api/v1',
    };
  }

  static String get appMediaBaseUrl {
    return 'https://english-learning-bucket.s3.ap-southeast-2.amazonaws.com';
  }

  static String get appBaseUrlSocket {
    return switch (EnvConstants.flavor) {
      Flavor.develop =>
        'http://k8s-default-appingre-c4549af8b6-365889156.ap-southeast-2.elb.amazonaws.com/ws',
      Flavor.production =>
        'http://k8s-default-appingre-c4549af8b6-365889156.ap-southeast-2.elb.amazonaws.com/ws',
    };
  }
}
