import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_subscription_data.freezed.dart';
part 'api_subscription_data.g.dart';

@freezed
class ApiSubscriptionData with _$ApiSubscriptionData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiSubscriptionData({
    @JsonKey(name: 'subscriptionId') String? subscriptionId,
    @JsonKey(name: 'subscriptionName') String? subscriptionName,
    @JsonKey(name: 'subscriptionDescription') String? subscriptionDescription,
    @JsonKey(name: 'subscriptionPrice') double? subscriptionPrice,
    @JsonKey(name: 'subscriptionDuration') int? subscriptionDuration,
    @JsonKey(name: 'subscriptionDurationLength')
    String? subscriptionDurationLength,
    @JsonKey(name: 'isEnabled') bool? isEnabled,
    @JsonKey(name: 'benefits') List<ApiBenefitData>? benefits,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiSubscriptionData;

  factory ApiSubscriptionData.fromJson(Map<String, dynamic> json) =>
      _$ApiSubscriptionDataFromJson(json);
}

@freezed
class ApiBenefitData with _$ApiBenefitData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiBenefitData({
    @JsonKey(name: 'benefitName') String? benefitName,
    @JsonKey(name: 'benefitDescription') String? benefitDescription,
  }) = _ApiBenefitData;

  factory ApiBenefitData.fromJson(Map<String, dynamic> json) =>
      _$ApiBenefitDataFromJson(json);
}
