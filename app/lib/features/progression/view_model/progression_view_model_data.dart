part of 'progression.dart';

@freezed
class ProgressionViewModelData extends BaseViewModelData
    with _$ProgressionViewModelData {
  const ProgressionViewModelData._();
  const factory ProgressionViewModelData({
    @Default(LearningProgress()) LearningProgress learningProgress,
    @Default([]) List<CategoryCourse> categoryCourses,
    @Default([]) List<LanguageCourse> languageCourses,
  }) = _ProgressionViewModelData;
}
