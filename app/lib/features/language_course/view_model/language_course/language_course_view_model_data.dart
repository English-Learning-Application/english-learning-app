part of 'language_course.dart';

@freezed
class LanguageCourseViewModelData extends BaseViewModelData
    with _$LanguageCourseViewModelData {
  const factory LanguageCourseViewModelData({
    @Default(LearningLanguage.english) LearningLanguage learningLanguage,
    @Default(LanguageLevel.all) LanguageLevel languageLevel,
    @Default([]) List<LanguageCourse> languageCourses,
    @Default(true) bool isNoLanguageCourse,
  }) = _LanguageCourseViewModelData;
}
