import 'package:design/design.dart';
import 'package:flutter/material.dart%20';
import 'package:flutter/services.dart';

class UIConstants {
  const UIConstants._();

  static const shimmerItemCount = 20;

  static const materialAppTitle = 'Fluentify';

  static const appIconHeroTag = 'appIconHeroTag';

  static const taskMenuMaterialAppColor = FoundationColors.primary50;

  static const mobileOrientation = [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ];

  static const tabletOrientation = [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ];

  static const systemUIOverlay = SystemUiOverlayStyle(
    systemNavigationBarContrastEnforced: false,
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
  );

  static const textFieldTextStyleHeight = 1.3;
}
