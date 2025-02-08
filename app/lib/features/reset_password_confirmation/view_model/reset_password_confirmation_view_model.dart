part of 'reset_password_confirmation.dart';

@Injectable()
class ResetPasswordConfirmationViewModel
    extends BaseViewModel<ResetPasswordConfirmationViewModelData> {
  final ResetPasswordUseCase _resetPasswordUseCase;
  ResetPasswordConfirmationViewModel(
    this._resetPasswordUseCase,
  ) : super(const ResetPasswordConfirmationViewModelData());

  void init({required String emailOrPhoneNumber}) {
    updateData(
      viewModelData.copyWith(
        emailOrPhoneNumber: emailOrPhoneNumber,
      ),
    );
  }

  void resetPassword() async {
    await runViewModelCatching(
      action: () async {
        if (viewModelData.newPassword != viewModelData.confirmPassword) {
          throw const ValidationException(
            ValidationExceptionKind.invalidConfirmationPassword,
          );
        }

        await _resetPasswordUseCase.execute(
          ResetPasswordInput(
            code: viewModelData.code,
            newPassword: viewModelData.newPassword,
            emailOrPhoneNumber: viewModelData.emailOrPhoneNumber,
          ),
        );

        await navigator.replaceAll(
          [
            const AppRouteInfo.login(),
          ],
        );
      },
    );
  }

  void onCodeChanged(String code) {
    updateData(
      viewModelData.copyWith(
        code: code,
        isInputValid: _isInputValid(
          code: code,
          newPassword: viewModelData.newPassword,
          confirmPassword: viewModelData.confirmPassword,
        ),
      ),
    );
  }

  void onNewPasswordChanged(String newPassword) {
    updateData(
      viewModelData.copyWith(
        newPassword: newPassword,
        isInputValid: _isInputValid(
          code: viewModelData.code,
          newPassword: newPassword,
          confirmPassword: viewModelData.confirmPassword,
        ),
      ),
    );
  }

  void onConfirmPasswordChanged(String confirmPassword) {
    updateData(
      viewModelData.copyWith(
        confirmPassword: confirmPassword,
        isInputValid: _isInputValid(
          code: viewModelData.code,
          newPassword: viewModelData.newPassword,
          confirmPassword: confirmPassword,
        ),
      ),
    );
  }

  void togglePasswordVisibility() {
    updateData(
      viewModelData.copyWith(
        isPasswordVisible: !viewModelData.isPasswordVisible,
      ),
    );
  }

  void toggleConfirmPasswordVisibility() {
    updateData(
      viewModelData.copyWith(
        isConfirmPasswordVisible: !viewModelData.isConfirmPasswordVisible,
      ),
    );
  }

  bool _isInputValid({
    required String code,
    required String newPassword,
    required String confirmPassword,
  }) {
    return code.isNotEmpty &&
        code.length == 4 &&
        newPassword.isNotEmpty &&
        confirmPassword.isNotEmpty;
  }
}
