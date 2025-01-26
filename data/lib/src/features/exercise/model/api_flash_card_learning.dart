import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_flash_card_learning.freezed.dart';
part 'api_flash_card_learning.g.dart';

@freezed
class ApiFlashCardLearning with _$ApiFlashCardLearning {
  @JsonSerializable(explicitToJson: true)
  const factory ApiFlashCardLearning({
    @JsonKey(name: 'flashCardLearningId') String? flashCardLearningId,
    @JsonKey(name: 'learningContentId') String? learningContentId,
    @JsonKey(name: 'itemId') String? itemId,
    @JsonKey(name: 'learningContentType') String? learningContentType,
    @JsonKey(name: 'numberOfLearned') int? numberOfLearned,
    @JsonKey(name: 'numberOfSkipped') int? numberOfSkipped,
  }) = _ApiFlashCardLearning;

  factory ApiFlashCardLearning.fromJson(Map<String, dynamic> json) =>
      _$ApiFlashCardLearningFromJson(json);
}
