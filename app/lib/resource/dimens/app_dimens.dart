import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:services/services.dart';

class AppDimens {
  AppDimens._({
    required this.screenWidth,
    required this.screenHeight,
    required this.devicePixelRatio,
    required this.screenType,
  });
  static late AppDimens current;

  final double screenWidth;
  final double screenHeight;
  final double devicePixelRatio;
  final ScreenType screenType;

  static AppDimens of(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    final double screenWidth = mediaQuery.size.width;
    final double screenHeight = mediaQuery.size.height;
    final double devicePixelRatio = mediaQuery.devicePixelRatio;

    final screen = AppDimens._(
      devicePixelRatio: devicePixelRatio,
      screenHeight: screenHeight,
      screenWidth: screenWidth,
      screenType: _getScreenType(screenWidth),
    );

    current = screen;
    return current;
  }

  double responsiveDimens({
    required double mobileDimens,
    double? tablet,
    double? ultraTablet,
  }) {
    switch (screenType) {
      case ScreenType.mobile:
        return mobileDimens.w;
      case ScreenType.tablet:
        return tablet?.w ??
            ((mobileDimens * DeviceConstants.maxMobileWidth) /
                DeviceConstants.designDeviceWidth);
      case ScreenType.ultraTablet:
        return ultraTablet?.w ??
            ((mobileDimens * DeviceConstants.maxMobileWidth) /
                DeviceConstants.designDeviceWidth);
    }
  }

  int responsiveIntValue({
    required int mobile,
    int? tablet,
    int? ultraTablet,
  }) {
    switch (screenType) {
      case ScreenType.mobile:
        return mobile;
      case ScreenType.tablet:
        return tablet ?? mobile;
      case ScreenType.ultraTablet:
        return ultraTablet ?? mobile;
    }
  }

  static ScreenType _getScreenType(double screenWidth) {
    if (screenWidth < DeviceConstants.maxMobileWidth) {
      return ScreenType.mobile;
    } else if (screenWidth < DeviceConstants.maxTabletWidth) {
      return ScreenType.tablet;
    } else {
      return ScreenType.ultraTablet;
    }
  }
}

extension ResponsiveDoubleExtension on double {
  double responsive({
    double? tablet,
    double? ultraTablet,
  }) {
    return AppDimens.current.responsiveDimens(
      mobileDimens: this,
      tablet: tablet,
      ultraTablet: ultraTablet,
    );
  }
}

enum ScreenType {
  mobile,
  tablet,
  ultraTablet,
}
