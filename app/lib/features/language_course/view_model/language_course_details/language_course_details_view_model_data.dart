part of 'language_course_details.dart';

@freezed
class LanguageCourseDetailsViewModelData extends BaseViewModelData
    with _$LanguageCourseDetailsViewModelData {
  const LanguageCourseDetailsViewModelData._();
  const factory LanguageCourseDetailsViewModelData({
    @Default(LanguageCourse()) LanguageCourse languageCourse,
    @Default(LearningType.vocabulary) LearningType learningType,
    @Default(false) bool isBookmarked,
  }) = _LanguageCourseDetailsViewModelData;
}
