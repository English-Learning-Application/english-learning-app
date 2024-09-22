import 'package:design/design.dart';
import 'package:flutter/material.dart';

import '../../app.dart';

class AppColors {
  const AppColors({
    required this.backgroundColor,
    required this.primaryColor,
    required this.secondaryColor,
    required this.primaryTextColor,
    required this.secondaryTextColor,
  });

  static late AppColors current;

  final Color backgroundColor;
  final Color primaryColor;
  final Color secondaryColor;
  final Color primaryTextColor;
  final Color secondaryTextColor;

  static const AppColors defaultAppColors = AppColors(
    backgroundColor: FoundationColors.neutral50,
    primaryColor: FoundationColors.accent500,
    secondaryColor: FoundationColors.accent200,
    primaryTextColor: FoundationColors.secondary500,
    secondaryTextColor: FoundationColors.neutral50,
  );

  static const AppColors darkThemeColors = AppColors(
    backgroundColor: FoundationColors.success900,
    primaryColor: Color(0xff1A3636),
    secondaryColor: Color(0xff40534C),
    primaryTextColor: Color(0xffffffff),
    secondaryTextColor: Color(0xff50B498),
  );

  static AppColors of(BuildContext context) {
    final appColor = Theme.of(context).appColor;

    current = appColor;

    return appColor;
  }

  AppColors copyWith({
    Color? backgroundColor,
    Color? primaryColor,
    Color? secondaryColor,
    Color? primaryTextColor,
    Color? secondaryTextColor,
    LinearGradient? primaryGradient,
  }) {
    return AppColors(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      primaryTextColor: primaryTextColor ?? this.primaryTextColor,
      secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
    );
  }
}
