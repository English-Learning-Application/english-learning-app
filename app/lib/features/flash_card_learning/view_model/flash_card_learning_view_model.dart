part of 'flash_card_learning.dart';

@Injectable()
class FlashCardLearningViewModel
    extends BaseViewModel<FlashCardLearningViewModelData> {
  final FlutterTts _flutterTts = getIt.get<FlutterTts>();
  final AudioPlayer _audioPlayer = getIt.get<AudioPlayer>();
  final FlashCardLearningUpdateUseCase _flashCardLearningUpdateUseCase;
  FlashCardLearningViewModel(
    this._flashCardLearningUpdateUseCase,
  ) : super(const FlashCardLearningViewModelData());

  void onInit({
    required List<LanguageCourseLearningContent> languageCourseLearningContents,
    required LearningLanguage learningLanguage,
    required String courseId,
  }) async {
    final flashCardLearningEntities = <FlashCardLearningEntity>[];
    int numberOfLearningContentOverall = 0;
    for (final languageCourseLearningContentItem
        in languageCourseLearningContents) {
      final learningContentType =
          languageCourseLearningContentItem.learningContentType;
      final numberOfLearningContent = switch (learningContentType) {
        LearningContentType.word =>
          languageCourseLearningContentItem.words.length,
        LearningContentType.expression =>
          languageCourseLearningContentItem.expressions.length,
        LearningContentType.idiom =>
          languageCourseLearningContentItem.idioms.length,
        LearningContentType.sentence =>
          languageCourseLearningContentItem.sentences.length,
        LearningContentType.phrasalVerb =>
          languageCourseLearningContentItem.phrasalVerbs.length,
        LearningContentType.tense =>
          languageCourseLearningContentItem.tenses.length,
        LearningContentType.phonetics =>
          languageCourseLearningContentItem.phonetics.length,
      };
      numberOfLearningContentOverall += numberOfLearningContent;
      switch (learningContentType) {
        case LearningContentType.word:
          for (final word in languageCourseLearningContentItem.words) {
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
              learningContentType: learningContentType,
              learningContentId: languageCourseLearningContentItem
                  .languageCourseLearningContentId,
            );
            flashCardLearningEntities.add(flashCardLearningEntity);
          }
          break;
        case LearningContentType.expression:
          for (final expression
              in languageCourseLearningContentItem.expressions) {
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
              learningContentId: languageCourseLearningContentItem
                  .languageCourseLearningContentId,
              learningContentType: learningContentType,
            );
            flashCardLearningEntities.add(flashCardLearningEntity);
          }
          break;

        case LearningContentType.idiom:
          for (final idiom in languageCourseLearningContentItem.idioms) {
            final frontCardText = switch (learningLanguage) {
              LearningLanguage.english => idiom.englishIdiom,
              LearningLanguage.vietnamese => idiom.vietnameseIdiom,
              LearningLanguage.french => idiom.frenchIdiom,
            };
            final appLanguage = appViewModel.viewModelData.languageCode;
            final backCardText = switch (appLanguage) {
              LanguageCode.en => idiom.englishIdiom,
              LanguageCode.vi => idiom.vietnameseIdiom,
            };
            final backCardSubText = switch (appLanguage) {
              LanguageCode.en => idiom.englishIdiomMeaning,
              LanguageCode.vi => idiom.vietnameseIdiomMeaning,
            };
            final flashCardLearningEntity = FlashCardLearningEntity(
              id: idiom.idiomId,
              frontCardText: frontCardText,
              backCardText: backCardText,
              backCardSubText: backCardSubText,
              learningContentId: languageCourseLearningContentItem
                  .languageCourseLearningContentId,
              learningContentType: learningContentType,
            );
            flashCardLearningEntities.add(flashCardLearningEntity);
          }

          break;
        case LearningContentType.sentence:
          for (final sentence in languageCourseLearningContentItem.sentences) {
            final frontCardText = switch (learningLanguage) {
              LearningLanguage.english => sentence.englishSentence,
              LearningLanguage.vietnamese => sentence.vietnameseSentence,
              LearningLanguage.french => sentence.frenchSentence,
            };
            final appLanguage = appViewModel.viewModelData.languageCode;
            final backCardText = switch (appLanguage) {
              LanguageCode.en => sentence.englishSentence,
              LanguageCode.vi => sentence.vietnameseSentence,
            };
            final backCardSubText = switch (appLanguage) {
              LanguageCode.en => sentence.exampleUsage[
                  LearningLanguage.english.serverValue.toLowerCase()],
              LanguageCode.vi => sentence.exampleUsage[
                  LearningLanguage.vietnamese.serverValue.toLowerCase()],
            };
            final flashCardLearningEntity = FlashCardLearningEntity(
              id: sentence.sentenceId,
              frontCardText: frontCardText,
              backCardText: backCardText,
              backCardSubText: backCardSubText,
              learningContentId: languageCourseLearningContentItem
                  .languageCourseLearningContentId,
              learningContentType: learningContentType,
            );
            flashCardLearningEntities.add(flashCardLearningEntity);
          }

          break;
        case LearningContentType.phrasalVerb:
          for (final phrasalVerb
              in languageCourseLearningContentItem.phrasalVerbs) {
            final appLanguage = appViewModel.viewModelData.languageCode;
            final frontCardText = switch (learningLanguage) {
              LearningLanguage.english => phrasalVerb.englishPhrasalVerb,
              LearningLanguage.vietnamese => phrasalVerb.vietnamesePhrasalVerb,
              LearningLanguage.french => phrasalVerb.frenchPhrasalVerb,
            };
            final backCardText = switch (appLanguage) {
              LanguageCode.en => phrasalVerb.englishPhrasalVerb,
              LanguageCode.vi => phrasalVerb.vietnamesePhrasalVerb,
            };
            final backCardSubText = switch (appLanguage) {
              LanguageCode.en => phrasalVerb.englishDescription,
              LanguageCode.vi => phrasalVerb.vietnameseDescription,
            };
            final flashCardLearningEntity = FlashCardLearningEntity(
              id: phrasalVerb.phrasalVerbId,
              frontCardText: frontCardText,
              backCardText: backCardText,
              backCardSubText: backCardSubText,
              learningContentId: languageCourseLearningContentItem
                  .languageCourseLearningContentId,
              learningContentType: learningContentType,
            );
            flashCardLearningEntities.add(flashCardLearningEntity);
          }
          break;
        case LearningContentType.tense:
          for (final tense in languageCourseLearningContentItem.tenses) {
            final appLanguage = appViewModel.viewModelData.languageCode;
            final frontCardText = switch (learningLanguage) {
              LearningLanguage.english => tense.englishTenseName,
              LearningLanguage.vietnamese => tense.vietnameseTenseName,
              LearningLanguage.french => tense.frenchTenseName,
            };
            final backCardText = switch (appLanguage) {
              LanguageCode.en => tense.englishTenseName,
              LanguageCode.vi => tense.vietnameseTenseName,
            };
            final backCardSubText = switch (appLanguage) {
              LanguageCode.en => tense.englishDescription,
              LanguageCode.vi => tense.vietnameseDescription,
            };
            final flashCardLearningEntity = FlashCardLearningEntity(
              id: tense.tenseId,
              frontCardText: frontCardText,
              frontCardSubText: tense.tenseRule,
              backCardText: backCardText,
              backCardSubText: backCardSubText,
              learningContentId: languageCourseLearningContentItem
                  .languageCourseLearningContentId,
              learningContentType: learningContentType,
            );
            flashCardLearningEntities.add(flashCardLearningEntity);
          }
          break;
        case LearningContentType.phonetics:
          for (final phonetic in languageCourseLearningContentItem.phonetics) {
            final appLanguage = appViewModel.viewModelData.languageCode;
            final frontCardText = phonetic.phoneticSymbol;
            final frontCardSubText = phonetic.phoneticSound;
            final backCardText = switch (appLanguage) {
              LanguageCode.en => phonetic.englishPhoneticGuide,
              LanguageCode.vi => phonetic.vietnamesePhoneticGuide,
            };
            final backCardSubText = phonetic.exampleUsage.entries.map((e) {
              return "${e.key}: ${e.value}";
            }).join('\n');
            final flashCardLearningEntity = FlashCardLearningEntity(
              id: phonetic.phoneticId,
              frontCardText: frontCardText,
              frontCardSubText: frontCardSubText,
              backCardText: backCardText,
              backCardSubText: backCardSubText,
              learningContentId: languageCourseLearningContentItem
                  .languageCourseLearningContentId,
              learningContentType: learningContentType,
            );
            flashCardLearningEntities.add(flashCardLearningEntity);
          }
          break;
      }
    }
    flashCardLearningEntities.shuffle();
    updateData(
      viewModelData.copyWith(
        courseId: courseId,
        languageCourseLearningContents: languageCourseLearningContents,
        totalLearningContentCount: numberOfLearningContentOverall,
        learningLanguage: learningLanguage,
        flashCardLearningEntities: flashCardLearningEntities,
      ),
    );
  }

  Future<void> speakFromText(String text, String textToSpeechLanguage) async {
    double speechRate;
    double pitch;
    if (Platform.isIOS) {
      speechRate = 0.4;
      pitch = 1.2;
    } else {
      speechRate = 0.3;
      pitch = 1.0;
    }
    await _flutterTts.setLanguage(textToSpeechLanguage);
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

    updateData(
      viewModelData.copyWith(
        currentLearningContentIndex:
            currentIndex < viewModelData.totalLearningContentCount - 1
                ? currentIndex + 1
                : currentIndex,
        learnedContentIds: learnedIds,
      ),
    );

    if (currentIndex == viewModelData.totalLearningContentCount - 1) {
      runViewModelCatching(
        action: () async {
          final flashCardLearningEntities =
              viewModelData.flashCardLearningEntities;
          final learnedItemIds = viewModelData.learnedContentIds;
          final skippedItemIds = viewModelData.skippedContentIds;

          final flashCardLearningUpdateInput = FlashCardLearningUpdateInput(
            flashCardLearnings: flashCardLearningEntities,
            learnedItemIds: learnedItemIds,
            skippedItemIds: skippedItemIds,
            courseId: viewModelData.courseId,
          );
          await _flashCardLearningUpdateUseCase.execute(
            flashCardLearningUpdateInput,
          );
        },
      );
      await _audioPlayer.play(
        AssetSource(
          Assets.audios.correct.replaceFirst(
            'assets/',
            '',
          ),
        ),
      );
    }
  }
}
