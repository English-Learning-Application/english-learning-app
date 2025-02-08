part of 'reset_password_confirmation.dart';

@freezed
class ResetPasswordConfirmationViewModelData extends BaseViewModelData
    with _$ResetPasswordConfirmationViewModelData {
  const factory ResetPasswordConfirmationViewModelData({
    @Default('') String emailOrPhoneNumber,
    @Default('') String code,
    @Default('') String newPassword,
    @Default('') String confirmPassword,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isConfirmPasswordVisible,
    @Default(false) bool isInputValid,
  }) = _ResetPasswordConfirmationViewModelData;
}
