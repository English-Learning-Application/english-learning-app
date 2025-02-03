import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

@Injectable()
class ApiFlashCardLearningMapper
    extends BaseDataMapper<ApiFlashCardLearning, FlashCardLearning>
    with DataMapperMixin {
  @override
  ApiFlashCardLearning mapToData(FlashCardLearning entity) {
    return ApiFlashCardLearning(
      flashCardLearningId: entity.id,
      learningContentId: entity.learningContentId,
      itemId: entity.itemId,
      courseId: entity.courseId,
      learningContentType: entity.learningContentType.serverValue,
      numberOfLearned: entity.numberOfLearned,
      numberOfSkipped: entity.numberOfSkipped,
    );
  }

  @override
  FlashCardLearning mapToEntity(ApiFlashCardLearning? data) {
    return FlashCardLearning(
      id: data?.flashCardLearningId ??
          FlashCardLearning.defaultFlashCardLearningId,
      learningContentId:
          data?.learningContentId ?? FlashCardLearning.defaultLearningContentId,
      itemId: data?.itemId ?? FlashCardLearning.defaultItemId,
      learningContentType:
          LearningContentType.fromServerValue(data?.learningContentType) ??
              FlashCardLearning.defaultLearningContentType,
      courseId: data?.courseId ?? FlashCardLearning.defaultCourseId,
      numberOfLearned:
          data?.numberOfLearned ?? FlashCardLearning.defaultNumberOfLearned,
      numberOfSkipped:
          data?.numberOfSkipped ?? FlashCardLearning.defaultNumberOfSkipped,
    );
  }
}
