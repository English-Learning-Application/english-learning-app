import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_matching_learning_update_model.freezed.dart';
part 'api_matching_learning_update_model.g.dart';

@freezed
class ApiMatchingLearningUpdateModel with _$ApiMatchingLearningUpdateModel {
  const factory ApiMatchingLearningUpdateModel({
    @JsonKey(name: 'incorrectMatchingLearningInfo')
    List<ApiMatchingLearningInfoModel>? incorrectMatchingLearningInfo,
    @JsonKey(name: 'correctMatchingLearningInfo')
    List<ApiMatchingLearningInfoModel>? correctMatchingLearningInfo,
  }) = _ApiMatchingLearningUpdateModel;

  factory ApiMatchingLearningUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$ApiMatchingLearningUpdateModelFromJson(json);
}

@freezed
class ApiMatchingLearningInfoModel with _$ApiMatchingLearningInfoModel {
  @JsonSerializable(explicitToJson: true)
  const factory ApiMatchingLearningInfoModel({
    @JsonKey(name: 'itemId') String? itemId,
    @JsonKey(name: 'learningContentId') String? learningContentId,
    @JsonKey(name: 'learningContentType') String? learningContentType,
  }) = _ApiMatchingLearningInfoModel;

  factory ApiMatchingLearningInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ApiMatchingLearningInfoModelFromJson(json);
}
