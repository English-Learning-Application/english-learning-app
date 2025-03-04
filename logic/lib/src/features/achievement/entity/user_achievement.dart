import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_achievement.freezed.dart';

@freezed
class UserAchievement with _$UserAchievement {
  const UserAchievement._();
  const factory UserAchievement({
    @Default(UserAchievement.defaultUserAchievementId) String userAchievementId,
    @Default(UserAchievement.defaultAchievementId) String achievementId,
    @Default(UserAchievement.defaultCreatedAt) DateTime? createdAt,
    @Default(UserAchievement.defaultUpdatedAt) DateTime? updatedAt,
  }) = _UserAchievement;

  static const defaultUserAchievementId = '';
  static const defaultAchievementId = '';
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;
}
