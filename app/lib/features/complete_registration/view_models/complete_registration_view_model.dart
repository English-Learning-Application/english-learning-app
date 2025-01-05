part of 'complete_registration.dart';

@Injectable()
class CompleteRegistrationViewModel
    extends BaseViewModel<CompleteRegistrationViewModelData> {
  final RegistrationCompletionUseCase _completeRegistrationUseCase;
  CompleteRegistrationViewModel(
    this._completeRegistrationUseCase,
  ) : super(const CompleteRegistrationViewModelData());

  void onLanguageSelected(LearningLanguage learningLanguage) {
    updateData(
      viewModelData.copyWith(selectedLearningLanguage: learningLanguage),
    );
  }

  void onNativeLanguageSelected(LearningLanguage learningLanguage) {
    updateData(
      viewModelData.copyWith(selectedNativeLanguage: learningLanguage),
    );
  }

  Future<void> onConfirmSelection() async {
    if (viewModelData.selectedLearningTypes.isEmpty) {
      navigator.showDialog(
        AppPopupInfo.confirmDialog(
          message: S.current.pleaseChooseAtLeast1LearningMode,
        ),
      );
      return;
    }

    final input = RegistrationCompletionInput(
      learningLanguage: viewModelData.selectedLearningLanguage,
      nativeLanguage: viewModelData.selectedNativeLanguage,
      learningModes: viewModelData.selectedLearningTypes,
    );

    await runViewModelCatching(
      action: () async {
        await _completeRegistrationUseCase.execute(input);
        await navigator.replaceAll(
          [
            const AppRouteInfo.main(),
          ],
        );
      },
    );
  }

  void onLearningTypeSelected(LearningType learningType) {
    final selectedLearningTypes = [...viewModelData.selectedLearningTypes];

    if (selectedLearningTypes.contains(learningType)) {
      selectedLearningTypes.remove(learningType);
    } else {
      if (selectedLearningTypes.length >= 3) {
        navigator.showDialog(
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
}
