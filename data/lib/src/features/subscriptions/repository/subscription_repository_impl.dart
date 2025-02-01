import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

@LazySingleton(as: SubscriptionRepository)
class SubscriptionRepositoryImpl implements SubscriptionRepository {
  final SubscriptionApiDataSource _subscriptionApiDataSource;
  final ApiSubscriptionDataMapper _apiSubscriptionDataMapper;

  const SubscriptionRepositoryImpl(
    this._subscriptionApiDataSource,
    this._apiSubscriptionDataMapper,
  );

  @override
  Future<List<Subscription>> getActiveSubscriptions() async {
    final resp = await _subscriptionApiDataSource.getActiveSubscriptions();

    return _apiSubscriptionDataMapper.mapToListEntities(resp?.results);
  }

  @override
  Future<String> createPaymentUrl(String subscriptionId) async {
    final resp =
        await _subscriptionApiDataSource.createPaymentUrl(subscriptionId);

    return resp?.data ?? '';
  }

  @override
  Future<void> swapSubscription({
    required String subscriptionId,
    required String newSubscriptionId,
  }) async {
    await _subscriptionApiDataSource.swapSubscription(
      subscriptionId: subscriptionId,
      newSubscriptionId: newSubscriptionId,
    );
  }
}
