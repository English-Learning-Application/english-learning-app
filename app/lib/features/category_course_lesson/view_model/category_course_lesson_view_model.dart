part of 'category_course_lesson.dart';

@Injectable()
class CategoryCourseLessonViewModel
    extends BaseViewModel<CategoryCourseLessonViewModelData> {
  final FlutterTts _flutterTts = GetIt.instance<FlutterTts>();
  CategoryCourseLessonViewModel()
      : super(const CategoryCourseLessonViewModelData());

  void onInit({
    required List<LanguageCourseLearningContent> languageCourseLearningContent,
    required CategoryCourse categoryCourse,
  }) {
    updateData(
      viewModelData.copyWith(
        languageCourseLearningContents: languageCourseLearningContent,
        categoryCourse: categoryCourse,
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
}
