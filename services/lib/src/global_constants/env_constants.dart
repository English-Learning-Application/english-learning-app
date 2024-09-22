import '../../services.dart';

class EnvConstants {
  const EnvConstants._();

  static const String flavorKey = 'FLAVOR';
  static const String appBasicAuthNameKey = 'APP_BASIC_AUTH_NAME';
  static const String appBasicAuthPasswordKey = 'APP_BASIC_AUTH_PASSWORD';

  static Flavor flavor = Flavor.values.byName(
    const String.fromEnvironment(
      flavorKey,
      defaultValue: 'develop',
    ),
  );
  static String appBasicAuthName =
      const String.fromEnvironment(appBasicAuthNameKey);
  static String appBasicAuthPassword =
      const String.fromEnvironment(appBasicAuthPasswordKey);

  static void init() {
    LogUtils.d(flavor, name: flavorKey);
    LogUtils.d(appBasicAuthName, name: appBasicAuthNameKey);
    LogUtils.d(appBasicAuthPassword, name: appBasicAuthPasswordKey);
  }
}
