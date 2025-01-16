part of 'flash_card_learning.dart';

@Injectable()
class FlashCardLearningViewModel
    extends BaseViewModel<FlashCardLearningViewModelData> {
  final FlutterTts _flutterTts = getIt.get<FlutterTts>();
  FlashCardLearningViewModel() : super(const FlashCardLearningViewModelData());

  void onInit({
    required LearningContentType learningContentType,
    required LanguageCourseLearningContent languageCourseLearningContent,
    required LearningLanguage learningLanguage,
  }) {
    final numberOfLearningContent = switch (learningContentType) {
      LearningContentType.word => languageCourseLearningContent.words.length,
      LearningContentType.expression =>
        languageCourseLearningContent.expressions.length,
      LearningContentType.idiom => languageCourseLearningContent.idioms.length,
      LearningContentType.sentence =>
        languageCourseLearningContent.sentences.length,
      LearningContentType.phrasalVerb =>
        languageCourseLearningContent.phrasalVerbs.length,
      LearningContentType.tense => languageCourseLearningContent.tenses.length,
      LearningContentType.phonetics =>
        languageCourseLearningContent.phonetics.length,
    };
    updateData(
      viewModelData.copyWith(
        learningContentType: learningContentType,
        languageCourseLearningContent: languageCourseLearningContent,
        totalLearningContentCount: numberOfLearningContent,
        learningLanguage: learningLanguage,
      ),
    );
  }

  Future<void> speakFromText(String text, LearningLanguage language) async {
    double speechRate;
    double pitch;
    if (Platform.isIOS) {
      speechRate = 0.4;
      pitch = 1.2;
    } else {
      speechRate = 0.3;
      pitch = 1.0;
    }
    await _flutterTts.setLanguage(language.textToSpeechLanguage);
    await _flutterTts.setPitch(pitch);
    await _flutterTts.setSpeechRate(speechRate);
    await _flutterTts.speak(text);
  }

  void onSkip() {
    final currentIndex = viewModelData.currentLearningContentIndex;
    final learningContent = viewModelData.languageCourseLearningContent;
    final currentContentId = switch (viewModelData.learningContentType) {
      LearningContentType.word => learningContent.words[currentIndex].wordId,
      LearningContentType.expression =>
        learningContent.expressions[currentIndex].expressionId,
      LearningContentType.idiom => learningContent.idioms[currentIndex].idiomId,
      LearningContentType.sentence =>
        learningContent.sentences[currentIndex].sentenceId,
      LearningContentType.phrasalVerb =>
        learningContent.phrasalVerbs[currentIndex].phrasalVerbId,
      LearningContentType.tense => learningContent.tenses[currentIndex].tenseId,
      LearningContentType.phonetics =>
        learningContent.phonetics[currentIndex].phoneticId,
    };

    final skippedIds = [...viewModelData.skippedContentIds];
    skippedIds.add(currentContentId);

    updateData(
      viewModelData.copyWith(
        currentLearningContentIndex:
            currentIndex < viewModelData.totalLearningContentCount - 1
                ? currentIndex + 1
                : currentIndex,
        skippedContentIds: skippedIds,
      ),
    );
  }

  void onLearned() {
    final currentIndex = viewModelData.currentLearningContentIndex;
    final courseLearningContent = viewModelData.languageCourseLearningContent;
    final currentContentId = switch (viewModelData.learningContentType) {
      LearningContentType.word =>
        courseLearningContent.words[currentIndex].wordId,
      LearningContentType.expression =>
        courseLearningContent.expressions[currentIndex].expressionId,
      LearningContentType.idiom =>
        courseLearningContent.idioms[currentIndex].idiomId,
      LearningContentType.sentence =>
        courseLearningContent.sentences[currentIndex].sentenceId,
      LearningContentType.phrasalVerb =>
        courseLearningContent.phrasalVerbs[currentIndex].phrasalVerbId,
      LearningContentType.tense =>
        courseLearningContent.tenses[currentIndex].tenseId,
      LearningContentType.phonetics =>
        courseLearningContent.phonetics[currentIndex].phoneticId,
    };

    final learnedIds = [...viewModelData.learnedContentIds];
    learnedIds.add(currentContentId);

    updateData(
      viewModelData.copyWith(
        currentLearningContentIndex:
            currentIndex < viewModelData.totalLearningContentCount - 1
                ? currentIndex + 1
                : currentIndex,
        learnedContentIds: learnedIds,
      ),
    );
  }
}
