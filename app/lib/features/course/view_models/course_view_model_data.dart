part of 'course.dart';

@freezed
class CourseViewModelData extends BaseViewModelData with _$CourseViewModelData {
  const CourseViewModelData._();
  const factory CourseViewModelData({
    @Default(LearningLanguage.english) LearningLanguage learningLanguage,
    @Default([]) List<Category> categories,
    @Default([]) List<CategoryCourse> categoryCourses,
  }) = _CourseViewModelData;
}
