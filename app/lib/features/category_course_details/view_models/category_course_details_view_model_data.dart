part of 'category_course_details.dart';

@freezed
class CategoryCourseDetailsViewModelData extends BaseViewModelData
    with _$CategoryCourseDetailsViewModelData {
  const factory CategoryCourseDetailsViewModelData({
    @Default(LearningLanguage.english) LearningLanguage language,
    @Default(Category()) Category category,
    @Default([]) List<CategoryCourse> categoryCourses,
  }) = _CategoryCourseDetailsViewModelData;
}
