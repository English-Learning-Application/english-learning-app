part of 'listening_learning.dart';

@freezed
class ListeningLearningViewModelData extends BaseViewModelData
    with _$ListeningLearningViewModelData {
  const ListeningLearningViewModelData._();

  const factory ListeningLearningViewModelData({
    @Default(LanguageCourseLearningContent())
    LanguageCourseLearningContent languageCourseLearningContent,
    @Default(LearningLanguage.english) LearningLanguage learningLanguage,
    @Default([]) List<Sentence> sentences,
    @Default([]) List<GlobalKey> sentenceKeys,
    @Default(0) int currentSentenceIndex,
    @Default(0) int totalSentenceCount,
    @Default(false) bool isPlaying,
  }) = _ListeningLearningViewModelData;
}
