import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../../../../data.dart';

@LazySingleton(as: LanguageCourseRepository)
class LanguageCourseRepositoryImpl implements LanguageCourseRepository {
  final LanguageCourseApiDataSource _languageCourseApiDataSource;
  final ApiLanguageCourseDataMapper _apiLanguageCourseDataMapper;
  final ApiCategoryCourseMapper _apiCategoryCourseMapper;
  final ApiCategoryMapper _apiCategoryMapper;

  const LanguageCourseRepositoryImpl(
    this._languageCourseApiDataSource,
    this._apiCategoryCourseMapper,
    this._apiLanguageCourseDataMapper,
    this._apiCategoryMapper,
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

  @override
  Future<List<CategoryCourse>> getCategoryCoursesByLanguage({
    required LearningLanguage language,
    List<String> categoryKeys = const [],
  }) async {
    final response =
        await _languageCourseApiDataSource.getCategoryCoursesByLanguage(
      language: language,
      categoryKeys: categoryKeys,
    );

    return _apiCategoryCourseMapper.mapToListEntities(response?.results);
  }

  @override
  Future<List<Category>> getCategories() async {
    final response = await _languageCourseApiDataSource.getCategories();

    return _apiCategoryMapper.mapToListEntities(response?.results);
  }

  @override
  Future<List<CategoryCourse>> getCategoryCoursesByIds(
    List<String> categoryCourseIds,
  ) async {
    final resp = await _languageCourseApiDataSource
        .getCategoryCoursesByIds(categoryCourseIds);

    return _apiCategoryCourseMapper.mapToListEntities(resp?.results);
  }

  @override
  Future<List<LanguageCourse>> getLanguageCoursesByIds(
    List<String> languageCourseIds,
  ) async {
    final resp = await _languageCourseApiDataSource
        .getLanguageCoursesByIds(languageCourseIds);

    return _apiLanguageCourseDataMapper.mapToListEntities(resp?.results);
  }
}
