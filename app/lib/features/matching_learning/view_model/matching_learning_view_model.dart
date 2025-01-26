part of 'matching_learning.dart';

@Injectable()
class MatchingLearningViewModel
    extends BaseViewModel<MatchingLearningViewModelData> {
  final AudioPlayer _audioPlayer = getIt.get<AudioPlayer>();
  final MatchingLearningUpdateUseCase _matchingLearningUpdateUseCase;
  MatchingLearningViewModel(
    this._matchingLearningUpdateUseCase,
  ) : super(const MatchingLearningViewModelData());

  void onInit({
    required LearningLanguage learningLanguage,
    required List<LanguageCourseLearningContent> languageCourseLearningContent,
  }) {
    final matchingLearningEntities = <MatchingLearningEntity>[];
    int totalLearningContentCount = 0;

    for (final content in languageCourseLearningContent) {
      final learningContentType = content.learningContentType;
      final numberOfLearningContent = switch (learningContentType) {
        LearningContentType.word => content.words.length,
        LearningContentType.expression => content.expressions.length,
        LearningContentType.idiom => content.idioms.length,
        LearningContentType.sentence => content.sentences.length,
        LearningContentType.phrasalVerb => content.phrasalVerbs.length,
        LearningContentType.tense => content.tenses.length,
        LearningContentType.phonetics => content.phonetics.length,
      };
      totalLearningContentCount += numberOfLearningContent;

      switch (learningContentType) {
        case LearningContentType.word:
          final List<Word> words = [...content.words];
          words.shuffle();
          for (final word in words) {
            var hint = switch (learningLanguage) {
              LearningLanguage.english => word.vietnameseWord,
              LearningLanguage.vietnamese => word.englishWord,
              LearningLanguage.french => word.englishWord,
            };

            hint = "$hint - ${word.wordType.wordTypeName}";

            final tokenizedWord = switch (learningLanguage) {
              LearningLanguage.english => word.englishWord,
              LearningLanguage.vietnamese => word.vietnameseWord,
              LearningLanguage.french => word.frenchWord,
            }

                /// Split the word into characters

                .split('');
            final originalWord = List<String>.from(tokenizedWord);

            final matchingLearningEntity = MatchingLearningEntity(
              id: word.wordId,
              image: word.imageUrlItem,
              hint: hint,
              targetTexts: originalWord,
              sourceTexts: tokenizedWord..shuffle(),
              learningContentId: content.languageCourseLearningContentId,
              learningContentType: content.learningContentType,
            );
            matchingLearningEntities.add(matchingLearningEntity);
          }
          break;
        case LearningContentType.expression:
          final List<Expression> expressions = [...content.expressions];
          expressions.shuffle();
          for (final expression in expressions) {
            final appLanguage = appViewModel.viewModelData.languageCode;
            final expressionName = switch (appLanguage) {
              LanguageCode.en => expression.englishExpression,
              LanguageCode.vi => expression.vietnameseExpression,
            };
            final description = switch (appLanguage) {
              LanguageCode.en => expression.exampleUsage[
                  LearningLanguage.english.serverValue.toLowerCase()],
              LanguageCode.vi => expression.exampleUsage[
                  LearningLanguage.vietnamese.serverValue.toLowerCase()],
            };
            final tokenizedExpression = expression.englishExpression.split(' ');
            final originalExpression = List<String>.from(tokenizedExpression);

            final matchingLearningEntity = MatchingLearningEntity(
              id: expression.expressionId,
              hint: "$expressionName\n$description",
              targetTexts: originalExpression,
              sourceTexts: tokenizedExpression..shuffle(),
              learningContentType: content.learningContentType,
              learningContentId: content.languageCourseLearningContentId,
            );
            matchingLearningEntities.add(matchingLearningEntity);
          }

          break;
        case LearningContentType.idiom:
          final List<Idiom> idioms = [...content.idioms];
          idioms.shuffle();
          for (final idiom in idioms) {
            final appLanguage = appViewModel.viewModelData.languageCode;
            final idiomName = switch (appLanguage) {
              LanguageCode.en => idiom.englishIdiom,
              LanguageCode.vi => idiom.vietnameseIdiom,
            };
            final description = switch (appLanguage) {
              LanguageCode.en => idiom.englishIdiomMeaning,
              LanguageCode.vi => idiom.vietnameseIdiomMeaning,
            };
            final tokenizedIdiom = idiom.englishIdiom.split(' ');
            final originalIdiom = List<String>.from(tokenizedIdiom);

            final matchingLearningEntity = MatchingLearningEntity(
              id: idiom.idiomId,
              hint: "$idiomName\n$description",
              targetTexts: originalIdiom,
              sourceTexts: tokenizedIdiom..shuffle(),
              learningContentType: content.learningContentType,
              learningContentId: content.languageCourseLearningContentId,
            );
            matchingLearningEntities.add(matchingLearningEntity);
          }

          break;
        case LearningContentType.sentence:
          final List<Sentence> sentences = [...content.sentences];
          sentences.shuffle();
          for (final sentence in sentences) {
            final appLanguage = appViewModel.viewModelData.languageCode;
            final sentenceName = switch (appLanguage) {
              LanguageCode.en => sentence.englishSentence,
              LanguageCode.vi => sentence.vietnameseSentence,
            };
            final tokenizedSentence = sentence.englishSentence.split(' ');
            final originalSentence = List<String>.from(tokenizedSentence);

            final matchingLearningEntity = MatchingLearningEntity(
              id: sentence.sentenceId,
              hint: sentenceName,
              targetTexts: originalSentence,
              sourceTexts: tokenizedSentence..shuffle(),
              learningContentType: content.learningContentType,
              learningContentId: content.languageCourseLearningContentId,
            );
            matchingLearningEntities.add(matchingLearningEntity);
          }
          break;
        case LearningContentType.phrasalVerb:
          final List<PhrasalVerb> phrasalVerbs = [...content.phrasalVerbs];
          phrasalVerbs.shuffle();
          for (final phrasalVerb in phrasalVerbs) {
            final appLanguage = appViewModel.viewModelData.languageCode;
            final phrasalVerbName = switch (appLanguage) {
              LanguageCode.en => phrasalVerb.englishPhrasalVerb,
              LanguageCode.vi => phrasalVerb.vietnamesePhrasalVerb,
            };
            final description = switch (appLanguage) {
              LanguageCode.en => phrasalVerb.englishDescription,
              LanguageCode.vi => phrasalVerb.vietnameseDescription,
            };
            final tokenizedPhrasalVerb =
                phrasalVerb.englishPhrasalVerb.split(' ');
            final originalPhrasalVerb = List<String>.from(tokenizedPhrasalVerb);

            final matchingLearningEntity = MatchingLearningEntity(
              id: phrasalVerb.phrasalVerbId,
              hint: "$phrasalVerbName\n$description",
              targetTexts: originalPhrasalVerb,
              sourceTexts: tokenizedPhrasalVerb..shuffle(),
              learningContentType: content.learningContentType,
              learningContentId: content.languageCourseLearningContentId,
            );
            matchingLearningEntities.add(matchingLearningEntity);
          }

          break;
        case LearningContentType.tense:
          final List<Tense> tenses = [...content.tenses];
          tenses.shuffle();
          for (final tense in tenses) {
            final tenseName = switch (learningLanguage) {
              LearningLanguage.english => tense.englishTenseName,
              LearningLanguage.vietnamese => tense.vietnameseTenseName,
              LearningLanguage.french => tense.frenchTenseName,
            };
            final description = switch (learningLanguage) {
              LearningLanguage.english => tense.englishDescription,
              LearningLanguage.vietnamese => tense.vietnameseDescription,
              LearningLanguage.french => tense.frenchDescription,
            };
            final tokenizedTense = tense.tenseRule.split(' ');
            final originalTense = List<String>.from(tokenizedTense);

            final matchingLearningEntity = MatchingLearningEntity(
              id: tense.tenseId,
              hint: "$tenseName\n$description",
              targetTexts: originalTense,
              sourceTexts: tokenizedTense..shuffle(),
              learningContentType: content.learningContentType,
              learningContentId: content.languageCourseLearningContentId,
            );
            matchingLearningEntities.add(matchingLearningEntity);
          }
        case LearningContentType.phonetics:
          navigator.pop();
          break;
      }
    }

    matchingLearningEntities.shuffle();

    updateData(
      viewModelData.copyWith(
        learningLanguage: learningLanguage,
        languageCourseLearningContent: languageCourseLearningContent,
        totalLearningContentCount: totalLearningContentCount,
        matchingLearningEntities: matchingLearningEntities,
        currentDraggedTexts: List.generate(
          matchingLearningEntities.first.sourceTexts.length,
          (index) => null,
        ),
      ),
    );
  }

  void onAcceptDraggable({
    required int index,
    required Map<int, String> text,
  }) {
    final currentDraggedTexts = [...viewModelData.currentDraggedTexts];
    if (currentDraggedTexts[index] != null) {
      return;
    }
    currentDraggedTexts[index] = text;
    updateData(
      viewModelData.copyWith(
        currentDraggedTexts: currentDraggedTexts,
      ),
    );
  }

  void removeDraggableOnTap({
    required int index,
  }) {
    final currentDraggedTexts = [...viewModelData.currentDraggedTexts];
    currentDraggedTexts[index] = null;
    updateData(
      viewModelData.copyWith(
        currentDraggedTexts: currentDraggedTexts,
      ),
    );
  }

  void addLetterToDraggableOnTap({
    required int index,
    required String text,
  }) {
    final currentDraggedTexts = [...viewModelData.currentDraggedTexts];
    final availableIndex = currentDraggedTexts.indexWhere(
      (element) => element == null,
    );
    if (availableIndex == -1) {
      return;
    }
    currentDraggedTexts[availableIndex] = {index: text};
    updateData(
      viewModelData.copyWith(
        currentDraggedTexts: currentDraggedTexts,
      ),
    );
  }

  void onNextButtonTap() async {
    final draggedTexts = viewModelData.currentDraggedTexts.map(
      (element) {
        if (element == null) {
          return null;
        }
        return element.values.first;
      },
    ).toList();
    if (draggedTexts.contains(null)) {
      updateData(
        viewModelData.copyWith(
          errorMessage:
              S.current.pleaseDragAndDropTheWordsToMatchTheCorrectOrder,
        ),
      );
      return;
    }

    final concatenatedText = draggedTexts.join();
    var currentEntity = viewModelData
        .matchingLearningEntities[viewModelData.currentLearningContentIndex];
    currentEntity = currentEntity.copyWith(
      chosenTexts: concatenatedText,
    );
    final isCorrect =
        concatenatedText.equalsIgnoreCase(currentEntity.targetTexts.join());
    final learnedContentIds = [...viewModelData.learnedContentIds];
    final skippedContentIds = [...viewModelData.skippedContentIds];

    if (isCorrect) {
      await _audioPlayer.play(
        AssetSource(
          Assets.audios.correct.replaceFirst('assets/', ''),
        ),
      );

      await navigator.showDialog(
        AppPopupInfo.commonDialog(
          title: S.current.correct,
          message: S.current.youHaveMatchedTheWordsCorrectly,
          onPressed: Func0(() {
            navigator.pop();
          }),
        ),
      );
      learnedContentIds.add(currentEntity.id);
    } else {
      await _audioPlayer.play(
        AssetSource(
          Assets.audios.incorrect.replaceFirst('assets/', ''),
        ),
      );

      await navigator.showDialog(
        AppPopupInfo.commonDialog(
          title: S.current.incorrect,
          message: S.current.youHaveNotMatchedTheWordsCorrectly,
          onPressed: Func0(() {
            navigator.pop();
          }),
        ),
      );

      skippedContentIds.add(currentEntity.id);
    }

    final currentLearningContentIndex =
        viewModelData.currentLearningContentIndex;

    final newIndex = currentLearningContentIndex + 1;
    updateData(
      viewModelData.copyWith(
        currentLearningContentIndex: currentLearningContentIndex <
                viewModelData.totalLearningContentCount - 1
            ? newIndex
            : currentLearningContentIndex,
        matchingLearningEntities: [...viewModelData.matchingLearningEntities]
          ..[currentLearningContentIndex] = currentEntity,
        currentDraggedTexts: currentLearningContentIndex <
                viewModelData.totalLearningContentCount - 1
            ? List.generate(
                viewModelData
                    .matchingLearningEntities[newIndex].sourceTexts.length,
                (index) => null,
              )
            : viewModelData.currentDraggedTexts,
        learnedContentIds: learnedContentIds,
        skippedContentIds: skippedContentIds,
      ),
    );

    /// If the user has finished all the exercises
    /// then update the matching learning entities
    if (currentLearningContentIndex >=
        viewModelData.totalLearningContentCount - 1) {
      await runViewModelCatching(
        action: () async {
          final matchingLearningEntities =
              viewModelData.matchingLearningEntities;
          final correctItemIds = learnedContentIds;
          final incorrectItemIds = skippedContentIds;
          await _matchingLearningUpdateUseCase.execute(
            MatchingLearningUpdateInput(
              matchingLearnings: matchingLearningEntities,
              correctItemIds: correctItemIds,
              incorrectItemIds: incorrectItemIds,
            ),
          );
          await _audioPlayer.play(
            AssetSource(
              Assets.audios.congrats.replaceFirst('assets/', ''),
            ),
          );
        },
      );
    }
  }
}
