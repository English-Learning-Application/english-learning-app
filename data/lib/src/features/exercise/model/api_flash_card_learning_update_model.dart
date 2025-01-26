import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_flash_card_learning_update_model.freezed.dart';
part 'api_flash_card_learning_update_model.g.dart';

@freezed
class ApiFlashCardLearningUpdateModel with _$ApiFlashCardLearningUpdateModel {
  @JsonSerializable(explicitToJson: true)
  const factory ApiFlashCardLearningUpdateModel({
    @JsonKey(name: 'skippedFlashCardLearningInfo')
    List<ApiFlashCardLearningInfoModel>? skippedFlashCardLearningInfo,
    @JsonKey(name: 'learnedFlashCardLearningInfo')
    List<ApiFlashCardLearningInfoModel>? learnedFlashCardLearningInfo,
  }) = _ApiFlashCardLearningUpdateModel;

  factory ApiFlashCardLearningUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$ApiFlashCardLearningUpdateModelFromJson(json);
}

@freezed
class ApiFlashCardLearningInfoModel with _$ApiFlashCardLearningInfoModel {
  @JsonSerializable(explicitToJson: true)
  const factory ApiFlashCardLearningInfoModel({
    @JsonKey(name: 'itemId') String? itemId,
    @JsonKey(name: 'learningContentId') String? learningContentId,
    @JsonKey(name: 'learningContentType') String? learningContentType,
  }) = _ApiFlashCardLearningInfoModel;

  factory ApiFlashCardLearningInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ApiFlashCardLearningInfoModelFromJson(json);
}
