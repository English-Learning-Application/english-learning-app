part of 'edit_profile.dart';

@Injectable()
class EditProfileViewModel extends BaseViewModel<EditProfileViewModelData> {
  final UpdateUserProfileUseCase _updateUserProfileUseCase;
  EditProfileViewModel(
    this._updateUserProfileUseCase,
  ) : super(const EditProfileViewModelData());

  void onInit() {
    final user = appViewModel.viewModelData.currentUser;
    final userProfile = user.userProfile;
    updateData(
      viewModelData.copyWith(
        inputUsername: user.username,
        selectedNativeLanguage: userProfile.nativeLanguage,
        selectedLearningTypes: [
          if (userProfile.learningTypeOne != null) userProfile.learningTypeOne!,
          if (userProfile.learningTypeTwo != null) userProfile.learningTypeTwo!,
          if (userProfile.learningTypeThree != null)
            userProfile.learningTypeThree!,
        ],
        selectedLearningLanguage: userProfile.learningLanguage,
      ),
    );
  }

  void onUsernameChanged(String username) {
    updateData(
      viewModelData.copyWith(
        inputUsername: username,
      ),
    );
  }

  void onNativeLanguageSelected(LearningLanguage language) {
    updateData(
      viewModelData.copyWith(
        selectedNativeLanguage: language,
      ),
    );
  }

  void onLearningLanguageSelected(LearningLanguage language) {
    updateData(
      viewModelData.copyWith(
        selectedLearningLanguage: language,
      ),
    );
  }

  void onLearningTypeSelected(LearningType learningType) async {
    final selectedLearningTypes = [...viewModelData.selectedLearningTypes];

    if (selectedLearningTypes.contains(learningType)) {
      selectedLearningTypes.remove(learningType);
    } else {
      if (selectedLearningTypes.length >= 3) {
        await navigator.showDialog(
          AppPopupInfo.confirmDialog(
            message: S.current.canChooseUpTo3LearningModes,
          ),
        );
        return;
      }
      selectedLearningTypes.add(learningType);
    }

    updateData(
      viewModelData.copyWith(selectedLearningTypes: selectedLearningTypes),
    );
  }

  Future<void> updateUserProfile() async {
    await runViewModelCatching(
      action: () async {
        await _updateUserProfileUseCase.execute(
          UpdateUserProfileInput(
            username: viewModelData.inputUsername,
            nativeLanguage: viewModelData.selectedNativeLanguage,
            learningLanguage: viewModelData.selectedLearningLanguage,
            learningModes: viewModelData.selectedLearningTypes,
          ),
        );

        await appViewModel.appRefreshUser(false);

         navigator.popUntilRootOfCurrentBottomTab();
      },
    );
  }
}
