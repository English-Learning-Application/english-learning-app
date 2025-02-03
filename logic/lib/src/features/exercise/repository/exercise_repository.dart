import '../../../../logic.dart';

abstract class ExerciseRepository {
  Future<PronunciationAssessment> getPronunciationAssessment({
    required String text,
    required String audioPath,
  });

  Future<List<FlashCardLearning>> updateFlashCardLearning({
    required List<FlashCardLearningEntity> flashCardLearnings,
    required List<String> learnedItemIds,
    required List<String> skippedItemIds,
    required String courseId,
  });

  Future<List<QuizLearning>> updateQuizLearning({
    required List<QuizLearningEntity> quizLearnings,
    required List<String> correctItemIds,
    required List<String> incorrectItemIds,
    required String courseId,
  });

  Future<List<MatchingLearning>> updateMatchingLearning({
    required List<MatchingLearningEntity> matchingLearnings,
    required List<String> correctItemIds,
    required List<String> incorrectItemIds,
    required String courseId,
  });

  Future<List<PronunciationLearning>> updatePronunciationLearning({
    required List<PronunciationLearningEntity> pronunciationLearnings,
    required String courseId,
  });

  Future<LearningProgress> getLearningProgress({
    required List<String> courseIds,
  });
}
