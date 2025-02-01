part of 'app.dart';

@freezed
class AppViewModelData extends BaseViewModelData with _$AppViewModelData {
  const AppViewModelData._();
  const factory AppViewModelData({
    @Default(User.empty) User currentUser,
    @Default(LanguageCode.defaultValue) LanguageCode languageCode,
    @Default(false) bool isLoggedIn,
    @Default(AppThemeType.system) AppThemeType appTheme,
    @Default(Subscription()) Subscription subscription,
  }) = _AppViewModelData;
}
