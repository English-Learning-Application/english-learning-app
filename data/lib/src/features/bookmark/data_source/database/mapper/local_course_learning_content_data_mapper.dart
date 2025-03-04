import 'package:data/data.dart';
import 'package:data/src/features/bookmark/data_source/database/mapper/local_expression_data_mapper.dart';
import 'package:data/src/features/bookmark/data_source/database/mapper/local_idiom_data_mapper.dart';
import 'package:data/src/features/bookmark/data_source/database/mapper/local_phonetic_data_mapper.dart';
import 'package:data/src/features/bookmark/data_source/database/mapper/local_phrasal_verb_data_mapper.dart';
import 'package:data/src/features/bookmark/data_source/database/mapper/local_sentence_data_mapper.dart';
import 'package:data/src/features/bookmark/data_source/database/mapper/local_tense_data_mapper.dart';
import 'package:data/src/features/bookmark/data_source/database/mapper/local_word_data_mapper.dart';
import 'package:data/src/features/bookmark/data_source/database/model/local_course_learning_content_data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class LocalCourseLearningContentDataMapper extends BaseDataMapper<
    LocalCourseLearningContentData,
    LanguageCourseLearningContent> with DataMapperMixin {
  final LocalExpressionDataMapper _localExpressionDataMapper;
  final LocalWordDataMapper _localWordDataMapper;
  final LocalIdiomDataMapper _localIdiomDataMapper;
  final LocalPhrasalVerbDataMapper _localPhrasalVerbDataMapper;
  final LocalPhoneticDataMapper _localPhoneticDataMapper;
  final LocalTenseDataMapper _localTenseDataMapper;
  final LocalSentenceDataMapper _localSentenceDataMapper;

  LocalCourseLearningContentDataMapper(
    this._localExpressionDataMapper,
    this._localWordDataMapper,
    this._localIdiomDataMapper,
    this._localPhrasalVerbDataMapper,
    this._localPhoneticDataMapper,
    this._localTenseDataMapper,
    this._localSentenceDataMapper,
  );

  @override
  LocalCourseLearningContentData mapToData(
      LanguageCourseLearningContent entity) {
    return LocalCourseLearningContentData(
      languageCourseLearningContentId: entity.languageCourseLearningContentId,
      learningContentType: entity.learningContentType.serverValue,
      englishTitle: entity.englishTitle,
      vietnameseTitle: entity.vietnameseTitle,
      frenchTitle: entity.frenchTitle,
      englishDescription: entity.englishDescription,
      vietnameseDescription: entity.vietnameseDescription,
      frenchDescription: entity.frenchDescription,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    )
      ..words.addAll(
        _localWordDataMapper.mapToListData(entity.words),
      )
      ..expressions.addAll(
        _localExpressionDataMapper.mapToListData(entity.expressions),
      )
      ..idioms.addAll(
        _localIdiomDataMapper.mapToListData(entity.idioms),
      )
      ..sentences.addAll(
        _localSentenceDataMapper.mapToListData(entity.sentences),
      )
      ..phrasalVerbs.addAll(
        _localPhrasalVerbDataMapper.mapToListData(entity.phrasalVerbs),
      )
      ..tenses.addAll(
        _localTenseDataMapper.mapToListData(entity.tenses),
      )
      ..phonetics.addAll(
        _localPhoneticDataMapper.mapToListData(entity.phonetics),
      );
  }

  @override
  LanguageCourseLearningContent mapToEntity(
      LocalCourseLearningContentData? data) {
    return LanguageCourseLearningContent(
      languageCourseLearningContentId: data?.languageCourseLearningContentId ??
          LanguageCourseLearningContent.defaultLanguageCourseLearningContentId,
      learningContentType: LearningContentType.fromServerValue(
        data?.learningContentType,
      ),
      englishTitle: data?.englishTitle ??
          LanguageCourseLearningContent.defaultEnglishTitle,
      vietnameseTitle: data?.vietnameseTitle ??
          LanguageCourseLearningContent.defaultVietnameseTitle,
      frenchTitle:
          data?.frenchTitle ?? LanguageCourseLearningContent.defaultFrenchTitle,
      englishDescription: data?.englishDescription ??
          LanguageCourseLearningContent.defaultEnglishDescription,
      vietnameseDescription: data?.vietnameseDescription ??
          LanguageCourseLearningContent.defaultVietnameseDescription,
      frenchDescription: data?.frenchDescription ??
          LanguageCourseLearningContent.defaultFrenchDescription,
      words: _localWordDataMapper.mapToListEntities(data?.words),
      expressions:
          _localExpressionDataMapper.mapToListEntities(data?.expressions),
      idioms: _localIdiomDataMapper.mapToListEntities(data?.idioms),
      sentences: _localSentenceDataMapper.mapToListEntities(data?.sentences),
      phrasalVerbs:
          _localPhrasalVerbDataMapper.mapToListEntities(data?.phrasalVerbs),
      tenses: _localTenseDataMapper.mapToListEntities(data?.tenses),
      phonetics: _localPhoneticDataMapper.mapToListEntities(data?.phonetics),
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
