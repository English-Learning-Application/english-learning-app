import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_sentence_data.freezed.dart';
part 'api_sentence_data.g.dart';

@freezed
class ApiSentenceData with _$ApiSentenceData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiSentenceData({
    @JsonKey(name: 'sentenceId') String? sentenceId,
    @JsonKey(name: 'englishSentence') String? englishSentence,
    @JsonKey(name: 'vietnameseSentence') String? vietnameseSentence,
    @JsonKey(name: 'frenchSentence') String? frenchSentence,
    @JsonKey(name: 'exampleUsage') String? exampleUsage,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiSentenceData;

  factory ApiSentenceData.fromJson(Map<String, dynamic> json) =>
      _$ApiSentenceDataFromJson(json);
}
