import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

@Injectable()
class ApiQuizLearningMapper
    extends BaseDataMapper<ApiQuizLearning, QuizLearning> with DataMapperMixin {
  @override
  ApiQuizLearning mapToData(QuizLearning entity) {
    return ApiQuizLearning(
      quizLearningId: entity.id,
      learningContentId: entity.learningContentId,
      itemId: entity.itemId,
      learningContentType: entity.learningContentType.serverValue,
      numberOfCorrect: entity.numberOfCorrect,
      courseId: entity.courseId,
      numberOfIncorrect: entity.numberOfIncorrect,
    );
  }

  @override
  QuizLearning mapToEntity(ApiQuizLearning? data) {
    return QuizLearning(
      id: data?.quizLearningId ?? QuizLearning.defaultQuizLearningId,
      learningContentId:
          data?.learningContentId ?? QuizLearning.defaultLearningContentId,
      itemId: data?.itemId ?? QuizLearning.defaultItemId,
      learningContentType:
          LearningContentType.fromServerValue(data?.learningContentType) ??
              QuizLearning.defaultLearningContentType,
      numberOfCorrect:
          data?.numberOfCorrect ?? QuizLearning.defaultNumberOfCorrect,
      courseId: data?.courseId ?? QuizLearning.defaultCourseId,
      numberOfIncorrect:
          data?.numberOfIncorrect ?? QuizLearning.defaultNumberOfIncorrect,
    );
  }
}
