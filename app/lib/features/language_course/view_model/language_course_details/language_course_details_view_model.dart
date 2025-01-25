part of 'language_course_details.dart';

@Injectable()
class LanguageCourseDetailsViewModel
    extends BaseViewModel<LanguageCourseDetailsViewModelData> {
  final FlutterTts _flutterTts;
  LanguageCourseDetailsViewModel(
    this._flutterTts,
  ) : super(const LanguageCourseDetailsViewModelData());

  void init(LanguageCourse languageCourse) {
    updateData(
      viewModelData.copyWith(
        languageCourse: languageCourse,
        learningType: languageCourse.learningType,
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
      speechRate = 0.5;
      pitch = 1.3;
    }
    await _flutterTts.setLanguage(language.textToSpeechLanguage);
    await _flutterTts.setPitch(pitch);
    await _flutterTts.setSpeechRate(speechRate);
    await _flutterTts.speak(text);
  }

  Future<void> pauseSpeaking() async {
    await _flutterTts.pause();
  }

  Future<void> speakFromTextSlowly(
      String text, LearningLanguage language) async {
    double speechRate;
    double pitch;
    if (Platform.isIOS) {
      speechRate = 0.25;
      pitch = 1.2;
    } else {
      speechRate = 0.15;
      pitch = 1.0;
    }
    await _flutterTts.setLanguage(language.textToSpeechLanguage);
    await _flutterTts.setPitch(pitch);
    await _flutterTts.setSpeechRate(speechRate);
    await _flutterTts.speak(text);
  }
}
