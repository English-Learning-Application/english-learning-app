import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

@Injectable()
class ApiMatchingLearningMapper
    extends BaseDataMapper<ApiMatchingLearning, MatchingLearning>
    with DataMapperMixin {
  @override
  ApiMatchingLearning mapToData(MatchingLearning entity) {
    return ApiMatchingLearning(
      matchingLearningId: entity.id,
      learningContentId: entity.learningContentId,
      itemId: entity.itemId,
      learningContentType: entity.learningContentType.serverValue,
      numberOfCorrect: entity.numberOfCorrect,
      numberOfIncorrect: entity.numberOfIncorrect,
    );
  }

  @override
  MatchingLearning mapToEntity(ApiMatchingLearning? data) {
    return MatchingLearning(
      id: data?.matchingLearningId ??
          MatchingLearning.defaultMatchingLearningId,
      learningContentId:
          data?.learningContentId ?? MatchingLearning.defaultLearningContentId,
      itemId: data?.itemId ?? MatchingLearning.defaultItemId,
      learningContentType:
          LearningContentType.fromServerValue(data?.learningContentType) ??
              MatchingLearning.defaultLearningContentType,
      numberOfCorrect:
          data?.numberOfCorrect ?? MatchingLearning.defaultNumberOfCorrect,
      numberOfIncorrect:
          data?.numberOfIncorrect ?? MatchingLearning.defaultNumberOfIncorrect,
    );
  }
}
