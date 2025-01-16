part of 'flash_card_learning.dart';

@freezed
class FlashCardLearningViewModelData extends BaseViewModelData
    with _$FlashCardLearningViewModelData {
  const FlashCardLearningViewModelData._();

  const factory FlashCardLearningViewModelData({
    @Default(LearningContentType.word) LearningContentType learningContentType,
    @Default(LearningLanguage.english) LearningLanguage learningLanguage,
    @Default(LanguageCourseLearningContent())
    LanguageCourseLearningContent languageCourseLearningContent,
    @Default(0) int currentLearningContentIndex,
    @Default(0) int totalLearningContentCount,
    @Default([]) List<String> learnedContentIds,
    @Default([]) List<String> skippedContentIds,
  }) = _FlashCardLearningViewModelData;
}
