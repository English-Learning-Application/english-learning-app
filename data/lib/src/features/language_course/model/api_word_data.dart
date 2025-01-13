import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_word_data.freezed.dart';
part 'api_word_data.g.dart';

@freezed
class ApiWordData with _$ApiWordData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiWordData({
    @JsonKey(name: 'wordId') String? wordId,
    @JsonKey(name: 'englishWord') String? englishWord,
    @JsonKey(name: 'vietnameseWord') String? vietnameseWord,
    @JsonKey(name: 'frenchWord') String? frenchWord,
    @JsonKey(name: 'wordType') String? wordType,
    @JsonKey(name: 'imageUrl') String? imageUrl,
    @JsonKey(name: 'pronunciation') String? pronunciation,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiWordData;

  factory ApiWordData.fromJson(Map<String, dynamic> json) =>
      _$ApiWordDataFromJson(json);
}
