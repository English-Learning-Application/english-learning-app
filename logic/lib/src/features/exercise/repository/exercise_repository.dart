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
  });

  Future<List<QuizLearning>> updateQuizLearning({
    required List<QuizLearningEntity> quizLearnings,
    required List<String> correctItemIds,
    required List<String> incorrectItemIds,
  });

  Future<List<MatchingLearning>> updateMatchingLearning({
    required List<MatchingLearningEntity> matchingLearnings,
    required List<String> correctItemIds,
    required List<String> incorrectItemIds,
  });

  Future<List<PronunciationLearning>> updatePronunciationLearning({
    required List<PronunciationLearningEntity> pronunciationLearnings,
  });

  Future<LearningProgress> getLearningProgress();
}
