import '../../../../logic.dart';

abstract class LanguageCourseRepository {
  Future<List<LanguageCourse>> getLanguageCoursesByLanguage(
    LearningLanguage language,
  );

  Future<List<LanguageCourse>> getLanguageCoursesByLevelAndLanguage({
    required LearningLanguage language,
    required LanguageLevel level,
  });
}
