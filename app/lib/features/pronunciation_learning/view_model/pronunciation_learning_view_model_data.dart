part of 'pronunciation_learning.dart';

@freezed
class PronunciationLearningViewModelData extends BaseViewModelData
    with _$PronunciationLearningViewModelData {
  const PronunciationLearningViewModelData._();

  const factory PronunciationLearningViewModelData({
    @Default('') String courseId,
    @Default([])
    List<PronunciationLearningEntity> pronunciationLearningEntities,
    @Default(LearningLanguage.english) LearningLanguage learningLanguage,
    @Default([])
    List<LanguageCourseLearningContent> languageCourseLearningContent,
    @Default(0) int currentLearningContentIndex,
    @Default(0) int totalLearningContentCount,
    @Default([]) List<String> correctContentIds,
    @Default(false) bool isSpeaking,
    @Default('') String recordedFilePath,
  }) = _PronunciationLearningViewModelData;
}
