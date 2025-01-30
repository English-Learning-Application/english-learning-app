import 'package:data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_learning_progress.freezed.dart';
part 'api_learning_progress.g.dart';

@freezed
class ApiLearningProgress with _$ApiLearningProgress {
  @JsonSerializable(explicitToJson: true)
  const factory ApiLearningProgress({
    @JsonKey(name: 'flashCardProgress')
    List<ApiFlashCardLearning>? flashCardProgress,
    @JsonKey(name: 'quizProgress') List<ApiQuizLearning>? quizProgress,
    @JsonKey(name: 'matchingProgress')
    List<ApiMatchingLearning>? matchingProgress,
    @JsonKey(name: 'pronunciationProgress')
    List<ApiPronunciationLearning>? pronunciationProgress,
  }) = _ApiLearningProgress;

  factory ApiLearningProgress.fromJson(Map<String, dynamic> json) =>
      _$ApiLearningProgressFromJson(json);
}
