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
}
