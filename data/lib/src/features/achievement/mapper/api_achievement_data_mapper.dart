import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

import '../../../../data.dart';

@Injectable()
class ApiAchievementDataMapper
    extends BaseDataMapper<ApiAchievementData, Achievement>
    with DataMapperMixin {
  @override
  ApiAchievementData mapToData(Achievement entity) {
    return ApiAchievementData(
      achievementId: entity.achievementId,
      achievementKey: entity.achievementKey,
      achievementType: entity.achievementType,
      achievementThreshold: entity.threshold,
      englishName: entity.englishName,
      vietnameseName: entity.vietnameseName,
      frenchName: entity.frenchName,
      englishDescription: entity.englishDescription,
      vietnameseDescription: entity.vietnameseDescription,
      frenchDescription: entity.frenchDescription,
      imageUrl: entity.imageUrl,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  Achievement mapToEntity(ApiAchievementData? data) {
    return Achievement(
      achievementId: data?.achievementId ?? Achievement.defaultAchievementId,
      achievementKey: data?.achievementKey ?? Achievement.defaultAchievementKey,
      achievementType:
          data?.achievementType ?? Achievement.defaultAchievementType,
      threshold:
          data?.achievementThreshold ?? Achievement.defaultAchievementThreshold,
      englishName: data?.englishName ?? Achievement.defaultEnglishName,
      vietnameseName: data?.vietnameseName ?? Achievement.defaultVietnameseName,
      frenchName: data?.frenchName ?? Achievement.defaultFrenchName,
      englishDescription:
          data?.englishDescription ?? Achievement.defaultEnglishDescription,
      vietnameseDescription: data?.vietnameseDescription ??
          Achievement.defaultVietnameseDescription,
      frenchDescription:
          data?.frenchDescription ?? Achievement.defaultFrenchDescription,
      imageUrl: data?.imageUrl ?? Achievement.defaultImageUrl,
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
