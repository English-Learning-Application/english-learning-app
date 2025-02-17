part of 'validate_email.dart';

@Injectable()
class ValidateEmailViewModel extends BaseViewModel<ValidateEmailViewModelData> {
  final SendEmailVerificationUseCase _sendEmailVerificationUseCase;
  final VerifyEmailOtpUseCase _verifyEmailOtpUseCase;
  ValidateEmailViewModel(
    this._sendEmailVerificationUseCase,
    this._verifyEmailOtpUseCase,
  ) : super(const ValidateEmailViewModelData());

  void init() async {
    await runViewModelCatching(
      action: () async {
        await appViewModel.appRefreshUser(false);
      },
    );
  }

  Future<void> sendEmailVerification() async {
    await runViewModelCatching(
      action: () async {
        await _sendEmailVerificationUseCase.buildUseCase(
          const SendEmailVerificationInput(),
        );
        updateData(
          viewModelData.copyWith(
            validationState: ValidationState.receivedOtp,
            resendOtpTime: DateTime.now().add(const Duration(minutes: 1)),
            durationTillResendOtp: const Duration(minutes: 1),
            expiredOtpTime: DateTime.now().add(const Duration(minutes: 5)),
          ),
        );
      },
    );
  }

  void updateDuration(Duration duration) {
    if (duration == Duration.zero) {
      updateData(
        viewModelData.copyWith(
          durationTillResendOtp: null,
          resendOtpTime: null,
        ),
      );
      return;
    }
    updateData(
      viewModelData.copyWith(
        durationTillResendOtp: duration,
      ),
    );
  }

  Future<void> verifyEmailOtp() async {
    await runViewModelCatching(
      action: () async {
        await _verifyEmailOtpUseCase.buildUseCase(
          VerifyEmailOtpInput(otp: viewModelData.inputOtp),
        );
        await appViewModel.appRefreshUser(true);
      },
    );
  }

  void updateInputOtp(String otp) {
    updateData(viewModelData.copyWith(inputOtp: otp));
  }
}
