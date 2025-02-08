part of 'profile.dart';

@Injectable()
class ProfileViewModel extends BaseViewModel<ProfileViewModelData> {
  final UpdateUserPasswordUseCase _updateUserPasswordUseCase;

  ProfileViewModel(
    this._updateUserPasswordUseCase,
  ) : super(const ProfileViewModelData());

  void updatePassword({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    await runViewModelCatching(
      action: () async {
        if (newPassword != confirmPassword) {
          throw const ValidationException(
            ValidationExceptionKind.invalidConfirmationPassword,
          );
        }

        await _updateUserPasswordUseCase.execute(
          UpdateUserPasswordInput(
            oldPassword: oldPassword,
            newPassword: newPassword,
          ),
        );

        navigator.pop();
      },
    );
  }

  void toggleShowOldPassword() {
    updateData(viewModelData.copyWith(
        showOldPassword: !viewModelData.showOldPassword));
  }

  void toggleShowNewPassword() {
    updateData(viewModelData.copyWith(
        showNewPassword: !viewModelData.showNewPassword));
  }

  void toggleShowConfirmPassword() {
    updateData(viewModelData.copyWith(
        showConfirmPassword: !viewModelData.showConfirmPassword));
  }
}
