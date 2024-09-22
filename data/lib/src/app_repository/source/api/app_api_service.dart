import 'package:injectable/injectable.dart';

import '../../../../data.dart';

@LazySingleton()
class AppApiService {
  final RandomUserApiClient _randomUserApiClient;

  AppApiService(
    this._randomUserApiClient,
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
}
