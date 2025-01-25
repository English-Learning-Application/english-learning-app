part of 'listening_learning.dart';

@Injectable()
class ListeningLearningViewModel
    extends BaseViewModel<ListeningLearningViewModelData> {
  final FlutterTts _flutterTts = getIt.get<FlutterTts>();
  ListeningLearningViewModel() : super(const ListeningLearningViewModelData());

  void onInit({
    required LearningLanguage learningLanguage,
    required LanguageCourseLearningContent languageCourseLearningContent,
  }) {
    updateData(
      viewModelData.copyWith(
        learningLanguage: learningLanguage,
        languageCourseLearningContent: languageCourseLearningContent,
        sentences: languageCourseLearningContent.sentences,
        totalSentenceCount: languageCourseLearningContent.sentences.length,
        sentenceKeys: List.generate(
          languageCourseLearningContent.sentences.length,
          (_) => GlobalKey(),
        ),
      ),
    );
  }

  void stopPlaying() async {
    await _flutterTts.stop();
    updateData(
      viewModelData.copyWith(
        isPlaying: false,
      ),
    );
  }

  void playSentence(int index) async {
    updateData(
      viewModelData.copyWith(
        currentSentenceIndex: index,
        isPlaying: true,
      ),
    );
  }

  Future<void> playCurrentSentence() async {
    await _flutterTts.stop();
    final index = viewModelData.currentSentenceIndex;
    final sentence = viewModelData.sentences[index];
    final text = switch (viewModelData.learningLanguage) {
      LearningLanguage.english => sentence.englishSentence,
      LearningLanguage.vietnamese => sentence.vietnameseSentence,
      LearningLanguage.french => sentence.frenchSentence,
    };
    double speechRate;
    double pitch;
    if (Platform.isIOS) {
      speechRate = 0.4;
      pitch = 1.2;
    } else {
      speechRate = 0.5;
      pitch = 1.3;
    }
    _flutterTts.setCompletionHandler(() {
      stopPlaying();
    });

    final language = viewModelData.learningLanguage;
    await _flutterTts.setLanguage(language.textToSpeechLanguage);
    await _flutterTts.setPitch(pitch);
    await _flutterTts.setSpeechRate(speechRate);
    await _flutterTts.speak(text);
  }
}
