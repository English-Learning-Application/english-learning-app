import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_subscription.freezed.dart';

@freezed
class UserSubscription with _$UserSubscription {
  const UserSubscription._();

  const factory UserSubscription({
    @Default(UserSubscription.defaultUserSubscriptionId) String id,
    @Default(UserSubscription.defaultSubscriptionId) String subscriptionId,
    @Default(UserSubscription.defaultExpiryDate) DateTime? expiryDate,
    @Default(UserSubscription.defaultCreatedAt) DateTime? createdAt,
    @Default(UserSubscription.defaultUpdatedAt) DateTime? updatedAt,
  }) = _UserSubscription;

  static const defaultUserSubscriptionId = '';
  static const defaultSubscriptionId = '';
  static const DateTime? defaultExpiryDate = null;
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;
}
