import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_user_subscription_data.freezed.dart';
part 'api_user_subscription_data.g.dart';

@freezed
class ApiUserSubscriptionData with _$ApiUserSubscriptionData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiUserSubscriptionData({
    @JsonKey(name: 'userSubscriptionId') String? userSubscriptionId,
    @JsonKey(name: 'subscriptionId') String? subscriptionId,
    @JsonKey(name: 'expiryDate') String? expiryDate,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiUserSubscriptionData;

  factory ApiUserSubscriptionData.fromJson(Map<String, dynamic> json) =>
      _$ApiUserSubscriptionDataFromJson(json);
}
