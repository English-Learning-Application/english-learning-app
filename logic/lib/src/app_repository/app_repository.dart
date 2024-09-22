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

  Future<bool> saveLanguageCode(LanguageCode languageCode);

  User getUserPreference();

  void clearCurrentUserData();
}
