part of 'validate_phone_number.dart';

@Injectable()
class ValidatePhoneNumberViewModel
    extends BaseViewModel<ValidatePhoneNumberViewModelData> {
  final SendPhoneVerificationUseCase _sendPhoneVerificationUseCase;
  final VerifyPhoneOtpUseCase _verifyPhoneOtpUseCase;
  ValidatePhoneNumberViewModel(
    this._sendPhoneVerificationUseCase,
    this._verifyPhoneOtpUseCase,
  ) : super(const ValidatePhoneNumberViewModelData());

  Future<void> sendOtp() async {
    await runViewModelCatching(
      action: () async {
        final input = SendPhoneVerificationInput(
          phoneNumber: viewModelData.inputPhoneNumber,
        );
        await _sendPhoneVerificationUseCase.execute(input);
        updateData(
          viewModelData.copyWith(
            durationUntilResendOtp: const Duration(seconds: 60),
            resendOtpTime: DateTime.now().add(const Duration(seconds: 60)),
            validationState: PhoneValidationState.receivedOtp,
          ),
        );
      },
    );
  }

  Future<void> verifyOtp() async {
    await runViewModelCatching(
      action: () async {
        final input = VerifyPhoneOtpInput(
          otp: viewModelData.inputOtp,
        );
        await _verifyPhoneOtpUseCase.execute(input);
        updateData(
          viewModelData.copyWith(
            validationState: PhoneValidationState.success,
          ),
        );
        await appViewModel.appRefreshUser(false);
      },
    );
  }

  void updateDurationUntilResendOtp(Duration duration) {
    if (duration == Duration.zero) {
      updateData(
        viewModelData.copyWith(
          durationUntilResendOtp: null,
          resendOtpTime: null,
        ),
      );
      return;
    }
    updateData(
      viewModelData.copyWith(
        durationUntilResendOtp: duration,
      ),
    );
  }

  void updateInputOtp(String otp) {
    updateData(viewModelData.copyWith(inputOtp: otp));
  }

  void onPhoneNumberChanged(String phoneNumber) {
    updateData(
      viewModelData.copyWith(inputPhoneNumber: phoneNumber),
    );
  }
}
