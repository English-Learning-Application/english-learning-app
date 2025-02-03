import 'dart:convert';

import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

@Injectable()
class ApiPronunciationLearningMapper
    extends BaseDataMapper<ApiPronunciationLearning, PronunciationLearning>
    with DataMapperMixin {
  final ApiPronunciationAssessmentMapper _apiPronunciationAssessmentMapper;

  const ApiPronunciationLearningMapper(this._apiPronunciationAssessmentMapper);

  @override
  ApiPronunciationLearning mapToData(PronunciationLearning entity) {
    return ApiPronunciationLearning(
      pronunciationLearningId: entity.id,
      learningContentId: entity.learningContentId,
      itemId: entity.itemId,
      learningContentType: entity.learningContentType.serverValue,
      pronunciationLearningContents:
          _apiPronunciationAssessmentMapper.mapToListData(
        entity.pronunciationLearningContents,
      ),
      courseId: entity.courseId,
    );
  }

  @override
  PronunciationLearning mapToEntity(ApiPronunciationLearning? data) {
    return PronunciationLearning(
      id: data?.pronunciationLearningId ??
          PronunciationLearning.defaultPronunciationLearningId,
      learningContentId: data?.learningContentId ??
          PronunciationLearning.defaultLearningContentId,
      itemId: data?.itemId ?? PronunciationLearning.defaultItemId,
      learningContentType: LearningContentType.fromServerValue(
        data?.learningContentType,
      ),
      courseId: data?.courseId ?? PronunciationLearning.defaultCourseId,
      pronunciationLearningContents:
          _apiPronunciationAssessmentMapper.mapToListEntities(
        data?.pronunciationLearningContents,
      ),
    );
  }
}

@Injectable()
class ApiPronunciationAssessmentMapper
    extends BaseDataMapper<ApiPronunciationAssessment, PronunciationAssessment>
    with DataMapperMixin {
  @override
  ApiPronunciationAssessment mapToData(PronunciationAssessment entity) {
    return ApiPronunciationAssessment(
      pronunciationAssessmentId: entity.id,
      pronunciationLearningId: entity.pronunciationLearningId,
      pronunciationWord: jsonEncode(entity.words),
      score: entity.score,
      pronunciationAccentPrediction:
          jsonEncode(entity.pronunciationAccentPrediction),
      scoreCertificateEstimation: jsonEncode(entity.scoreEstimates),
    );
  }

  @override
  PronunciationAssessment mapToEntity(ApiPronunciationAssessment? data) {
    final words = jsonDecode(data?.pronunciationWord ?? '[]') as List;
    final pronunciationAccentPrediction = jsonDecode(
      data?.pronunciationAccentPrediction ?? '{}',
    ) as Map<String, dynamic>;
    final scoreEstimates = jsonDecode(data?.scoreCertificateEstimation ?? '{}')
        as Map<String, dynamic>;
    return PronunciationAssessment(
      id: data?.pronunciationAssessmentId ?? PronunciationAssessment.defaultId,
      pronunciationLearningId: data?.pronunciationLearningId ??
          PronunciationAssessment.defaultPronunciationLearningId,
      words: words
          .map(
            (e) => PronunciationWord(
              label: e['label'],
              score: e['score'] as int? ?? PronunciationWord.defaultScore,
            ),
          )
          .toList(),
      score: data?.score ?? PronunciationAssessment.defaultScore,
      pronunciationAccentPrediction: PronunciationAccentPrediction(
        usAccent: pronunciationAccentPrediction['en_US'] ??
            PronunciationAccentPrediction.defaultUsAccent,
        ukAccent: pronunciationAccentPrediction['en_UK'] ??
            PronunciationAccentPrediction.defaultUkAccent,
        ausAccent: pronunciationAccentPrediction['en_AU'] ??
            PronunciationAccentPrediction.defaultAusAccent,
      ),
      scoreEstimates: ScoreEstimates(
        ielts: scoreEstimates['ielts'] ?? ScoreEstimates.defaultIelts,
        toefl: scoreEstimates['toefl'] ?? ScoreEstimates.defaultToefl,
        cefr: scoreEstimates['cefr'] ?? ScoreEstimates.defaultCefr,
        pteGeneral:
            scoreEstimates['pte_general'] ?? ScoreEstimates.defaultPteGeneral,
      ),
    );
  }
}
