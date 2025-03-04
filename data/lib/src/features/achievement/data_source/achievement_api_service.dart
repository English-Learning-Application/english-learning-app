import 'package:data/data.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AchievementApiService {
  final AuthAppServerApiClient _authAppServerApiClient;

  const AchievementApiService(this._authAppServerApiClient);

  Future<ListResponse<ApiAchievementData>?> getAchievements() async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path: '/achievement/all',
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      decoder: (json) =>
          ApiAchievementData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ListResponse<ApiUserAchievementData>?> getUserAchievements() async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path: '/user-achievement/all',
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      decoder: (json) =>
          ApiUserAchievementData.fromJson(json as Map<String, dynamic>),
    );
  }
}
