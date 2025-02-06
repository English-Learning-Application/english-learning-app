part of 'achievement_tracker.dart';

@freezed
class AchievementTrackerViewModelData extends BaseViewModelData
    with _$AchievementTrackerViewModelData {
  const factory AchievementTrackerViewModelData({
    @Default(<Achievement>[]) List<Achievement> achievements,
  }) = _AchievementTrackerViewModelData;
}
