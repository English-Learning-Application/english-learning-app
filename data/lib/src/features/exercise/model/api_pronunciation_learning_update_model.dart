import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_pronunciation_learning_update_model.freezed.dart';
part 'api_pronunciation_learning_update_model.g.dart';

@freezed
class ApiPronunciationLearningUpdateModel
    with _$ApiPronunciationLearningUpdateModel {
  @JsonSerializable(explicitToJson: true)
  const factory ApiPronunciationLearningUpdateModel({
    @JsonKey(name: 'pronunciationLearningUpdateInfo')
    List<ApiPronunciationLearningInfoModel>? pronunciationLearningInfo,
  }) = _ApiPronunciationLearningUpdateModel;

  factory ApiPronunciationLearningUpdateModel.fromJson(
          Map<String, dynamic> json) =>
      _$ApiPronunciationLearningUpdateModelFromJson(json);
}

@freezed
class ApiPronunciationLearningInfoModel
    with _$ApiPronunciationLearningInfoModel {
  @JsonSerializable(explicitToJson: true)
  const factory ApiPronunciationLearningInfoModel({
    @JsonKey(name: 'itemId') String? itemId,
    @JsonKey(name: 'learningContentId') String? learningContentId,
    @JsonKey(name: 'learningContentType') String? learningContentType,
    @JsonKey(name: 'pronunciationAssessmentInfo')
    List<ApiPronunciationAssessmentLearningInfoModel>?
        pronunciationAssessmentInfo,
  }) = _ApiPronunciationLearningInfoModel;

  factory ApiPronunciationLearningInfoModel.fromJson(
          Map<String, dynamic> json) =>
      _$ApiPronunciationLearningInfoModelFromJson(json);
}

@freezed
class ApiPronunciationAssessmentLearningInfoModel
    with _$ApiPronunciationAssessmentLearningInfoModel {
  @JsonSerializable(explicitToJson: true)
  const factory ApiPronunciationAssessmentLearningInfoModel({
    @JsonKey(name: 'pronunciationWord') String? pronunciationWord,
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'pronunciationAccentPrediction')
    String? pronunciationAccentPrediction,
    @JsonKey(name: 'scoreCertificateEstimation')
    String? scoreCertificateEstimation,
  }) = _ApiPronunciationAssessmentLearningInfoModel;

  factory ApiPronunciationAssessmentLearningInfoModel.fromJson(
          Map<String, dynamic> json) =>
      _$ApiPronunciationAssessmentLearningInfoModelFromJson(json);
}
