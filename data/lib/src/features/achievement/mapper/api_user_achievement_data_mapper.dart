import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class ApiUserAchievementDataMapper
    extends BaseDataMapper<ApiUserAchievementData, UserAchievement>
    with DataMapperMixin {
  @override
  ApiUserAchievementData mapToData(UserAchievement entity) {
    return ApiUserAchievementData(
      userAchievementId: entity.userAchievementId,
      achievementId: entity.achievementId,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  UserAchievement mapToEntity(ApiUserAchievementData? data) {
    return UserAchievement(
      userAchievementId:
          data?.userAchievementId ?? UserAchievement.defaultUserAchievementId,
      achievementId:
          data?.achievementId ?? UserAchievement.defaultAchievementId,
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
