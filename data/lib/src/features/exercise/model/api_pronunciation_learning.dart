import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_pronunciation_learning.freezed.dart';
part 'api_pronunciation_learning.g.dart';

@freezed
class ApiPronunciationLearning with _$ApiPronunciationLearning {
  @JsonSerializable(explicitToJson: true)
  const factory ApiPronunciationLearning({
    @JsonKey(name: 'pronunciationLearningId') String? pronunciationLearningId,
    @JsonKey(name: 'learningContentId') String? learningContentId,
    @JsonKey(name: 'itemId') String? itemId,
    @JsonKey(name: 'learningContentType') String? learningContentType,
    @JsonKey(name: 'courseId') String? courseId,
    @JsonKey(name: 'pronunciationLearningContents')
    List<ApiPronunciationAssessment>? pronunciationLearningContents,
  }) = _ApiPronunciationLearning;

  factory ApiPronunciationLearning.fromJson(Map<String, dynamic> json) =>
      _$ApiPronunciationLearningFromJson(json);
}

@freezed
class ApiPronunciationAssessment with _$ApiPronunciationAssessment {
  @JsonSerializable(explicitToJson: true)
  const factory ApiPronunciationAssessment({
    @JsonKey(name: 'pronunciationAssessmentId')
    String? pronunciationAssessmentId,
    @JsonKey(name: 'pronunciationLearningId') String? pronunciationLearningId,
    @JsonKey(name: 'pronunciationWord') String? pronunciationWord,
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'pronunciationAccentPrediction')
    String? pronunciationAccentPrediction,
    @JsonKey(name: 'scoreCertificateEstimation')
    String? scoreCertificateEstimation,
  }) = _ApiPronunciationAssessment;

  factory ApiPronunciationAssessment.fromJson(Map<String, dynamic> json) =>
      _$ApiPronunciationAssessmentFromJson(json);
}
