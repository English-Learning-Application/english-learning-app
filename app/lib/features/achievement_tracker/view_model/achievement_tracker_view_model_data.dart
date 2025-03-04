part of 'achievement_tracker.dart';

@freezed
class AchievementTrackerViewModelData extends BaseViewModelData
    with _$AchievementTrackerViewModelData {
  const factory AchievementTrackerViewModelData({
    @Default(<Achievement>[]) List<Achievement> originalAchievements,
    @Default(<Achievement>[]) List<Achievement> achievements,
    @Default([]) List<AchievementType> achievementTypes,
    @Default([]) List<UserAchievement> userAchievements,
    AchievementType? selectedAchievementType,
  }) = _AchievementTrackerViewModelData;
}
