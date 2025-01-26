import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

@Injectable()
class ApiMatchingLearningInfoMapper
    extends BaseDataMapper<ApiMatchingLearningInfoModel, MatchingLearningEntity>
    with DataMapperMixin {
  @override
  ApiMatchingLearningInfoModel mapToData(MatchingLearningEntity entity) {
    return ApiMatchingLearningInfoModel(
      itemId: entity.id,
      learningContentId: entity.learningContentId,
      learningContentType: entity.learningContentType.serverValue,
    );
  }

  @override
  MatchingLearningEntity mapToEntity(ApiMatchingLearningInfoModel? data) {
    return MatchingLearningEntity(
      id: data?.itemId ?? MatchingLearningEntity.defaultId,
      learningContentId: data?.learningContentId ??
          MatchingLearningEntity.defaultLearningContentId,
      learningContentType:
          LearningContentType.fromServerValue(data?.learningContentType) ??
              MatchingLearningEntity.defaultLearningContentType,
    );
  }
}
