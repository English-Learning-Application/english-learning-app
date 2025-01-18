part of 'matching_learning.dart';

@Injectable()
class MatchingLearningViewModel
    extends BaseViewModel<MatchingLearningViewModelData> {
  final AudioPlayer _audioPlayer = getIt.get<AudioPlayer>();
  MatchingLearningViewModel() : super(const MatchingLearningViewModelData());

  void onInit({
    required LearningContentType learningContentType,
    required LearningLanguage learningLanguage,
    required LanguageCourseLearningContent languageCourseLearningContent,
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

    final List<MatchingLearningEntity> matchingLearningEntities = [];
    switch (learningContentType) {
      case LearningContentType.word:
        final List<Word> words = [...languageCourseLearningContent.words];
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
          );
          matchingLearningEntities.add(matchingLearningEntity);
        }

        updateData(
          viewModelData.copyWith(
            currentDraggedTexts: List.generate(
              matchingLearningEntities.first.sourceTexts.length,
              (index) => null,
            ),
          ),
        );

        break;
      case LearningContentType.expression:
        // TODO: Handle this case.
        throw UnimplementedError();
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
        learningLanguage: learningLanguage,
        languageCourseLearningContent: languageCourseLearningContent,
        totalLearningContentCount: numberOfLearningContent,
        matchingLearningEntities: matchingLearningEntities,
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
  }
}
