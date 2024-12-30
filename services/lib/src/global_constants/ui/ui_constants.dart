import 'package:flutter/services.dart';
import 'package:design/design.dart';

class UIConstants {
  const UIConstants._();

  static const shimmerItemCount = 20;

  static const materialAppTitle = 'Fluentify';

  static const taskMenuMaterialAppColor = Color(0xff50B498);

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
    statusBarBrightness: Brightness.light,
    statusBarColor: FoundationColors.primary100,
  );

  static const textFieldTextStyleHeight = 1.3;
}
