part of 'login.dart';

@freezed
class LoginViewModelData extends BaseViewModelData with _$LoginViewModelData {
  const LoginViewModelData._();
  const factory LoginViewModelData({
    @Default('') String phoneNumber,
  }) = _LoginViewModelData;
}
