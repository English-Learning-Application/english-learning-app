import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_tense_data.freezed.dart';
part 'api_tense_data.g.dart';

@freezed
class ApiTenseData with _$ApiTenseData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiTenseData({
    @JsonKey(name: 'tenseId') String? tenseId,
    @JsonKey(name: 'englishTenseName') String? englishTenseName,
    @JsonKey(name: 'vietnameseTenseName') String? vietnameseTenseName,
    @JsonKey(name: 'frenchTenseName') String? frenchTenseName,
    @JsonKey(name: 'englishDescription') String? englishDescription,
    @JsonKey(name: 'vietnameseDescription') String? vietnameseDescription,
    @JsonKey(name: 'frenchDescription') String? frenchDescription,
    @JsonKey(name: 'tenseRule') String? tenseRule,
    @JsonKey(name: 'tenseExample') String? tenseExample,
    @JsonKey(name: 'tenseForms') List<ApiTenseFormData>? tenseForms,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiTenseData;

  factory ApiTenseData.fromJson(Map<String, dynamic> json) =>
      _$ApiTenseDataFromJson(json);
}

@freezed
class ApiTenseFormData with _$ApiTenseFormData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiTenseFormData({
    @JsonKey(name: 'tenseFormId') String? tenseFormId,
    @JsonKey(name: 'tenseFormSubject') String? tenseFormSubject,
    @JsonKey(name: 'tenseFormPositiveRule') String? tenseFormPositiveRule,
    @JsonKey(name: 'tenseFormNegativeRule') String? tenseFormNegativeRule,
    @JsonKey(name: 'tenseFormQuestionRule') String? tenseFormQuestionRule,
    @JsonKey(name: 'tenseFormPositiveExample') String? tenseFormPositiveExample,
    @JsonKey(name: 'tenseFormNegativeExample') String? tenseFormNegativeExample,
    @JsonKey(name: 'tenseFormQuestionExample') String? tenseFormQuestionExample,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiTenseFormData;

  factory ApiTenseFormData.fromJson(Map<String, dynamic> json) =>
      _$ApiTenseFormDataFromJson(json);
}
