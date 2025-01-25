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
    PronunciationAssessment pronunciationAssessment,
  }) = _PronunciationLearningEntity;

  static const defaultId = '';
  static const defaultPronunciation = '';
  static const defaultPronunciationSubTitle = '';
  static const defaultImage = '';
  static const defaultLearningContentId = '';
  static const LearningContentType defaultLearningContentType =
      LearningContentType.word;
  static const defaultPronunciationAssessment = PronunciationAssessment();
}
