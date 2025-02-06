import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../logic.dart';

part 'category_course.freezed.dart';

@freezed
class CategoryCourse with _$CategoryCourse {
  const CategoryCourse._();

  const factory CategoryCourse({
    @Default(CategoryCourse.defaultCategoryCourseId) String categoryCourseId,
    @Default(CategoryCourse.defaultCategory) Category category,
    @Default(CategoryCourse.defaultLanguage) LearningLanguage language,
    @Default(CategoryCourse.defaultEnglishName) String englishName,
    @Default(CategoryCourse.defaultVietnameseName) String vietnameseName,
    @Default(CategoryCourse.defaultFrenchName) String frenchName,
    @Default(CategoryCourse.defaultLanguageCourseLearningContent)
    List<LanguageCourseLearningContent> languageCourseLearningContent,
    @Default(CategoryCourse.defaultCreatedAt) DateTime? createdAt,
    @Default(CategoryCourse.defaultUpdatedAt) DateTime? updatedAt,
  }) = _CategoryCourse;

  static const defaultCategoryCourseId = '';
  static const defaultCategory = Category();
  static const LearningLanguage defaultLanguage = LearningLanguage.english;
  static const defaultEnglishName = '';
  static const defaultVietnameseName = '';
  static const defaultFrenchName = '';
  static const List<LanguageCourseLearningContent>
      defaultLanguageCourseLearningContent = [];
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;

  double completionProgress() {
    if (languageCourseLearningContent.isEmpty) {
      return 0.0;
    }
    double progress = 0.0;
    for (var content in languageCourseLearningContent) {
      progress += content.progress;
    }
    return progress / languageCourseLearningContent.length;
  }
}
