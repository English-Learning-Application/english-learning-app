import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../../../../../data.dart';

@LazySingleton()
class LanguageCourseApiDataSource {
  final AuthAppServerApiClient _authAppServerApiClient;

  const LanguageCourseApiDataSource(this._authAppServerApiClient);

  Future<ListResponse<ApiLanguageCourseData>?> getLanguageCourses(
      LearningLanguage learningLanguage) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path:
          "${LanguageCourseEndpoints.getLanguageCourses}/${learningLanguage.serverValue}",
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      decoder: (json) =>
          ApiLanguageCourseData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ListResponse<ApiLanguageCourseData>?> getLanguageCoursesByLevel({
    required LearningLanguage learningLanguage,
    required LanguageLevel level,
  }) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path:
          "${LanguageCourseEndpoints.getLanguageCourses}/${learningLanguage.serverValue}/${level.serverValue}",
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      decoder: (json) =>
          ApiLanguageCourseData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ListResponse<ApiCategoryCourseData>?> getCategoryCoursesByLanguage({
    required LearningLanguage language,
    List<String> categoryKeys = const [],
  }) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path:
          "${LanguageCourseEndpoints.getCategoriesCourses}/${language.serverValue}",
      queryParameters: {
        'q': categoryKeys.join(','),
      },
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      decoder: (json) =>
          ApiCategoryCourseData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ListResponse<ApiCategory>?> getCategories() async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      path: LanguageCourseEndpoints.getCategoriesCourses,
      decoder: (json) => ApiCategory.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ListResponse<ApiCategoryCourseData>?> getCategoryCoursesByIds(
    List<String> categoryCourseIds,
  ) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path: '/courses/categories/courses',
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      queryParameters: {
        'ids': categoryCourseIds.join(','),
      },
      decoder: (json) =>
          ApiCategoryCourseData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ListResponse<ApiLanguageCourseData>?> getLanguageCoursesByIds(
    List<String> languageCourseIds,
  ) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path: '/courses/all/search',
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      queryParameters: {
        'ids': languageCourseIds.join(','),
      },
      decoder: (json) =>
          ApiLanguageCourseData.fromJson(json as Map<String, dynamic>),
    );
  }
}
