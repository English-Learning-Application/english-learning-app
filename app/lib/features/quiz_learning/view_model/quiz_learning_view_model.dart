part of 'quiz_learning.dart';

@Injectable()
class QuizLearningViewModel extends BaseViewModel<QuizLearningViewModelData> {
  final AudioPlayer _audioPlayer = GetIt.instance.get<AudioPlayer>();
  final FlutterTts _flutterTts = GetIt.instance.get<FlutterTts>();
  QuizLearningViewModel() : super(const QuizLearningViewModelData());

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

    final List<QuizLearningEntity> quizLearningEntities = [];

    switch (learningContentType) {
      case LearningContentType.word:
        final shuffledWordList = [...languageCourseLearningContent.words];
        shuffledWordList.shuffle();
        final thresholdWrongAnswers =
            shuffledWordList.length > 3 ? 3 : shuffledWordList.length - 1;

        for (final correctAnswer in shuffledWordList) {
          final List<Word> wrongAnswers = [];
          while (wrongAnswers.length != thresholdWrongAnswers) {
            final randomWord =
                shuffledWordList[Random().nextInt(shuffledWordList.length - 1)];
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
          );

          quizLearningEntities.add(quizLearningEntity);
        }
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
        totalLearningContentCount: numberOfLearningContent,
        learningContentType: learningContentType,
        languageCourseLearningContent: languageCourseLearningContent,
        learningLanguage: learningLanguage,
        quizLearningEntities: quizLearningEntities,
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

    if (currentIndex == viewModelData.totalLearningContentCount - 1) {
      await _audioPlayer.play(
        AssetSource(
          Assets.audios.congrats.replaceFirst('assets/', ''),
        ),
      );
    }

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
  }
}
