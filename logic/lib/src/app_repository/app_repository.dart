import 'dart:io';

import '../../logic.dart';

abstract class AppRepository {
  bool get isLoggedIn;

  AppThemeType get appTheme;

  LanguageCode get languageCode;

  Stream<bool> get onConnectivityChanged;

  Future<PagedList<RandomUser>> getUsers({
    required int page,
    required int? limit,
  });

  Future<bool> saveAppTheme(AppThemeType isDarkMode);

  Future<bool> isFirstLaunchApp();

  Future<bool> saveLanguageCode(LanguageCode languageCode);

  User getUserPreference();

  Future<PagedList<File>> getImagesPaged(int page);

  void clearCurrentUserData();
}
