import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../logic.dart';

part 'subscription.freezed.dart';

@freezed
class Subscription with _$Subscription {
  const Subscription._();

  const factory Subscription({
    @Default(Subscription.defaultSubscriptionId) String id,
    @Default(Subscription.defaultSubscriptionName) String name,
    @Default(Subscription.defaultSubscriptionDescription) String description,
    @Default(Subscription.defaultSubscriptionPrice) double price,
    @Default(Subscription.defaultSubscriptionDuration) int duration,
    @Default(Subscription.defaultSubscriptionDurationLength)
    DateLengthUnit durationLength,
    @Default(Subscription.defaultIsEnabled) bool isEnabled,
    @Default([]) List<Benefit> benefits,
    @Default(Subscription.defaultCreatedAt) DateTime? createdAt,
    @Default(Subscription.defaultUpdatedAt) DateTime? updatedAt,
  }) = _Subscription;

  static const defaultSubscriptionId = '';
  static const defaultSubscriptionName = '';
  static const defaultSubscriptionDescription = '';
  static const defaultSubscriptionPrice = 0.0;
  static const defaultSubscriptionDuration = 0;
  static const DateLengthUnit defaultSubscriptionDurationLength =
      DateLengthUnit.month;
  static const defaultIsEnabled = true;
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;
}

@freezed
class Benefit with _$Benefit {
  const Benefit._();

  const factory Benefit({
    @Default(Benefit.defaultBenefitId) String id,
    @Default(Benefit.defaultBenefitName) String name,
    @Default(Benefit.defaultBenefitDescription) String description,
  }) = _Benefit;

  static const defaultBenefitId = '';
  static const defaultBenefitName = '';
  static const defaultBenefitDescription = '';
}
