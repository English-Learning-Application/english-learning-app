import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_quiz_learning_update_model.freezed.dart';
part 'api_quiz_learning_update_model.g.dart';

@freezed
class ApiQuizLearningUpdateModel with _$ApiQuizLearningUpdateModel {
  @JsonSerializable(explicitToJson: true)
  const factory ApiQuizLearningUpdateModel({
    @JsonKey(name: 'incorrectQuestionLearningInfo')
    List<ApiQuizLearningInfoModel>? incorrectQuestionLearningInfo,
    @JsonKey(name: 'correctQuestionLearningInfo')
    List<ApiQuizLearningInfoModel>? correctQuestionLearningInfo,
  }) = _ApiQuizLearningUpdateModel;

  factory ApiQuizLearningUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$ApiQuizLearningUpdateModelFromJson(json);
}

@freezed
class ApiQuizLearningInfoModel with _$ApiQuizLearningInfoModel {
  @JsonSerializable(explicitToJson: true)
  const factory ApiQuizLearningInfoModel({
    @JsonKey(name: 'itemId') String? itemId,
    @JsonKey(name: 'learningContentId') String? learningContentId,
    @JsonKey(name: 'learningContentType') String? learningContentType,
  }) = _ApiQuizLearningInfoModel;

  factory ApiQuizLearningInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ApiQuizLearningInfoModelFromJson(json);
}
