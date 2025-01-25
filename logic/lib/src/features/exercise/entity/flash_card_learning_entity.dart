import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../logic.dart';

part 'flash_card_learning_entity.freezed.dart';

@freezed
class FlashCardLearningEntity with _$FlashCardLearningEntity {
  const factory FlashCardLearningEntity({
    @Default(FlashCardLearningEntity.defaultId) String id,
    @Default(FlashCardLearningEntity.defaultFrontCardText) String frontCardText,
    @Default(FlashCardLearningEntity.defaultFrontCardSubText)
    String frontCardSubText,
    @Default(FlashCardLearningEntity.defaultBackCardText) String backCardText,
    @Default(FlashCardLearningEntity.defaultBackCardSubText)
    String backCardSubText,
    @Default(FlashCardLearningEntity.defaultImage) String image,
    @Default(FlashCardLearningEntity.defaultLearningContentId)
    String learningContentId,
    @Default(FlashCardLearningEntity.defaultLearningContentType)
    LearningContentType learningContentType,
  }) = _FlashCardLearningEntity;

  static const defaultId = '';
  static const defaultFrontCardText = '';
  static const defaultFrontCardSubText = '';
  static const defaultBackCardText = '';
  static const defaultBackCardSubText = '';
  static const defaultImage = '';
  static const defaultLearningContentId = '';
  static const LearningContentType defaultLearningContentType =
      LearningContentType.word;
}
