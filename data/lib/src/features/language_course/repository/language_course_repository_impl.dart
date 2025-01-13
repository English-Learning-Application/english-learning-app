import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../../../../data.dart';

@LazySingleton(as: LanguageCourseRepository)
class LanguageCourseRepositoryImpl implements LanguageCourseRepository {
  final LanguageCourseApiDataSource _languageCourseApiDataSource;
  final ApiLanguageCourseDataMapper _apiLanguageCourseDataMapper;

  const LanguageCourseRepositoryImpl(
    this._languageCourseApiDataSource,
    this._apiLanguageCourseDataMapper,
  );

  @override
  Future<List<LanguageCourse>> getLanguageCoursesByLanguage(
      LearningLanguage language) async {
    final response =
        await _languageCourseApiDataSource.getLanguageCourses(language);

    return _apiLanguageCourseDataMapper.mapToListEntities(response?.results);
  }

  @override
  Future<List<LanguageCourse>> getLanguageCoursesByLevelAndLanguage({
    required LearningLanguage language,
    required LanguageLevel level,
  }) async {
    final response =
        await _languageCourseApiDataSource.getLanguageCoursesByLevel(
      learningLanguage: language,
      level: level,
    );

    return _apiLanguageCourseDataMapper.mapToListEntities(response?.results);
  }
}
