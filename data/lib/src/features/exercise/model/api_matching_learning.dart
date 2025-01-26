import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_matching_learning.freezed.dart';
part 'api_matching_learning.g.dart';

@freezed
class ApiMatchingLearning with _$ApiMatchingLearning {
  @JsonSerializable(explicitToJson: true)
  const factory ApiMatchingLearning({
    @JsonKey(name: 'matchingLearningId') String? matchingLearningId,
    @JsonKey(name: 'learningContentId') String? learningContentId,
    @JsonKey(name: 'itemId') String? itemId,
    @JsonKey(name: 'learningContentType') String? learningContentType,
    @JsonKey(name: 'numberOfCorrect') int? numberOfCorrect,
    @JsonKey(name: 'numberOfIncorrect') int? numberOfIncorrect,
  }) = _ApiMatchingLearning;

  factory ApiMatchingLearning.fromJson(Map<String, dynamic> json) =>
      _$ApiMatchingLearningFromJson(json);
}
