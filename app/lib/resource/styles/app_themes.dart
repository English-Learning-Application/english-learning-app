import 'package:logic/logic.dart';
import 'package:flutter/material.dart';

import '../../app.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  splashColor: Colors.transparent,
)..addAppColor(
    AppThemeType.light,
    AppColors.defaultAppColors,
  );

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  splashColor: Colors.transparent,
)..addAppColor(
    AppThemeType.dark,
    AppColors.darkThemeColors,
  );

extension ThemeDataExtensions on ThemeData {
  static final Map<AppThemeType, AppColors> _appColorMap = {};

  void addAppColor(AppThemeType appThemeType, AppColors appColors) {
    _appColorMap[appThemeType] = appColors;
  }

  AppColors get appColor =>
      _appColorMap[AppThemeSetting.currentAppThemeType] ??
      AppColors.defaultAppColors;
}

class AppThemeSetting {
  const AppThemeSetting._();

  static AppThemeType currentAppThemeType = AppThemeType.light;
}
