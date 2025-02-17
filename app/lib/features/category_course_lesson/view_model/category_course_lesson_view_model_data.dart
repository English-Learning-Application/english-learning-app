part of 'category_course_lesson.dart';

@freezed
class CategoryCourseLessonViewModelData extends BaseViewModelData
    with _$CategoryCourseLessonViewModelData {
  const factory CategoryCourseLessonViewModelData({
    @Default(CategoryCourse()) CategoryCourse categoryCourse,
    @Default([])
    List<LanguageCourseLearningContent> languageCourseLearningContents,
    @Default(false) bool isBookmarked,
  }) = _CategoryCourseLessonViewModelData;
}
