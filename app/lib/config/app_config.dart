import 'package:initializer/initializer.dart';
import 'package:services/services.dart';

import '../di/di.dart';
import '../app.dart';

class AppConfig extends ApplicationConfig {
  static final AppConfig _instance = AppConfig._();

  AppConfig._();

  factory AppConfig.getInstance() => _instance;

  @override
  Future<void> config() async {
    configureInjection();
    await ViewUtils.setPreferredOrientations(
      DeviceUtils.deviceType == Device.mobile
          ? UIConstants.mobileOrientation
          : UIConstants.tabletOrientation,
    );
    ViewUtils.setSystemUIOverlayStyle(UIConstants.systemUIOverlay);
    await LocalPushNotificationService.init();
    await RemotePushNotificationService.init();
  }
}
