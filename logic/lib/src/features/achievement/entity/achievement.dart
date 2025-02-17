import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:services/services.dart';

import '../../../../logic.dart';

part 'achievement.freezed.dart';

@freezed
class Achievement with _$Achievement {
  const Achievement._();
  const factory Achievement({
    @Default(Achievement.defaultAchievementId) String achievementId,
    @Default(Achievement.defaultAchievementKey) String achievementKey,
    @Default(Achievement.defaultAchievementType) AchievementType achievementType,
    @Default(Achievement.defaultAchievementThreshold) int threshold,
    @Default(Achievement.defaultEnglishName) String englishName,
    @Default(Achievement.defaultVietnameseName) String vietnameseName,
    @Default(Achievement.defaultFrenchName) String frenchName,
    @Default(Achievement.defaultEnglishDescription) String englishDescription,
    @Default(Achievement.defaultVietnameseDescription)
    String vietnameseDescription,
    @Default(Achievement.defaultFrenchDescription) String frenchDescription,
    @Default(Achievement.defaultImageUrl) String imageUrl,
    @Default(Achievement.defaultCreatedAt) DateTime? createdAt,
    @Default(Achievement.defaultUpdatedAt) DateTime? updatedAt,
  }) = _Achievement;

  static const defaultAchievementId = '';
  static const defaultAchievementKey = '';
  static const AchievementType defaultAchievementType =
      AchievementType.flashCard;
  static const defaultAchievementThreshold = 0;
  static const defaultEnglishName = '';
  static const defaultVietnameseName = '';
  static const defaultFrenchName = '';
  static const defaultEnglishDescription = '';
  static const defaultVietnameseDescription = '';
  static const defaultFrenchDescription = '';
  static const defaultImageUrl = '';
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;

  String get mediaUrl => '${UrlConstants.appMediaBaseUrl}$imageUrl';
}
