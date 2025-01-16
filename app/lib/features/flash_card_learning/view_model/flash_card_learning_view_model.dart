part of 'flash_card_learning.dart';

@Injectable()
class FlashCardLearningViewModel
    extends BaseViewModel<FlashCardLearningViewModelData> {
  final FlutterTts _flutterTts = getIt.get<FlutterTts>();
  final AudioPlayer _audioPlayer = getIt.get<AudioPlayer>();
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
    final List<FlashCardLearningEntity> flashCardLearningEntities = [];
    switch (learningContentType) {
      case LearningContentType.word:
        for (final word in languageCourseLearningContent.words) {
          final frontCardText = switch (learningLanguage) {
            LearningLanguage.english => word.englishWord,
            LearningLanguage.vietnamese => word.vietnameseWord,
            LearningLanguage.french => word.frenchWord,
          };
          final backCardText = switch (learningLanguage) {
            LearningLanguage.english => word.vietnameseWord,
            LearningLanguage.vietnamese => word.frenchWord,
            LearningLanguage.french => word.englishWord,
          };
          final backCardSubText = switch (learningLanguage) {
            LearningLanguage.english => word.frenchWord,
            LearningLanguage.vietnamese => word.englishWord,
            LearningLanguage.french => word.vietnameseWord,
          };
          final flashCardLearningEntity = FlashCardLearningEntity(
            id: word.wordId,
            frontCardText: frontCardText,
            frontCardSubText:
                "${word.wordType.wordTypeName} - ${word.pronunciation}",
            backCardText: backCardText,
            backCardSubText: backCardSubText,
            image: word.imageUrlItem,
          );
          flashCardLearningEntities.add(flashCardLearningEntity);
        }
        break;
      case LearningContentType.expression:
        for (final expression in languageCourseLearningContent.expressions) {
          final frontCardText = switch (learningLanguage) {
            LearningLanguage.english => expression.englishExpression,
            LearningLanguage.vietnamese => expression.vietnameseExpression,
            LearningLanguage.french => expression.frenchExpression,
          };
          final backCardText = switch (learningLanguage) {
            LearningLanguage.english => expression.vietnameseExpression,
            LearningLanguage.vietnamese => expression.frenchExpression,
            LearningLanguage.french => expression.englishExpression,
          };
          final backCardSubText = switch (learningLanguage) {
            LearningLanguage.english => expression.frenchExpression,
            LearningLanguage.vietnamese => expression.englishExpression,
            LearningLanguage.french => expression.vietnameseExpression,
          };
          final flashCardLearningEntity = FlashCardLearningEntity(
            id: expression.expressionId,
            frontCardText: frontCardText,
            frontCardSubText: expression
                .exampleUsage[learningLanguage.serverValue.toLowerCase()]
                .toString(),
            backCardText: backCardText,
            backCardSubText: backCardSubText,
          );
          flashCardLearningEntities.add(flashCardLearningEntity);
        }
        break;

      case LearningContentType.idiom:
        // TODO: Handle this case.
        throw UnimplementedError();
      case LearningContentType.sentence:
        // TODO: Handle this case.
        throw UnimplementedError();
      case LearningContentType.phrasalVerb:
        // TODO: Handle this case.
        throw UnimplementedError();
      case LearningContentType.tense:
        // TODO: Handle this case.
        throw UnimplementedError();
      case LearningContentType.phonetics:
        // TODO: Handle this case.
        throw UnimplementedError();
    }

    updateData(
      viewModelData.copyWith(
        learningContentType: learningContentType,
        languageCourseLearningContent: languageCourseLearningContent,
        totalLearningContentCount: numberOfLearningContent,
        learningLanguage: learningLanguage,
        flashCardLearningEntities: flashCardLearningEntities,
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

  void onSkip() async {
    final currentIndex = viewModelData.currentLearningContentIndex;
    final currentContentId =
        viewModelData.flashCardLearningEntities[currentIndex].id;

    final skippedIds = [...viewModelData.skippedContentIds];
    skippedIds.add(currentContentId);

    if (currentIndex == viewModelData.totalLearningContentCount - 1) {
      await _audioPlayer.play(
        AssetSource(
          Assets.audios.correct.replaceFirst(
            'assets/',
            '',
          ),
        ),
      );
    }

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

  void onLearned() async {
    final currentIndex = viewModelData.currentLearningContentIndex;
    final currentContentId =
        viewModelData.flashCardLearningEntities[currentIndex].id;

    final learnedIds = [...viewModelData.learnedContentIds];
    learnedIds.add(currentContentId);

    if (currentIndex == viewModelData.totalLearningContentCount - 1) {
      await _audioPlayer.play(
        AssetSource(
          Assets.audios.correct.replaceFirst(
            'assets/',
            '',
          ),
        ),
      );
    }

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
