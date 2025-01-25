part of 'matching_learning.dart';

@freezed
class MatchingLearningViewModelData extends BaseViewModelData
    with _$MatchingLearningViewModelData {
  const MatchingLearningViewModelData._();
  const factory MatchingLearningViewModelData({
    @Default([]) List<MatchingLearningEntity> matchingLearningEntities,
    @Default(LearningLanguage.english) LearningLanguage learningLanguage,
    @Default([])
    List<LanguageCourseLearningContent> languageCourseLearningContent,
    @Default(0) int currentLearningContentIndex,
    @Default(0) int totalLearningContentCount,

    /// The list of texts that are currently being dragged
    /// to match with the target texts
    /// The key is the index of the source text in the source texts list
    @Default([]) List<Map<int, String>?> currentDraggedTexts,
    @Default([]) List<String> learnedContentIds,
    @Default([]) List<String> skippedContentIds,
    @Default('') String errorMessage,
  }) = _MatchingLearningViewModelData;
}
