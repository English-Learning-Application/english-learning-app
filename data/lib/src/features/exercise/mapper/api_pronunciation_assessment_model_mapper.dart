import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

@Injectable()
class ApiPronunciationAssessmentModelMapper extends BaseDataMapper<
    ApiPronunciationAssessmentModel,
    PronunciationAssessment> with DataMapperMixin {
  final ApiPronunciationWordMapper _apiPronunciationWordMapper;
  final ApiPronunciationAccentPredictionMapper
      _apiPronunciationAccentPredictionMapper;
  final ApiScoreEstimatesMapper _apiScoreEstimatesMapper;

  const ApiPronunciationAssessmentModelMapper(
    this._apiPronunciationWordMapper,
    this._apiPronunciationAccentPredictionMapper,
    this._apiScoreEstimatesMapper,
  );

  @override
  ApiPronunciationAssessmentModel mapToData(PronunciationAssessment entity) {
    return ApiPronunciationAssessmentModel(
      words: _apiPronunciationWordMapper.mapToListData(entity.words),
      score: entity.score,
      accentPrediction: _apiPronunciationAccentPredictionMapper
          .mapToData(entity.pronunciationAccentPrediction),
      scoreEstimates: _apiScoreEstimatesMapper.mapToData(entity.scoreEstimates),
    );
  }

  @override
  PronunciationAssessment mapToEntity(ApiPronunciationAssessmentModel? data) {
    return PronunciationAssessment(
      words: _apiPronunciationWordMapper.mapToListEntities(data?.words),
      score: data?.score ?? PronunciationAssessment.defaultScore,
      pronunciationAccentPrediction: _apiPronunciationAccentPredictionMapper
          .mapToEntity(data?.accentPrediction),
      scoreEstimates:
          _apiScoreEstimatesMapper.mapToEntity(data?.scoreEstimates),
    );
  }
}

@Injectable()
class ApiPronunciationWordMapper
    extends BaseDataMapper<ApiPronunciationWord, PronunciationWord>
    with DataMapperMixin {
  @override
  ApiPronunciationWord mapToData(PronunciationWord entity) {
    return ApiPronunciationWord(
      label: entity.label,
      score: entity.score,
    );
  }

  @override
  PronunciationWord mapToEntity(ApiPronunciationWord? data) {
    return PronunciationWord(
      label: data?.label ?? PronunciationWord.defaultLabel,
      score: data?.score ?? PronunciationWord.defaultScore,
    );
  }
}

@Injectable()
class ApiPronunciationAccentPredictionMapper extends BaseDataMapper<
    ApiPronunciationAccentPrediction,
    PronunciationAccentPrediction> with DataMapperMixin {
  @override
  ApiPronunciationAccentPrediction mapToData(
      PronunciationAccentPrediction entity) {
    return ApiPronunciationAccentPrediction(
      enUs: entity.usAccent,
      enUk: entity.ukAccent,
      enAu: entity.ausAccent,
    );
  }

  @override
  PronunciationAccentPrediction mapToEntity(
      ApiPronunciationAccentPrediction? data) {
    return PronunciationAccentPrediction(
      usAccent: data?.enUs ?? PronunciationAccentPrediction.defaultUsAccent,
      ukAccent: data?.enUk ?? PronunciationAccentPrediction.defaultUkAccent,
      ausAccent: data?.enAu ?? PronunciationAccentPrediction.defaultAusAccent,
    );
  }
}

@Injectable()
class ApiScoreEstimatesMapper
    extends BaseDataMapper<ApiScoreEstimates, ScoreEstimates>
    with DataMapperMixin {
  @override
  ApiScoreEstimates mapToData(ScoreEstimates entity) {
    return ApiScoreEstimates(
      ielts: entity.ielts,
      toefl: entity.toefl,
      cefr: entity.cefr,
      pteGeneral: entity.pteGeneral,
    );
  }

  @override
  ScoreEstimates mapToEntity(ApiScoreEstimates? data) {
    return ScoreEstimates(
      ielts: data?.ielts ?? ScoreEstimates.defaultIelts,
      toefl: data?.toefl ?? ScoreEstimates.defaultToefl,
      cefr: data?.cefr ?? ScoreEstimates.defaultCefr,
      pteGeneral: data?.pteGeneral ?? ScoreEstimates.defaultPteGeneral,
    );
  }
}
