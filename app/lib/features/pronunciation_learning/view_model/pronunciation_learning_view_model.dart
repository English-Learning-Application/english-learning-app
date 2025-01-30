part of 'pronunciation_learning.dart';

@Injectable()
class PronunciationLearningViewModel
    extends BaseViewModel<PronunciationLearningViewModelData> {
  final CheckPermissionUseCase _checkPermissionUseCase;
  final PronunciationAssessmentUseCase _pronunciationAssessmentUseCase;
  final PronunciationLearningUpdateUseCase _pronunciationLearningUpdateUseCase;

  PronunciationLearningViewModel(
    this._checkPermissionUseCase,
    this._pronunciationAssessmentUseCase,
    this._pronunciationLearningUpdateUseCase,
  ) : super(const PronunciationLearningViewModelData());

  void onInit({
    required List<LanguageCourseLearningContent> languageCourseLearningContent,
    required LearningLanguage learningLanguage,
  }) async {
    final checkMicrophoneOutput = await _checkPermissionUseCase.execute(
      const CheckPermissionInput(permission: Permission.microphone),
    );

    if (checkMicrophoneOutput.isPermanentlyDenied) {
      await navigator.showDialog(
        AppPopupInfo.commonDialog(
          title: S.current.permissionDenied,
          message: S.current.microphonePermissionDenied,
          onPressed: Func0(
            () async {
              await openAppSettings();
              await navigator.pop();
            },
          ),
        ),
      );
      await navigator.pop();
      return;
    }
    if (!checkMicrophoneOutput.isGranted) {
      await navigator.showDialog(
        AppPopupInfo.commonDialog(
          title: S.current.permissionDenied,
          message: S.current.microphonePermissionDenied,
          onPressed: Func0(
            () async {
              await navigator.pop();
            },
          ),
        ),
      );
      await navigator.pop();
      return;
    }

    final pronunciationLearningEntities = <PronunciationLearningEntity>[];
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
          final shuffledWordList = [...content.words];
          shuffledWordList.shuffle();

          for (final word in shuffledWordList) {
            final pronunciationLearningEntity = PronunciationLearningEntity(
              id: word.wordId,
              pronunciation: switch (learningLanguage) {
                LearningLanguage.vietnamese => word.vietnameseWord,
                LearningLanguage.english => word.englishWord,
                LearningLanguage.french => word.frenchWord,
              },
              pronunciationSubTitle: switch (learningLanguage) {
                LearningLanguage.vietnamese => word.pronunciation,
                LearningLanguage.english => word.pronunciation,
                LearningLanguage.french => word.pronunciation,
              },
              image: word.imageUrlItem,
              learningContentType: learningContentType,
              learningContentId: content.languageCourseLearningContentId,
            );

            pronunciationLearningEntities.add(pronunciationLearningEntity);
          }
          break;
        case LearningContentType.expression:
          final shuffledExpressionList = [...content.expressions];
          shuffledExpressionList.shuffle();

          for (final expression in shuffledExpressionList) {
            final pronunciationLearningEntity = PronunciationLearningEntity(
              id: expression.expressionId,
              pronunciation: switch (learningLanguage) {
                LearningLanguage.vietnamese => expression.vietnameseExpression,
                LearningLanguage.english => expression.englishExpression,
                LearningLanguage.french => expression.frenchExpression,
              },
              pronunciationSubTitle: expression.exampleUsage[
                      learningLanguage.serverValue.toLowerCase()] ??
                  '',
              learningContentType: learningContentType,
              learningContentId: content.languageCourseLearningContentId,
            );

            pronunciationLearningEntities.add(pronunciationLearningEntity);
          }

          break;
        case LearningContentType.idiom:
          final shuffledIdiomList = [...content.idioms];
          shuffledIdiomList.shuffle();

          for (final idiom in shuffledIdiomList) {
            final pronunciationLearningEntity = PronunciationLearningEntity(
              id: idiom.idiomId,
              pronunciation: switch (learningLanguage) {
                LearningLanguage.vietnamese => idiom.vietnameseIdiom,
                LearningLanguage.english => idiom.englishIdiom,
                LearningLanguage.french => idiom.frenchIdiom,
              },
              pronunciationSubTitle: idiom.exampleUsage[
                      learningLanguage.serverValue.toLowerCase()] ??
                  '',
              learningContentType: learningContentType,
              learningContentId: content.languageCourseLearningContentId,
            );

            pronunciationLearningEntities.add(pronunciationLearningEntity);
          }

          break;
        case LearningContentType.sentence:
          final shuffledSentenceList = [...content.sentences];
          shuffledSentenceList.shuffle();

          for (final sentence in shuffledSentenceList) {
            final pronunciationLearningEntity = PronunciationLearningEntity(
              id: sentence.sentenceId,
              pronunciation: switch (learningLanguage) {
                LearningLanguage.vietnamese => sentence.vietnameseSentence,
                LearningLanguage.english => sentence.englishSentence,
                LearningLanguage.french => sentence.frenchSentence,
              },
              pronunciationSubTitle: sentence.exampleUsage[
                      learningLanguage.serverValue.toLowerCase()] ??
                  '',
              learningContentType: learningContentType,
              learningContentId: content.languageCourseLearningContentId,
            );

            pronunciationLearningEntities.add(pronunciationLearningEntity);
          }
          break;
        case LearningContentType.phrasalVerb:
          final shuffledPhrasalVerbList = [...content.phrasalVerbs];
          shuffledPhrasalVerbList.shuffle();

          for (final phrasalVerb in shuffledPhrasalVerbList) {
            final pronunciationLearningEntity = PronunciationLearningEntity(
              id: phrasalVerb.phrasalVerbId,
              pronunciation: switch (learningLanguage) {
                LearningLanguage.vietnamese =>
                  phrasalVerb.vietnamesePhrasalVerb,
                LearningLanguage.english => phrasalVerb.englishPhrasalVerb,
                LearningLanguage.french => phrasalVerb.frenchPhrasalVerb,
              },
              pronunciationSubTitle: phrasalVerb.exampleUsage[
                      learningLanguage.serverValue.toLowerCase()] ??
                  '',
              learningContentType: learningContentType,
              learningContentId: content.languageCourseLearningContentId,
            );

            pronunciationLearningEntities.add(pronunciationLearningEntity);
          }
          break;
        case LearningContentType.tense:
          final shuffledTenseList = [...content.tenses];
          shuffledTenseList.shuffle();

          for (final tense in shuffledTenseList) {
            final pronunciationLearningEntity = PronunciationLearningEntity(
              id: tense.tenseId,
              pronunciation: tense.tenseExample,
              learningContentType: learningContentType,
              learningContentId: content.languageCourseLearningContentId,
            );

            pronunciationLearningEntities.add(pronunciationLearningEntity);
          }
          break;
        case LearningContentType.phonetics:
          final shuffledPhoneticList = [...content.phonetics];
          shuffledPhoneticList.shuffle();

          for (final phonetic in shuffledPhoneticList) {
            final pronunciationGuide = switch (learningLanguage) {
              LearningLanguage.vietnamese => phonetic.vietnamesePhoneticGuide,
              LearningLanguage.english => phonetic.englishPhoneticGuide,
              LearningLanguage.french => phonetic.frenchPhoneticGuide,
            };
            final pronunciationLearningEntity = PronunciationLearningEntity(
              id: phonetic.phoneticId,
              pronunciation: phonetic.exampleUsage.entries.map((e) {
                return e.key;
              }).join(', '),
              pronunciationSubTitle:
                  "${phonetic.phoneticSymbol}\n$pronunciationGuide",
              learningContentType: learningContentType,
              learningContentId: content.languageCourseLearningContentId,
            );

            pronunciationLearningEntities.add(pronunciationLearningEntity);
          }
          break;
      }
    }

    updateData(
      viewModelData.copyWith(
        totalLearningContentCount: totalLearningContentCount,
        languageCourseLearningContent: languageCourseLearningContent,
        learningLanguage: learningLanguage,
        pronunciationLearningEntities: pronunciationLearningEntities,
      ),
    );
  }

  void onPrevious() {
    if (viewModelData.currentLearningContentIndex == 0) {
      return;
    }

    updateData(
      viewModelData.copyWith(
        currentLearningContentIndex:
            viewModelData.currentLearningContentIndex - 1,
      ),
    );
  }

  void onSpeaking() {
    updateData(
      viewModelData.copyWith(
        isSpeaking: true,
      ),
    );
  }

  void onStopSpeaking(
    String? recordedFilePath,
  ) {
    updateData(
      viewModelData.copyWith(
        isSpeaking: false,
        recordedFilePath: recordedFilePath ?? '',
      ),
    );
  }

  void onNext() async {
    updateData(
      viewModelData.copyWith(
        currentLearningContentIndex:
            viewModelData.currentLearningContentIndex + 1,
        recordedFilePath: '',
      ),
    );

    if (viewModelData.currentLearningContentIndex >=
        viewModelData.totalLearningContentCount) {
      await runViewModelCatching(
        action: () async {
          final learningEntities = viewModelData.pronunciationLearningEntities;

          await _pronunciationLearningUpdateUseCase.execute(
            PronunciationLearningUpdateInput(
              pronunciationLearningEntities: learningEntities,
            ),
          );
        },
      );
    }
  }

  Future<void> onAssessment() async {
    await runViewModelCatching(
      action: () async {
        final currentEntity = viewModelData.pronunciationLearningEntities[
            viewModelData.currentLearningContentIndex];

        final pronunciationAssessmentUseCaseInput =
            PronunciationAssessmentUseCaseInput(
          text: currentEntity.pronunciation,
          filePath: viewModelData.recordedFilePath,
        );

        final pronunciationAssessmentOutput =
            await _pronunciationAssessmentUseCase.execute(
          pronunciationAssessmentUseCaseInput,
        );

        final pronunciationAssessment =
            pronunciationAssessmentOutput.pronunciationAssessment;

        final entities = [...viewModelData.pronunciationLearningEntities];
        final pronunciationAssessments = [
          ...currentEntity.pronunciationAssessment,
          pronunciationAssessment
        ];
        entities[viewModelData.currentLearningContentIndex] =
            currentEntity.copyWith(
          pronunciationAssessment: pronunciationAssessments,
        );

        updateData(
          viewModelData.copyWith(
            pronunciationLearningEntities: entities,
          ),
        );
      },
    );
  }
}
