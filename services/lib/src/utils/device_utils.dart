import 'dart:io';

import 'package:android_id/android_id.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_udid/flutter_udid.dart';

import '../../services.dart';

class DeviceUtils {
  const DeviceUtils._();

  static Device deviceType = _getDeviceType();

  static Future<String> getDeviceId() async {
    if (Platform.isIOS) {
      return await FlutterUdid.udid;
    } else {
      final androidId = await const AndroidId().getId();

      return androidId ?? '';
    }
  }

  static Future<String> getDeviceModelName() async {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

    if (Platform.isAndroid) {
      final androidInfo = await deviceInfoPlugin.androidInfo;
      return '${androidInfo.brand} ${androidInfo.model}';
    } else {
      final iosInfo = await deviceInfoPlugin.iosInfo;
      return iosInfo.name;
    }
  }

  static Device _getDeviceType() {
    return MediaQueryData.fromView(
                    WidgetsBinding.instance.platformDispatcher.views.first)
                .size
                .shortestSide <
            DeviceConstants.maxMobileWidthForDeviceType
        ? Device.mobile
        : Device.tablet;
  }
}
