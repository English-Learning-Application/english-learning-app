import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_phonetic_data.freezed.dart';
part 'api_phonetic_data.g.dart';

@freezed
class ApiPhoneticData with _$ApiPhoneticData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiPhoneticData({
    @JsonKey(name: 'phoneticId') String? phoneticId,
    @JsonKey(name: 'phoneticSymbol') String? phoneticSymbol,
    @JsonKey(name: 'phoneticSound') String? phoneticSound,
    @JsonKey(name: 'englishPhoneticGuide') String? englishPhoneticGuide,
    @JsonKey(name: 'vietnamesePhoneticGuide') String? vietnamesePhoneticGuide,
    @JsonKey(name: 'frenchPhoneticGuide') String? frenchPhoneticGuide,
    @JsonKey(name: 'exampleUsage') String? exampleUsage,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiPhoneticData;

  factory ApiPhoneticData.fromJson(Map<String, dynamic> json) =>
      _$ApiPhoneticDataFromJson(json);
}
