part of 'login.dart';

enum LoginMode { none, login, register }

@freezed
class LoginViewModelData extends BaseViewModelData with _$LoginViewModelData {
  const LoginViewModelData._();
  const factory LoginViewModelData({
    @Default('') String phoneNumber,
    @Default(LoginMode.none) LoginMode loginMode,
    @Default(false) bool isShowPassword,
  }) = _LoginViewModelData;
}
