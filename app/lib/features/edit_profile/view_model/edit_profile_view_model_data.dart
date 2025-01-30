part of 'edit_profile.dart';

@freezed
class EditProfileViewModelData extends BaseViewModelData
    with _$EditProfileViewModelData {
  const factory EditProfileViewModelData({
    @Default('') String inputUsername,
    @Default(LearningLanguage.english) LearningLanguage selectedNativeLanguage,
    @Default([]) List<LearningType> selectedLearningTypes,
    @Default(LearningLanguage.english)
    LearningLanguage selectedLearningLanguage,
  }) = _EditProfileViewModelData;
}
