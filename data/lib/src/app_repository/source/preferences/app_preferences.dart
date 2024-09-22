import 'dart:convert';

import 'package:encrypted_shared_preferences/encrypted_shared_preferences.dart';
import 'package:injectable/injectable.dart';
import 'package:services/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../data.dart';

@LazySingleton()
class AppPreferences with LogMixin {
  AppPreferences(
    this._sharedPreferences,
  ) : _encryptedSharedPreferences = EncryptedSharedPreferences(
          prefs: _sharedPreferences,
        );

  final SharedPreferences _sharedPreferences;
  final EncryptedSharedPreferences _encryptedSharedPreferences;

  String get appTheme =>
      _sharedPreferences.getString(SharedPreferencesKeys.appThemeMode) ?? '';

  String get languageCode =>
      _sharedPreferences.getString(SharedPreferencesKeys.languageCode) ?? '';

  String get deviceToken =>
      _sharedPreferences.getString(SharedPreferencesKeys.deviceToken) ?? '';

  bool get isFirstLogin =>
      _sharedPreferences.getBool(SharedPreferencesKeys.isFirstLogin) ?? true;

  bool get isFirstLaunchApp =>
      _sharedPreferences.getBool(SharedPreferencesKeys.isFirstLaunchApp) ??
      true;

  Future<String> get accessToken async => await _encryptedSharedPreferences
      .getString(SharedPreferencesKeys.accessToken);

  Future<String> get refreshToken async => await _encryptedSharedPreferences
      .getString(SharedPreferencesKeys.refreshToken);

  bool get isLoggedIn =>
      (_sharedPreferences.getString(SharedPreferencesKeys.accessToken) ?? '')
          .isNotEmpty;

  ApiUserData? get currentUser {
    final userJson =
        _sharedPreferences.getString(SharedPreferencesKeys.currentUser);
    if (userJson == null) {
      return null;
    }
    return ApiUserData.fromJson(
      json.decode(userJson),
    );
  }

  Future<bool> saveAppTheme(String appTheme) async {
    return await _sharedPreferences.setString(
      SharedPreferencesKeys.appThemeMode,
      appTheme,
    );
  }

  Future<bool> saveLanguageCode(String languageCode) async {
    return await _sharedPreferences.setString(
      SharedPreferencesKeys.languageCode,
      languageCode,
    );
  }

  Future<bool> saveDeviceToken(String deviceToken) async {
    return await _sharedPreferences.setString(
      SharedPreferencesKeys.deviceToken,
      deviceToken,
    );
  }

  Future<bool> saveIsFirstLogin(bool isFirstLogin) async {
    return await _sharedPreferences.setBool(
      SharedPreferencesKeys.isFirstLogin,
      isFirstLogin,
    );
  }

  Future<bool> saveIsFirstLaunchApp(bool isFirstLaunchApp) async {
    return await _sharedPreferences.setBool(
      SharedPreferencesKeys.isFirstLaunchApp,
      isFirstLaunchApp,
    );
  }

  Future<bool> saveCurrentUser(ApiUserData user) async {
    return await _sharedPreferences.setString(
      SharedPreferencesKeys.currentUser,
      json.encode(user),
    );
  }

  Future<void> saveRefreshToken(String refreshToken) async {
    await _encryptedSharedPreferences.setString(
      SharedPreferencesKeys.refreshToken,
      refreshToken,
    );
  }

  Future<void> saveAccessToken(String accessToken) async {
    await _encryptedSharedPreferences.setString(
      SharedPreferencesKeys.accessToken,
      accessToken,
    );
  }

  Future<void> clearCurrentUserData() async {
    await Future.wait(
      [
        _sharedPreferences.remove(SharedPreferencesKeys.currentUser),
        _sharedPreferences.remove(SharedPreferencesKeys.accessToken),
        _sharedPreferences.remove(SharedPreferencesKeys.refreshToken),
      ],
    );
  }
}
