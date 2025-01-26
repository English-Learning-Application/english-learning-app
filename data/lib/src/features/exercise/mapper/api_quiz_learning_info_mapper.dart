import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

@Injectable()
class ApiQuizLearningInfoMapper
    extends BaseDataMapper<ApiQuizLearningInfoModel, QuizLearningEntity>
    with DataMapperMixin {
  @override
  ApiQuizLearningInfoModel mapToData(QuizLearningEntity entity) {
    return ApiQuizLearningInfoModel(
      itemId: entity.id,
      learningContentId: entity.learningContentId,
      learningContentType: entity.learningContentType.serverValue,
    );
  }

  @override
  QuizLearningEntity mapToEntity(ApiQuizLearningInfoModel? data) {
    return QuizLearningEntity(
      id: data?.itemId ?? QuizLearningEntity.defaultId,
      learningContentId: data?.learningContentId ??
          QuizLearningEntity.defaultLearningContentId,
      learningContentType:
          LearningContentType.fromServerValue(data?.learningContentType) ??
              QuizLearningEntity.defaultLearningContentType,
    );
  }
}
