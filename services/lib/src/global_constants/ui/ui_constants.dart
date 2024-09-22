import 'package:flutter/services.dart';

class UIConstants {
  const UIConstants._();

  static const shimmerItemCount = 20;

  static const materialAppTitle = 'MochiMalls';

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
    statusBarColor: Color(0xff50B498),
  );

  static const textFieldTextStyleHeight = 1.3;
}
