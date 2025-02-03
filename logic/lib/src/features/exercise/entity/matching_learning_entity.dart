import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../logic.dart';

part 'matching_learning_entity.freezed.dart';

@freezed
class MatchingLearningEntity with _$MatchingLearningEntity {
  const MatchingLearningEntity._();

  const factory MatchingLearningEntity({
    @Default(MatchingLearningEntity.defaultId) String id,
    @Default(MatchingLearningEntity.defaultTargetTexts)
    List<String> targetTexts,
    @Default(MatchingLearningEntity.defaultSourceTexts)
    List<String> sourceTexts,
    @Default(MatchingLearningEntity.defaultChosenTexts) String chosenTexts,
    @Default(MatchingLearningEntity.defaultImage) String image,
    @Default(MatchingLearningEntity.defaultHint) String hint,
    @Default(MatchingLearningEntity.defaultLearningContentId)
    String learningContentId,
    @Default(MatchingLearningEntity.defaultLearningContentType)
    LearningContentType learningContentType,
  }) = _MatchingLearningEntity;

  static const defaultId = '';
  static const List<String> defaultTargetTexts = [];
  static const List<String> defaultSourceTexts = [];
  static const defaultChosenTexts = '';
  static const defaultHint = '';
  static const defaultImage = '';
  static const defaultLearningContentId = '';
  static const LearningContentType defaultLearningContentType =
      LearningContentType.word;
}

@freezed
class MatchingLearning with _$MatchingLearning {
  const MatchingLearning._();

  const factory MatchingLearning({
    @Default(MatchingLearning.defaultMatchingLearningId) String id,
    @Default(MatchingLearning.defaultLearningContentId)
    String learningContentId,
    @Default(MatchingLearning.defaultItemId) String itemId,
    @Default(MatchingLearning.defaultLearningContentType)
    LearningContentType learningContentType,
    @Default(MatchingLearning.defaultCourseId) String courseId,
    @Default(MatchingLearning.defaultNumberOfCorrect) int numberOfCorrect,
    @Default(MatchingLearning.defaultNumberOfIncorrect) int numberOfIncorrect,
  }) = _MatchingLearning;

  static const defaultMatchingLearningId = '';
  static const defaultLearningContentId = '';
  static const defaultItemId = '';
  static const LearningContentType defaultLearningContentType =
      LearningContentType.word;
  static const defaultCourseId = '';
  static const defaultNumberOfCorrect = 0;
  static const defaultNumberOfIncorrect = 0;
}
