import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

@Injectable()
class ApiFlashCardLearningInfoMapper extends BaseDataMapper<
    ApiFlashCardLearningInfoModel,
    FlashCardLearningEntity> with DataMapperMixin {
  @override
  FlashCardLearningEntity mapToEntity(ApiFlashCardLearningInfoModel? data) {
    return FlashCardLearningEntity(
      id: data?.itemId ?? FlashCardLearningEntity.defaultId,
      learningContentId: data?.learningContentId ??
          FlashCardLearningEntity.defaultLearningContentId,
      learningContentType:
          LearningContentType.fromServerValue(data?.learningContentType) ??
              FlashCardLearningEntity.defaultLearningContentType,
    );
  }

  @override
  ApiFlashCardLearningInfoModel mapToData(FlashCardLearningEntity entity) {
    return ApiFlashCardLearningInfoModel(
      itemId: entity.id,
      learningContentId: entity.learningContentId,
      learningContentType: entity.learningContentType.serverValue,
    );
  }
}
