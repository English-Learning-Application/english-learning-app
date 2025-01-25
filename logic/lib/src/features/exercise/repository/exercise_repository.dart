import '../../../../logic.dart';

abstract class ExerciseRepository {
  Future<PronunciationAssessment> getPronunciationAssessment({
    required String id,
    required String text,
    required String audioPath,
    required LearningContentType learningContentType,
  });
}
