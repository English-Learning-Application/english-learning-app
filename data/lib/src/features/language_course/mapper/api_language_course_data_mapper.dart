import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class ApiLanguageCourseDataMapper
    extends BaseDataMapper<ApiLanguageCourseData, LanguageCourse>
    with DataMapperMixin {
  final ApiLanguageCourseLearningContentDataMapper
      _apiLanguageCourseLearningContentDataMapper;

  const ApiLanguageCourseDataMapper(
    this._apiLanguageCourseLearningContentDataMapper,
  );

  @override
  LanguageCourse mapToEntity(data) {
    return LanguageCourse(
      languageCourseId:
          data?.languageCourseId ?? LanguageCourse.defaultLanguageCourseId,
      language: LearningLanguage.fromServerValue(data?.language) ??
          LanguageCourse.defaultLanguage,
      level: LanguageLevel.fromServerValue(data?.level) ??
          LanguageCourse.defaultLevel,
      learningType: LearningType.fromServerValue(data?.learningType) ??
          LanguageCourse.defaultLearningType,
      requiredSubscription: data?.requiredSubscription ??
          LanguageCourse.defaultRequiredSubscription,
      languageCourseLearningContents:
          _apiLanguageCourseLearningContentDataMapper
              .mapToListEntities(data?.languageCourseLearningContents),
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }

  @override
  ApiLanguageCourseData mapToData(LanguageCourse entity) {
    return ApiLanguageCourseData(
      languageCourseId: entity.languageCourseId,
      language: entity.language.serverValue,
      level: entity.level.serverValue,
      learningType: entity.learningType.serverValue,
      requiredSubscription: entity.requiredSubscription,
      languageCourseLearningContents:
          _apiLanguageCourseLearningContentDataMapper
              .mapToListData(entity.languageCourseLearningContents),
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }
}

@Injectable()
class ApiLanguageCourseLearningContentDataMapper extends BaseDataMapper<
    ApiLanguageCourseLearningContentData,
    LanguageCourseLearningContent> with DataMapperMixin {
  final ApiWordDataMapper _apiWordDataMapper;
  final ApiExpressionDataMapper _apiExpressionDataMapper;
  final ApiIdiomDataMapper _apiIdiomDataMapper;
  final ApiSentenceDataMapper _apiSentenceDataMapper;
  final ApiPhrasalVerbDataMapper _apiPhrasalVerbDataMapper;
  final ApiTenseDataMapper _apiTenseDataMapper;
  final ApiPhoneticDataMapper _apiPhoneticDataMapper;

  const ApiLanguageCourseLearningContentDataMapper(
    this._apiWordDataMapper,
    this._apiExpressionDataMapper,
    this._apiIdiomDataMapper,
    this._apiSentenceDataMapper,
    this._apiPhrasalVerbDataMapper,
    this._apiTenseDataMapper,
    this._apiPhoneticDataMapper,
  );

  @override
  ApiLanguageCourseLearningContentData mapToData(
      LanguageCourseLearningContent entity) {
    return ApiLanguageCourseLearningContentData(
      languageCourseLearningContentId: entity.languageCourseLearningContentId,
      learningContentType: entity.learningContentType.serverValue,
      words: _apiWordDataMapper.mapToListData(entity.words),
      expressions: _apiExpressionDataMapper.mapToListData(entity.expressions),
      idioms: _apiIdiomDataMapper.mapToListData(entity.idioms),
      sentences: _apiSentenceDataMapper.mapToListData(entity.sentences),
      phrasalVerbs:
          _apiPhrasalVerbDataMapper.mapToListData(entity.phrasalVerbs),
      tenses: _apiTenseDataMapper.mapToListData(entity.tenses),
      phonetics: _apiPhoneticDataMapper.mapToListData(entity.phonetics),
      englishDescription: entity.englishDescription,
      vietnameseDescription: entity.vietnameseDescription,
      frenchDescription: entity.frenchDescription,
      englishTitle: entity.englishTitle,
      vietnameseTitle: entity.vietnameseTitle,
      frenchTitle: entity.frenchTitle,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  LanguageCourseLearningContent mapToEntity(
      ApiLanguageCourseLearningContentData? data) {
    return LanguageCourseLearningContent(
      languageCourseLearningContentId: data?.languageCourseLearningContentId ??
          LanguageCourseLearningContent.defaultLanguageCourseLearningContentId,
      learningContentType:
          LearningContentType.fromServerValue(data?.learningContentType) ??
              LanguageCourseLearningContent.defaultLearningContentType,
      words: _apiWordDataMapper.mapToListEntities(data?.words),
      expressions:
          _apiExpressionDataMapper.mapToListEntities(data?.expressions),
      idioms: _apiIdiomDataMapper.mapToListEntities(data?.idioms),
      sentences: _apiSentenceDataMapper.mapToListEntities(data?.sentences),
      phrasalVerbs:
          _apiPhrasalVerbDataMapper.mapToListEntities(data?.phrasalVerbs),
      tenses: _apiTenseDataMapper.mapToListEntities(data?.tenses),
      phonetics: _apiPhoneticDataMapper.mapToListEntities(data?.phonetics),
      englishDescription: data?.englishDescription ??
          LanguageCourseLearningContent.defaultEnglishDescription,
      vietnameseDescription: data?.vietnameseDescription ??
          LanguageCourseLearningContent.defaultVietnameseDescription,
      frenchDescription: data?.frenchDescription ??
          LanguageCourseLearningContent.defaultFrenchDescription,
      englishTitle: data?.englishTitle ??
          LanguageCourseLearningContent.defaultEnglishTitle,
      vietnameseTitle: data?.vietnameseTitle ??
          LanguageCourseLearningContent.defaultVietnameseTitle,
      frenchTitle:
          data?.frenchTitle ?? LanguageCourseLearningContent.defaultFrenchTitle,
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
