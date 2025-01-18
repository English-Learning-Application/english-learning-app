import 'package:freezed_annotation/freezed_annotation.dart';

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
  }) = _MatchingLearningEntity;

  static const defaultId = '';
  static const List<String> defaultTargetTexts = [];
  static const List<String> defaultSourceTexts = [];
  static const defaultChosenTexts = '';
  static const defaultHint = '';
  static const defaultImage = '';
}
