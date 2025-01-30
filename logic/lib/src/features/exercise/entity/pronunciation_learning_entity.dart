import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../logic.dart';

part 'pronunciation_learning_entity.freezed.dart';

@freezed
class PronunciationLearningEntity with _$PronunciationLearningEntity {
  const PronunciationLearningEntity._();

  const factory PronunciationLearningEntity({
    @Default(PronunciationLearningEntity.defaultId) String id,
    @Default(PronunciationLearningEntity.defaultPronunciation)
    String pronunciation,
    @Default(PronunciationLearningEntity.defaultPronunciationSubTitle)
    String pronunciationSubTitle,
    @Default(PronunciationLearningEntity.defaultImage) String image,
    @Default(PronunciationLearningEntity.defaultLearningContentId)
    String learningContentId,
    @Default(PronunciationLearningEntity.defaultLearningContentType)
    LearningContentType learningContentType,
    @Default(PronunciationLearningEntity.defaultPronunciationAssessment)
    List<PronunciationAssessment> pronunciationAssessment,
  }) = _PronunciationLearningEntity;

  static const defaultId = '';
  static const defaultPronunciation = '';
  static const defaultPronunciationSubTitle = '';
  static const defaultImage = '';
  static const defaultLearningContentId = '';
  static const LearningContentType defaultLearningContentType =
      LearningContentType.word;
  static const List<PronunciationAssessment> defaultPronunciationAssessment =
      [];
}

@freezed
class PronunciationLearning with _$PronunciationLearning {
  const PronunciationLearning._();

  const factory PronunciationLearning({
    @Default(PronunciationLearning.defaultPronunciationLearningId) String id,
    @Default(PronunciationLearning.defaultLearningContentId)
    String learningContentId,
    @Default(PronunciationLearning.defaultItemId) String itemId,
    @Default(PronunciationLearning.defaultLearningContentType)
    LearningContentType learningContentType,
    @Default(PronunciationLearning.defaultPronunciationLearningContents)
    List<PronunciationAssessment> pronunciationLearningContents,
  }) = _PronunciationLearning;

  static const defaultPronunciationLearningId = '';
  static const defaultLearningContentId = '';
  static const defaultItemId = '';
  static const LearningContentType defaultLearningContentType =
      LearningContentType.word;
  static const List<PronunciationAssessment>
      defaultPronunciationLearningContents = [];
}
