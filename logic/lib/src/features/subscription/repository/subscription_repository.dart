import '../../../../logic.dart';

abstract class SubscriptionRepository {
  Future<List<Subscription>> getActiveSubscriptions();

  Future<String> createPaymentUrl(String subscriptionId);

  Future<void> swapSubscription({
    required String subscriptionId,
    required String newSubscriptionId,
  });
}
