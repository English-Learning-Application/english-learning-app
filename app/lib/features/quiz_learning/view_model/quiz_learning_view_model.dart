part of 'quiz_learning.dart';

@Injectable()
class QuizLearningViewModel extends BaseViewModel<QuizLearningViewModelData> {
  final AudioPlayer _audioPlayer = GetIt.instance.get<AudioPlayer>();
  final FlutterTts _flutterTts = GetIt.instance.get<FlutterTts>();
  final QuizLearningUpdateUseCase _quizLearningUpdateUseCase;

  QuizLearningViewModel(
    this._quizLearningUpdateUseCase,
  ) : super(const QuizLearningViewModelData());

  void onInit({
    required List<LanguageCourseLearningContent> languageCourseLearningContent,
    required LearningLanguage learningLanguage,
    required String courseId,
  }) {
    /// Remove phonetics from the learning content
    final newList = [...languageCourseLearningContent].where((element) {
      return element.learningContentType != LearningContentType.phonetics;
    }).toList();
    final List<QuizLearningEntity> quizLearningEntities = [];
    int totalLearningContentCount = 0;
    for (final content in newList) {
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
          final thresholdWrongAnswers =
              shuffledWordList.length > 3 ? 3 : shuffledWordList.length - 1;

          for (final correctAnswer in shuffledWordList) {
            final List<Word> wrongAnswers = [];
            while (wrongAnswers.length != thresholdWrongAnswers) {
              final randomWord = shuffledWordList[
                  Random().nextInt(shuffledWordList.length - 1)];
              if (randomWord.wordId != correctAnswer.wordId &&
                  !wrongAnswers.contains(randomWord)) {
                wrongAnswers.add(randomWord);
              }
            }

            final insertedCorrectAnswerIndex =
                Random().nextInt(thresholdWrongAnswers + 1);

            final List<String> answers = [];

            final answerByLanguage = switch (learningLanguage) {
              LearningLanguage.vietnamese => correctAnswer.englishWord,
              LearningLanguage.english => correctAnswer.vietnameseWord,
              LearningLanguage.french => correctAnswer.englishWord,
            };

            for (var i = 0; i < thresholdWrongAnswers; i++) {
              answers.add(switch (learningLanguage) {
                LearningLanguage.english => wrongAnswers[i].vietnameseWord,
                LearningLanguage.vietnamese => wrongAnswers[i].englishWord,
                LearningLanguage.french => wrongAnswers[i].englishWord,
              });
            }
            answers.insert(insertedCorrectAnswerIndex, answerByLanguage);

            final quizLearningEntity = QuizLearningEntity(
              id: correctAnswer.wordId,
              question: switch (learningLanguage) {
                LearningLanguage.english => correctAnswer.englishWord,
                LearningLanguage.vietnamese => correctAnswer.vietnameseWord,
                LearningLanguage.french => correctAnswer.frenchWord,
              },
              correctAnswerIndex: insertedCorrectAnswerIndex,
              answers: answers,
              selectedAnswerIndex: -1,
              imageUrl: correctAnswer.imageUrlItem,
              learningContentId: content.languageCourseLearningContentId,
              learningContentType: content.learningContentType,
            );

            quizLearningEntities.add(quizLearningEntity);
          }
          break;

        case LearningContentType.expression:
          final shuffledExpressionList = [...content.expressions];
          shuffledExpressionList.shuffle();
          final thresholdWrongAnswers = shuffledExpressionList.length > 3
              ? 3
              : shuffledExpressionList.length - 1;

          for (final correctAnswer in shuffledExpressionList) {
            final List<Expression> wrongAnswers = [];
            while (wrongAnswers.length != thresholdWrongAnswers) {
              final randomExpression = shuffledExpressionList[
                  Random().nextInt(shuffledExpressionList.length - 1)];
              if (randomExpression.expressionId != correctAnswer.expressionId &&
                  !wrongAnswers.contains(randomExpression)) {
                wrongAnswers.add(randomExpression);
              }
            }

            final insertedCorrectAnswerIndex =
                Random().nextInt(thresholdWrongAnswers + 1);

            final List<String> answers = [];

            final answerByLanguage = switch (learningLanguage) {
              LearningLanguage.vietnamese => correctAnswer.englishExpression,
              LearningLanguage.english => correctAnswer.vietnameseExpression,
              LearningLanguage.french => correctAnswer.englishExpression,
            };

            for (var i = 0; i < thresholdWrongAnswers; i++) {
              answers.add(switch (learningLanguage) {
                LearningLanguage.english =>
                  wrongAnswers[i].vietnameseExpression,
                LearningLanguage.vietnamese =>
                  wrongAnswers[i].englishExpression,
                LearningLanguage.french => wrongAnswers[i].englishExpression,
              });
            }
            answers.insert(insertedCorrectAnswerIndex, answerByLanguage);

            final quizLearningEntity = QuizLearningEntity(
              id: correctAnswer.expressionId,
              question: switch (learningLanguage) {
                LearningLanguage.english => correctAnswer.englishExpression,
                LearningLanguage.vietnamese =>
                  correctAnswer.vietnameseExpression,
                LearningLanguage.french => correctAnswer.frenchExpression,
              },
              correctAnswerIndex: insertedCorrectAnswerIndex,
              answers: answers,
              selectedAnswerIndex: -1,
              learningContentType: content.learningContentType,
              learningContentId: content.languageCourseLearningContentId,
            );

            quizLearningEntities.add(quizLearningEntity);
          }
          break;
        case LearningContentType.idiom:
          final shuffledIdiomList = [...content.idioms];
          shuffledIdiomList.shuffle();
          final thresholdWrongAnswers =
              shuffledIdiomList.length > 3 ? 3 : shuffledIdiomList.length - 1;

          for (final correctAnswer in shuffledIdiomList) {
            final List<Idiom> wrongAnswers = [];
            while (wrongAnswers.length != thresholdWrongAnswers) {
              final randomIdiom = shuffledIdiomList[
                  Random().nextInt(shuffledIdiomList.length - 1)];
              if (randomIdiom.idiomId != correctAnswer.idiomId &&
                  !wrongAnswers.contains(randomIdiom)) {
                wrongAnswers.add(randomIdiom);
              }
            }

            final insertedCorrectAnswerIndex =
                Random().nextInt(thresholdWrongAnswers + 1);

            final List<String> answers = [];

            final answerByLanguage = switch (learningLanguage) {
              LearningLanguage.vietnamese => correctAnswer.englishIdiom,
              LearningLanguage.english => correctAnswer.vietnameseIdiom,
              LearningLanguage.french => correctAnswer.englishIdiom,
            };

            for (var i = 0; i < thresholdWrongAnswers; i++) {
              answers.add(switch (learningLanguage) {
                LearningLanguage.english => wrongAnswers[i].vietnameseIdiom,
                LearningLanguage.vietnamese => wrongAnswers[i].englishIdiom,
                LearningLanguage.french => wrongAnswers[i].englishIdiom,
              });
            }
            answers.insert(insertedCorrectAnswerIndex, answerByLanguage);

            final quizLearningEntity = QuizLearningEntity(
              id: correctAnswer.idiomId,
              question: switch (learningLanguage) {
                LearningLanguage.english => correctAnswer.englishIdiom,
                LearningLanguage.vietnamese => correctAnswer.vietnameseIdiom,
                LearningLanguage.french => correctAnswer.frenchIdiom,
              },
              correctAnswerIndex: insertedCorrectAnswerIndex,
              answers: answers,
              selectedAnswerIndex: -1,
              learningContentType: content.learningContentType,
              learningContentId: content.languageCourseLearningContentId,
            );

            quizLearningEntities.add(quizLearningEntity);
          }
          break;
        case LearningContentType.sentence:
          final shuffledSentenceList = [...content.sentences];
          shuffledSentenceList.shuffle();
          final thresholdWrongAnswers = shuffledSentenceList.length > 3
              ? 3
              : shuffledSentenceList.length - 1;

          for (final correctAnswer in shuffledSentenceList) {
            final List<Sentence> wrongAnswers = [];
            while (wrongAnswers.length != thresholdWrongAnswers) {
              final randomSentence = shuffledSentenceList[
                  Random().nextInt(shuffledSentenceList.length - 1)];
              if (randomSentence.sentenceId != correctAnswer.sentenceId &&
                  !wrongAnswers.contains(randomSentence)) {
                wrongAnswers.add(randomSentence);
              }
            }

            final insertedCorrectAnswerIndex =
                Random().nextInt(thresholdWrongAnswers + 1);

            final List<String> answers = [];

            final answerByLanguage = switch (learningLanguage) {
              LearningLanguage.vietnamese => correctAnswer.englishSentence,
              LearningLanguage.english => correctAnswer.vietnameseSentence,
              LearningLanguage.french => correctAnswer.englishSentence,
            };

            for (var i = 0; i < thresholdWrongAnswers; i++) {
              answers.add(switch (learningLanguage) {
                LearningLanguage.english => wrongAnswers[i].vietnameseSentence,
                LearningLanguage.vietnamese => wrongAnswers[i].englishSentence,
                LearningLanguage.french => wrongAnswers[i].englishSentence,
              });
            }
            answers.insert(insertedCorrectAnswerIndex, answerByLanguage);

            final quizLearningEntity = QuizLearningEntity(
              id: correctAnswer.sentenceId,
              question: switch (learningLanguage) {
                LearningLanguage.english => correctAnswer.englishSentence,
                LearningLanguage.vietnamese => correctAnswer.vietnameseSentence,
                LearningLanguage.french => correctAnswer.frenchSentence,
              },
              correctAnswerIndex: insertedCorrectAnswerIndex,
              answers: answers,
              selectedAnswerIndex: -1,
              learningContentType: content.learningContentType,
              learningContentId: content.languageCourseLearningContentId,
            );

            quizLearningEntities.add(quizLearningEntity);
          }
          break;
        case LearningContentType.phrasalVerb:
          final shuffledPhrasalVerbList = [...content.phrasalVerbs];
          shuffledPhrasalVerbList.shuffle();
          final thresholdWrongAnswers = shuffledPhrasalVerbList.length > 3
              ? 3
              : shuffledPhrasalVerbList.length - 1;

          for (final correctAnswer in shuffledPhrasalVerbList) {
            final List<PhrasalVerb> wrongAnswers = [];
            while (wrongAnswers.length != thresholdWrongAnswers) {
              final randomPhrasalVerb = shuffledPhrasalVerbList[
                  Random().nextInt(shuffledPhrasalVerbList.length - 1)];
              if (randomPhrasalVerb.phrasalVerbId !=
                      correctAnswer.phrasalVerbId &&
                  !wrongAnswers.contains(randomPhrasalVerb)) {
                wrongAnswers.add(randomPhrasalVerb);
              }
            }

            final insertedCorrectAnswerIndex =
                Random().nextInt(thresholdWrongAnswers + 1);

            final List<String> answers = [];

            final answerByLanguage = switch (learningLanguage) {
              LearningLanguage.vietnamese => correctAnswer.englishPhrasalVerb,
              LearningLanguage.english => correctAnswer.vietnamesePhrasalVerb,
              LearningLanguage.french => correctAnswer.englishPhrasalVerb,
            };

            for (var i = 0; i < thresholdWrongAnswers; i++) {
              answers.add(switch (learningLanguage) {
                LearningLanguage.english =>
                  wrongAnswers[i].vietnamesePhrasalVerb,
                LearningLanguage.vietnamese =>
                  wrongAnswers[i].englishPhrasalVerb,
                LearningLanguage.french => wrongAnswers[i].englishPhrasalVerb,
              });
            }
            answers.insert(insertedCorrectAnswerIndex, answerByLanguage);

            final quizLearningEntity = QuizLearningEntity(
              id: correctAnswer.phrasalVerbId,
              question: switch (learningLanguage) {
                LearningLanguage.english => correctAnswer.englishPhrasalVerb,
                LearningLanguage.vietnamese =>
                  correctAnswer.vietnamesePhrasalVerb,
                LearningLanguage.french => correctAnswer.frenchPhrasalVerb,
              },
              correctAnswerIndex: insertedCorrectAnswerIndex,
              answers: answers,
              selectedAnswerIndex: -1,
              learningContentType: content.learningContentType,
              learningContentId: content.languageCourseLearningContentId,
            );

            quizLearningEntities.add(quizLearningEntity);
          }
          break;
        case LearningContentType.tense:
          final shuffledTenseList = [...content.tenses];
          shuffledTenseList.shuffle();
          final thresholdWrongAnswers =
              shuffledTenseList.length > 3 ? 3 : shuffledTenseList.length - 1;

          for (final correctAnswer in shuffledTenseList) {
            final List<Tense> wrongAnswers = [];
            while (wrongAnswers.length != thresholdWrongAnswers) {
              final randomTense = shuffledTenseList[
                  Random().nextInt(shuffledTenseList.length - 1)];
              if (randomTense.tenseId != correctAnswer.tenseId &&
                  !wrongAnswers.contains(randomTense)) {
                wrongAnswers.add(randomTense);
              }
            }

            final insertedCorrectAnswerIndex =
                Random().nextInt(thresholdWrongAnswers + 1);

            final List<String> answers = [];

            final answerByLanguage = switch (learningLanguage) {
              LearningLanguage.vietnamese => correctAnswer.englishTenseName,
              LearningLanguage.english => correctAnswer.vietnameseTenseName,
              LearningLanguage.french => correctAnswer.englishTenseName,
            };

            for (var i = 0; i < thresholdWrongAnswers; i++) {
              answers.add(switch (learningLanguage) {
                LearningLanguage.english => wrongAnswers[i].vietnameseTenseName,
                LearningLanguage.vietnamese => wrongAnswers[i].englishTenseName,
                LearningLanguage.french => wrongAnswers[i].englishTenseName,
              });
            }
            answers.insert(insertedCorrectAnswerIndex, answerByLanguage);

            final quizLearningEntity = QuizLearningEntity(
              id: correctAnswer.tenseId,
              question: switch (learningLanguage) {
                LearningLanguage.english => correctAnswer.englishTenseName,
                LearningLanguage.vietnamese =>
                  correctAnswer.vietnameseTenseName,
                LearningLanguage.french => correctAnswer.frenchTenseName,
              },
              correctAnswerIndex: insertedCorrectAnswerIndex,
              answers: answers,
              selectedAnswerIndex: -1,
              learningContentType: content.learningContentType,
              learningContentId: content.languageCourseLearningContentId,
            );

            quizLearningEntities.add(quizLearningEntity);
          }

        case LearningContentType.phonetics:

          /// Do nothing
          break;
      }
    }

    quizLearningEntities.shuffle();

    updateData(
      viewModelData.copyWith(
        totalLearningContentCount: totalLearningContentCount,
        languageCourseLearningContent: newList,
        learningLanguage: learningLanguage,
        quizLearningEntities: quizLearningEntities,
        courseId: courseId,
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

  void onChooseAnswer(int chosenIndex) async {
    final List<QuizLearningEntity> quizLearningEntities = [
      ...viewModelData.quizLearningEntities
    ];
    var currentEntity =
        quizLearningEntities[viewModelData.currentLearningContentIndex];

    final correctAnswers = [...viewModelData.correctContentIds];
    final wrongAnswers = [...viewModelData.incorrectContentIds];

    if (currentEntity.correctAnswerIndex == chosenIndex) {
      await _audioPlayer
          .play(AssetSource(Assets.audios.correct.replaceFirst('assets/', '')));
      await navigator.showDialog(
        AppPopupInfo.commonDialog(
          title: S.current.correct,
          message: S.current.youHaveChosenTheCorrectAnswer,
        ),
      );
      correctAnswers.add(currentEntity.id);
    } else {
      await _audioPlayer.play(
          AssetSource(Assets.audios.incorrect.replaceFirst('assets/', '')));

      await navigator.showDialog(
        AppPopupInfo.commonDialog(
          title: S.current.incorrect,
          message: S.current.youHaveChosenTheWrongAnswer,
        ),
      );
      wrongAnswers.add(currentEntity.id);
    }

    currentEntity = currentEntity.copyWith(selectedAnswerIndex: chosenIndex);

    final currentIndex = viewModelData.currentLearningContentIndex;

    final replacedList = quizLearningEntities
        .map((e) => e.id == currentEntity.id ? currentEntity : e)
        .toList();

    updateData(
      viewModelData.copyWith(
        quizLearningEntities: replacedList,
        correctContentIds: correctAnswers,
        incorrectContentIds: wrongAnswers,
        currentLearningContentIndex:
            currentIndex < viewModelData.totalLearningContentCount - 1
                ? currentIndex + 1
                : currentIndex,
      ),
    );

    if (currentIndex == viewModelData.totalLearningContentCount - 1) {
      await runViewModelCatching(
        action: () async {
          final correctAnswers = viewModelData.correctContentIds;
          final incorrectAnswers = viewModelData.incorrectContentIds;
          final quizLearningEntities = viewModelData.quizLearningEntities;
          await _quizLearningUpdateUseCase.execute(
            QuizLearningUpdateInput(
              courseId: viewModelData.courseId,
              quizLearnings: quizLearningEntities,
              correctItemIds: correctAnswers,
              incorrectItemIds: incorrectAnswers,
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
