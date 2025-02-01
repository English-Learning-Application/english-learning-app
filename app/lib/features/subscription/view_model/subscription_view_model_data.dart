part of 'subscription.dart';

@freezed
class SubscriptionViewModelData extends BaseViewModelData
    with _$SubscriptionViewModelData {
  const factory SubscriptionViewModelData({
    @Default([]) List<Subscription> subscriptions,
    @Default('') String paymentUrl,
  }) = _SubscriptionViewModelData;
}
