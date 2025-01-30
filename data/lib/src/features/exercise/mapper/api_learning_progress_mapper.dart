import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

@Injectable()
class ApiLearningProgressMapper
    extends BaseDataMapper<ApiLearningProgress, LearningProgress>
    with DataMapperMixin {
  final ApiFlashCardLearningMapper _apiFlashCardLearningMapper;
  final ApiQuizLearningMapper _apiQuizLearningMapper;
  final ApiMatchingLearningMapper _apiMatchingLearningMapper;
  final ApiPronunciationLearningMapper _apiPronunciationLearningMapper;

  const ApiLearningProgressMapper(
    this._apiFlashCardLearningMapper,
    this._apiQuizLearningMapper,
    this._apiMatchingLearningMapper,
    this._apiPronunciationLearningMapper,
  );

  @override
  ApiLearningProgress mapToData(LearningProgress entity) {
    return ApiLearningProgress(
      flashCardProgress:
          _apiFlashCardLearningMapper.mapToListData(entity.flashCardProgress),
      quizProgress: _apiQuizLearningMapper.mapToListData(entity.quizProgress),
      matchingProgress:
          _apiMatchingLearningMapper.mapToListData(entity.matchingProgress),
      pronunciationProgress: _apiPronunciationLearningMapper
          .mapToListData(entity.pronunciationProgress),
    );
  }

  @override
  LearningProgress mapToEntity(ApiLearningProgress? data) {
    return LearningProgress(
      flashCardProgress: _apiFlashCardLearningMapper
          .mapToListEntities(data?.flashCardProgress),
      quizProgress:
          _apiQuizLearningMapper.mapToListEntities(data?.quizProgress),
      matchingProgress:
          _apiMatchingLearningMapper.mapToListEntities(data?.matchingProgress),
      pronunciationProgress: _apiPronunciationLearningMapper
          .mapToListEntities(data?.pronunciationProgress),
    );
  }
}
