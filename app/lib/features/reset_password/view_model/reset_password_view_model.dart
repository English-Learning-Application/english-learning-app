part of 'reset_password.dart';

@Injectable()
class ResetPasswordViewModel extends BaseViewModel<ResetPasswordViewModelData> {
  final ResetPasswordRequestUseCase _resetPasswordRequestUseCase;
  ResetPasswordViewModel(
    this._resetPasswordRequestUseCase,
  ) : super(const ResetPasswordViewModelData());

  void onInputChanged(String input) {
    updateData(
      viewModelData.copyWith(
        input: input,
        isInputValid: _isValidInput(input),
      ),
    );
  }

  Future<void> resetPassword() async {
    await runViewModelCatching(
      action: () async {
        await _resetPasswordRequestUseCase.buildUseCase(
          ResetPasswordRequestInput(emailOrPhoneNumber: viewModelData.input),
        );
        await navigator.push(
          AppRouteInfo.resetPasswordConfirm(
            emailOrPhoneNumber: viewModelData.input,
          ),
        );
      },
    );
  }

  bool _isValidInput(String input) {
    return ValidationUtils.isValidEmail(input) ||
        ValidationUtils.isValidPhoneNumber(input);
  }
}
