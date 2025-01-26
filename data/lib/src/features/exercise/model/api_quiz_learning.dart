import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_quiz_learning.freezed.dart';
part 'api_quiz_learning.g.dart';

@freezed
class ApiQuizLearning with _$ApiQuizLearning {
  const factory ApiQuizLearning({
    @JsonKey(name: 'quizLearningId') String? quizLearningId,
    @JsonKey(name: 'learningContentId') String? learningContentId,
    @JsonKey(name: 'itemId') String? itemId,
    @JsonKey(name: 'learningContentType') String? learningContentType,
    @JsonKey(name: 'numberOfCorrect') int? numberOfCorrect,
    @JsonKey(name: 'numberOfIncorrect') int? numberOfIncorrect,
  }) = _ApiQuizLearning;

  factory ApiQuizLearning.fromJson(Map<String, dynamic> json) =>
      _$ApiQuizLearningFromJson(json);
}
