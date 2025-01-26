import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_pronunciation_assessment_model.freezed.dart';
part 'api_pronunciation_assessment_model.g.dart';

@freezed
class ApiPronunciationAssessmentModel with _$ApiPronunciationAssessmentModel {
  @JsonSerializable(explicitToJson: true)
  const factory ApiPronunciationAssessmentModel({
    @JsonKey(name: 'words') List<ApiPronunciationWord>? words,
    @JsonKey(name: 'score') int? score,
    @JsonKey(name: 'accent_predictions')
    ApiPronunciationAccentPrediction? accentPrediction,
    @JsonKey(name: 'score_estimates') ApiScoreEstimates? scoreEstimates,
  }) = _ApiPronunciationAssessmentModel;

  factory ApiPronunciationAssessmentModel.fromJson(Map<String, dynamic> json) =>
      _$ApiPronunciationAssessmentModelFromJson(json);
}

@freezed
class ApiPronunciationWord with _$ApiPronunciationWord {
  @JsonSerializable(explicitToJson: true)
  const factory ApiPronunciationWord({
    @JsonKey(name: 'label') String? label,
    @JsonKey(name: 'score') int? score,
  }) = _ApiPronunciationWord;

  factory ApiPronunciationWord.fromJson(Map<String, dynamic> json) =>
      _$ApiPronunciationWordFromJson(json);
}

@freezed
class ApiPronunciationAccentPrediction with _$ApiPronunciationAccentPrediction {
  @JsonSerializable(explicitToJson: true)
  const factory ApiPronunciationAccentPrediction({
    @JsonKey(name: 'en_US') int? enUs,
    @JsonKey(name: 'en_UK') int? enUk,
    @JsonKey(name: 'en_AU') int? enAu,
  }) = _ApiPronunciationAccentPrediction;

  factory ApiPronunciationAccentPrediction.fromJson(
          Map<String, dynamic> json) =>
      _$ApiPronunciationAccentPredictionFromJson(json);
}

@freezed
class ApiScoreEstimates with _$ApiScoreEstimates {
  @JsonSerializable(explicitToJson: true)
  const factory ApiScoreEstimates({
    @JsonKey(name: 'ielts') String? ielts,
    @JsonKey(name: 'toefl') String? toefl,
    @JsonKey(name: 'cefr') String? cefr,
    @JsonKey(name: 'pte_general') String? pteGeneral,
  }) = _ApiScoreEstimates;

  factory ApiScoreEstimates.fromJson(Map<String, dynamic> json) =>
      _$ApiScoreEstimatesFromJson(json);
}
