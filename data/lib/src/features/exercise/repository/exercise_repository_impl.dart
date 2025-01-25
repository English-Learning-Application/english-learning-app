import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

@LazySingleton(as: ExerciseRepository)
class ExerciseRepositoryImpl implements ExerciseRepository {
  @override
  Future<PronunciationAssessment> getPronunciationAssessment(
      {required String id,
      required String text,
      required String audioPath,
      required LearningContentType learningContentType}) {
    // TODO: implement getPronunciationAssessment
    throw UnimplementedError();
  }
}
