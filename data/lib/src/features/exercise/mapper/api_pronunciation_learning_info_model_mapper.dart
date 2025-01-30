import 'dart:convert';

import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

@Injectable()
class ApiPronunciationLearningInfoModelMapper extends BaseDataMapper<
    ApiPronunciationLearningInfoModel,
    PronunciationLearningEntity> with DataMapperMixin {
  @override
  ApiPronunciationLearningInfoModel mapToData(
      PronunciationLearningEntity entity) {
    return ApiPronunciationLearningInfoModel(
      itemId: entity.id,
      learningContentId: entity.learningContentId,
      learningContentType: entity.learningContentType.serverValue,
      pronunciationAssessmentInfo: entity.pronunciationAssessment
          .map(
            (e) => ApiPronunciationAssessmentLearningInfoModel(
              pronunciationWord: jsonEncode(
                e.words
                    .map((e) => {'label': e.label, 'score': e.score})
                    .toList(),
              ),
              score: e.score,
              pronunciationAccentPrediction: jsonEncode(
                {
                  'en_US': e.pronunciationAccentPrediction.usAccent,
                  'en_UK': e.pronunciationAccentPrediction.ukAccent,
                  'en_AU': e.pronunciationAccentPrediction.ausAccent,
                },
              ),
              scoreCertificateEstimation: jsonEncode(
                {
                  'ielts': e.scoreEstimates.ielts,
                  'toefl': e.scoreEstimates.toefl,
                  'cefr': e.scoreEstimates.cefr,
                  'pte_general': e.scoreEstimates.pteGeneral,
                },
              ),
            ),
          )
          .toList(),
    );
  }

  @override
  PronunciationLearningEntity mapToEntity(
      ApiPronunciationLearningInfoModel? data) {
    return PronunciationLearningEntity(
      id: data?.itemId ?? PronunciationLearningEntity.defaultId,
      learningContentId: data?.learningContentId ??
          PronunciationLearningEntity.defaultLearningContentId,
      learningContentType: LearningContentType.fromServerValue(
        data?.learningContentType,
      ),
    );
  }
}

@Injectable()
class ApiPronunciationAssessmentLearningInfoModelMapper extends BaseDataMapper<
    ApiPronunciationAssessmentLearningInfoModel,
    PronunciationAssessment> with DataMapperMixin {
  @override
  ApiPronunciationAssessmentLearningInfoModel mapToData(
      PronunciationAssessment entity) {
    return ApiPronunciationAssessmentLearningInfoModel(
      pronunciationWord: jsonEncode(
        entity.words.map((e) => {'label': e.label, 'score': e.score}).toList(),
      ),
      score: entity.score,
      pronunciationAccentPrediction: jsonEncode({
        'en_US': entity.pronunciationAccentPrediction.usAccent,
        'en_UK': entity.pronunciationAccentPrediction.ukAccent,
        'en_AU': entity.pronunciationAccentPrediction.ausAccent,
      }),
      scoreCertificateEstimation: jsonEncode({
        'ielts': entity.scoreEstimates.ielts,
        'toefl': entity.scoreEstimates.toefl,
        'cefr': entity.scoreEstimates.cefr,
        'pte_general': entity.scoreEstimates.pteGeneral,
      }),
    );
  }

  @override
  PronunciationAssessment mapToEntity(
      ApiPronunciationAssessmentLearningInfoModel? data) {
    return PronunciationAssessment(
      pronunciationLearningId:
          PronunciationAssessment.defaultPronunciationLearningId,
      words: (jsonDecode(data?.pronunciationWord ?? '[]') as List)
          .map((e) => PronunciationWord(
                label: e['label'],
                score: e['score'] as int? ?? PronunciationWord.defaultScore,
              ))
          .toList(),
      score: data?.score ?? PronunciationAssessment.defaultScore,
      pronunciationAccentPrediction: PronunciationAccentPrediction(
        usAccent:
            jsonDecode(data?.pronunciationAccentPrediction ?? '{}')['en_US'] ??
                PronunciationAccentPrediction.defaultUsAccent,
        ukAccent:
            jsonDecode(data?.pronunciationAccentPrediction ?? '{}')['en_UK'] ??
                PronunciationAccentPrediction.defaultUkAccent,
        ausAccent:
            jsonDecode(data?.pronunciationAccentPrediction ?? '{}')['en_AU'] ??
                PronunciationAccentPrediction.defaultAusAccent,
      ),
      scoreEstimates: ScoreEstimates(
        ielts: jsonDecode(data?.scoreCertificateEstimation ?? '{}')['ielts'] ??
            ScoreEstimates.defaultIelts,
        toefl: jsonDecode(data?.scoreCertificateEstimation ?? '{}')['toefl'] ??
            ScoreEstimates.defaultToefl,
        cefr: jsonDecode(data?.scoreCertificateEstimation ?? '{}')['cefr'] ??
            ScoreEstimates.defaultCefr,
        pteGeneral: jsonDecode(
                data?.scoreCertificateEstimation ?? '{}')['pte_general'] ??
            ScoreEstimates.defaultPteGeneral,
      ),
    );
  }
}
