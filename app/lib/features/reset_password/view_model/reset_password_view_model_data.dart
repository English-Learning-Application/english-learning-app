part of 'reset_password.dart';

@freezed
class ResetPasswordViewModelData extends BaseViewModelData
    with _$ResetPasswordViewModelData {
  const factory ResetPasswordViewModelData({
    @Default('') String input,
    @Default(false) bool isInputValid,
  }) = _ResetPasswordViewModelData;
}
