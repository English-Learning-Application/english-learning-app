import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../services.dart';

@Injectable()
class AppInfo {
  PackageInfo? _packageInfo;

  String get appName => _packageInfo?.appName ?? '';

  String get applicationId => _packageInfo?.packageName ?? '';

  String get versionCode => _packageInfo?.buildNumber ?? '';

  String get versionName => _packageInfo?.version ?? '';

  Future<String> get deviceId async => DeviceUtils.getDeviceId();

  Future<void> init() async {
    _packageInfo = await PackageInfo.fromPlatform();
    LogUtils.d(DeviceUtils.getDeviceId());
    LogUtils.d(_packageInfo!.appName, name: 'APP_NAME');
    LogUtils.d(_packageInfo!.packageName, name: 'APPLICATION_ID');
    LogUtils.d(_packageInfo!.version, name: 'VERSION_NAME');
    LogUtils.d(_packageInfo!.buildNumber, name: 'VERSION_CODE');
  }
}
