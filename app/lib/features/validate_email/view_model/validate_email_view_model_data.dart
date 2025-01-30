part of 'validate_email.dart';

enum ValidationState {
  initial,
  receivedOtp,
  success,
}

@freezed
class ValidateEmailViewModelData extends BaseViewModelData
    with _$ValidateEmailViewModelData {
  const ValidateEmailViewModelData._();

  const factory ValidateEmailViewModelData({
    @Default('') String inputOtp,
    DateTime? resendOtpTime,
    Duration? durationTillResendOtp,
    DateTime? expiredOtpTime,
    @Default(ValidationState.initial) ValidationState validationState,
  }) = _ValidateEmailViewModelData;
}
