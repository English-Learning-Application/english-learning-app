import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_achievement_data.freezed.dart';
part 'api_achievement_data.g.dart';

@freezed
class ApiAchievementData with _$ApiAchievementData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiAchievementData({
    @JsonKey(name: 'achievementId') String? achievementId,
    @JsonKey(name: 'achievementKey') String? achievementKey,
    @JsonKey(name: 'achievementType') String? achievementType,
    @JsonKey(name: 'achievementThreshold') int? achievementThreshold,
    @JsonKey(name: 'englishName') String? englishName,
    @JsonKey(name: 'vietnameseName') String? vietnameseName,
    @JsonKey(name: 'frenchName') String? frenchName,
    @JsonKey(name: 'englishDescription') String? englishDescription,
    @JsonKey(name: 'vietnameseDescription') String? vietnameseDescription,
    @JsonKey(name: 'frenchDescription') String? frenchDescription,
    @JsonKey(name: 'imageUrl') String? imageUrl,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiAchievementData;

  factory ApiAchievementData.fromJson(Map<String, dynamic> json) =>
      _$ApiAchievementDataFromJson(json);
}
