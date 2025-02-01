import 'package:data/data.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class SubscriptionApiDataSource {
  final AuthAppServerApiClient _authAppServerApiClient;

  const SubscriptionApiDataSource(this._authAppServerApiClient);

  Future<ListResponse<ApiSubscriptionData>?> getActiveSubscriptions() async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path: SubscriptionEndpoints.getAllSubscriptions,
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      decoder: (data) {
        return ApiSubscriptionData.fromJson(data as Map<String, dynamic>);
      },
    );
  }

  Future<DataResponse<String>?> createPaymentUrl(String subscriptionId) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path: SubscriptionEndpoints.createPayment,
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
      body: {
        'subscriptionId': subscriptionId,
      },
      decoder: (data) {
        return data as String;
      },
    );
  }

  Future<DataResponse<ApiUserSubscriptionData>?> swapSubscription({
    required String subscriptionId,
    required String newSubscriptionId,
  }) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.put,
      path: SubscriptionEndpoints.swapSubscription,
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
      body: {
        'currentSubscriptionId': subscriptionId,
        'subscriptionId': newSubscriptionId,
      },
      decoder: (data) {
        return ApiUserSubscriptionData.fromJson(data as Map<String, dynamic>);
      },
    );
  }
}
