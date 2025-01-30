part of 'validate_phone_number.dart';

enum PhoneValidationState {
  initial,
  receivedOtp,
  success,
}

@freezed
class ValidatePhoneNumberViewModelData extends BaseViewModelData
    with _$ValidatePhoneNumberViewModelData {
  const ValidatePhoneNumberViewModelData._();

  const factory ValidatePhoneNumberViewModelData({
    @Default('') String inputPhoneNumber,
    @Default('') String inputOtp,
    Duration? durationUntilResendOtp,
    DateTime? resendOtpTime,
    @Default(PhoneValidationState.initial) PhoneValidationState validationState,
  }) = _ValidatePhoneNumberViewModelData;
}
