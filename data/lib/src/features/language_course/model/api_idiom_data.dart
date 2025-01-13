import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_idiom_data.freezed.dart';
part 'api_idiom_data.g.dart';

@freezed
class ApiIdiomData with _$ApiIdiomData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiIdiomData({
    @JsonKey(name: 'idiomId') String? idiomId,
    @JsonKey(name: 'englishIdiom') String? englishIdiom,
    @JsonKey(name: 'vietnameseIdiom') String? vietnameseIdiom,
    @JsonKey(name: 'frenchIdiom') String? frenchIdiom,
    @JsonKey(name: 'englishIdiomMeaning') String? englishIdiomMeaning,
    @JsonKey(name: 'vietnameseIdiomMeaning') String? vietnameseIdiomMeaning,
    @JsonKey(name: 'frenchIdiomMeaning') String? frenchIdiomMeaning,
    @JsonKey(name: 'exampleUsage') String? exampleUsage,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiIdiomData;

  factory ApiIdiomData.fromJson(Map<String, dynamic> json) =>
      _$ApiIdiomDataFromJson(json);
}
