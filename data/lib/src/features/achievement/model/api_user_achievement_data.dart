import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_user_achievement_data.freezed.dart';
part 'api_user_achievement_data.g.dart';

@freezed
class ApiUserAchievementData with _$ApiUserAchievementData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiUserAchievementData({
    @JsonKey(name: 'userAchievementId') String? userAchievementId,
    @JsonKey(name: 'achievementId') String? achievementId,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiUserAchievementData;

  factory ApiUserAchievementData.fromJson(Map<String, dynamic> json) =>
      _$ApiUserAchievementDataFromJson(json);
}
