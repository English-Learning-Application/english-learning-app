import '../../../../logic.dart';

abstract class LanguageCourseRepository {
  Future<List<LanguageCourse>> getLanguageCoursesByLanguage(
    LearningLanguage language,
  );

  Future<List<LanguageCourse>> getLanguageCoursesByLevelAndLanguage({
    required LearningLanguage language,
    required LanguageLevel level,
  });

  Future<List<CategoryCourse>> getCategoryCoursesByLanguage({
    required LearningLanguage language,
    List<String> categoryKeys = const [],
  });

  Future<List<Category>> getCategories();
}
