import 'package:injectable/injectable.dart';

import '../../../../data.dart';

@LazySingleton()
class AppApiService {
  final RandomUserApiClient _randomUserApiClient;
  final AuthAppServerApiClient _authAppServerApiClient;

  AppApiService(
    this._randomUserApiClient,
    this._authAppServerApiClient,
  );

  Future<ListResponse<ApiRandomUserData>?> getUsers({
    required int page,
    required int? limit,
  }) async {
    return await _randomUserApiClient.request(
      method: RestApiMethod.get,
      path: '',
      queryParameters: {
        'page': page,
        'results': limit,
      },
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      decoder: (json) =>
          ApiRandomUserData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ListResponse<ApiUserData>?> getUsersData({
    required List<String> ids,
  }) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path: UserEndpoints.getUsersData,
      queryParameters: {
        'userIds': ids,
      },
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      decoder: (json) => ApiUserData.fromJson(json as Map<String, dynamic>),
    );
  }
}
