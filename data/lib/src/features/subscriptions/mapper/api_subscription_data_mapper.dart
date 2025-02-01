import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

import '../../../../data.dart';

@Injectable()
class ApiSubscriptionDataMapper
    extends BaseDataMapper<ApiSubscriptionData, Subscription>
    with DataMapperMixin {
  final ApiBenefitDataMapper _benefitDataMapper;

  const ApiSubscriptionDataMapper(this._benefitDataMapper);
  @override
  ApiSubscriptionData mapToData(Subscription entity) {
    return ApiSubscriptionData(
      subscriptionId: entity.id,
      subscriptionName: entity.name,
      subscriptionDescription: entity.description,
      subscriptionPrice: entity.price,
      subscriptionDuration: entity.duration,
      subscriptionDurationLength: entity.durationLength.serverValue,
      isEnabled: entity.isEnabled,
      benefits: _benefitDataMapper.mapToListData(entity.benefits),
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  Subscription mapToEntity(ApiSubscriptionData? data) {
    return Subscription(
      id: data?.subscriptionId ?? Subscription.defaultSubscriptionId,
      name: data?.subscriptionName ?? Subscription.defaultSubscriptionName,
      description: data?.subscriptionDescription ??
          Subscription.defaultSubscriptionDescription,
      price: data?.subscriptionPrice ?? Subscription.defaultSubscriptionPrice,
      duration: data?.subscriptionDuration ??
          Subscription.defaultSubscriptionDuration,
      durationLength: DateLengthUnit.values.firstWhere(
        (element) => element.serverValue == data?.subscriptionDurationLength,
        orElse: () => Subscription.defaultSubscriptionDurationLength,
      ),
      isEnabled: data?.isEnabled ?? Subscription.defaultIsEnabled,
      benefits: _benefitDataMapper.mapToListEntities(data?.benefits),
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}

@Injectable()
class ApiBenefitDataMapper extends BaseDataMapper<ApiBenefitData, Benefit>
    with DataMapperMixin {
  @override
  ApiBenefitData mapToData(Benefit entity) {
    return ApiBenefitData(
      benefitName: entity.name,
      benefitDescription: entity.description,
    );
  }

  @override
  Benefit mapToEntity(ApiBenefitData? data) {
    return Benefit(
      name: data?.benefitName ?? Benefit.defaultBenefitName,
      description:
          data?.benefitDescription ?? Benefit.defaultBenefitDescription,
    );
  }
}
