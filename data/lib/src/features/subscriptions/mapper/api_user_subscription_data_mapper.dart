import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class ApiUserSubscriptionDataMapper
    extends BaseDataMapper<ApiUserSubscriptionData, UserSubscription>
    with DataMapperMixin {
  @override
  ApiUserSubscriptionData mapToData(UserSubscription entity) {
    return ApiUserSubscriptionData(
      userSubscriptionId: entity.id,
      subscriptionId: entity.subscriptionId,
      expiryDate: entity.expiryDate?.toIso8601String(),
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  UserSubscription mapToEntity(ApiUserSubscriptionData? data) {
    return UserSubscription(
      id: data?.userSubscriptionId ??
          UserSubscription.defaultUserSubscriptionId,
      subscriptionId:
          data?.subscriptionId ?? UserSubscription.defaultSubscriptionId,
      expiryDate: DateTimeUtils.tryParse(date: data?.expiryDate),
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
