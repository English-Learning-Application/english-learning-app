import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../logic.dart';

part 'learning_progress.freezed.dart';

@freezed
class LearningProgress with _$LearningProgress {
  const LearningProgress._();

  const factory LearningProgress({
    @Default(LearningProgress.defaultFlashCardProgress)
    List<FlashCardLearning> flashCardProgress,
    @Default(LearningProgress.defaultQuizProgress)
    List<QuizLearning> quizProgress,
    @Default(LearningProgress.defaultMatchingProgress)
    List<MatchingLearning> matchingProgress,
    @Default(LearningProgress.defaultPronunciationProgress)
    List<PronunciationLearning> pronunciationProgress,
  }) = _LearningProgress;

  static const List<FlashCardLearning> defaultFlashCardProgress = [];
  static const List<QuizLearning> defaultQuizProgress = [];
  static const List<MatchingLearning> defaultMatchingProgress = [];
  static const List<PronunciationLearning> defaultPronunciationProgress = [];
}
