import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_phrasal_verb_data.freezed.dart';
part 'api_phrasal_verb_data.g.dart';

@freezed
class ApiPhrasalVerbData with _$ApiPhrasalVerbData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiPhrasalVerbData({
    @JsonKey(name: 'phrasalVerbId') String? phrasalVerbId,
    @JsonKey(name: 'englishPhrasalVerb') String? englishPhrasalVerb,
    @JsonKey(name: 'vietnamesePhrasalVerb') String? vietnamesePhrasalVerb,
    @JsonKey(name: 'frenchPhrasalVerb') String? frenchPhrasalVerb,
    @JsonKey(name: 'englishDescription') String? englishDescription,
    @JsonKey(name: 'vietnameseDescription') String? vietnameseDescription,
    @JsonKey(name: 'frenchDescription') String? frenchDescription,
    @JsonKey(name: 'exampleUsage') String? exampleUsage,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiPhrasalVerbData;

  factory ApiPhrasalVerbData.fromJson(Map<String, dynamic> json) =>
      _$ApiPhrasalVerbDataFromJson(json);
}
