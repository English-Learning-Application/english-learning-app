part of 'complete_registration.dart';

@freezed
class CompleteRegistrationViewModelData extends BaseViewModelData
    with _$CompleteRegistrationViewModelData {
  const factory CompleteRegistrationViewModelData({
    @Default([]) List<LearningType> selectedLearningTypes,
    @Default(LearningLanguage.vietnamese)
    LearningLanguage selectedNativeLanguage,
    @Default(LearningLanguage.english)
    LearningLanguage selectedLearningLanguage,
  }) = _CompleteRegistrationViewModelData;
}
