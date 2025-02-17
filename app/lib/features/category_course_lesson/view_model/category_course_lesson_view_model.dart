part of 'category_course_lesson.dart';

@Injectable()
class CategoryCourseLessonViewModel
    extends BaseViewModel<CategoryCourseLessonViewModelData> {
  final FlutterTts _flutterTts = GetIt.instance<FlutterTts>();
  final BookmarkCourseUseCase _bookmarkCourseUseCase;
  final IsCourseBookmarkUseCase _isCourseBookmarkUseCase;
  final RemoveBookmarkUseCase _removeBookmarkUseCase;
  CategoryCourseLessonViewModel(
    this._bookmarkCourseUseCase,
    this._isCourseBookmarkUseCase,
    this._removeBookmarkUseCase,
  ) : super(const CategoryCourseLessonViewModelData());

  void onInit({
    required List<LanguageCourseLearningContent> languageCourseLearningContent,
    required CategoryCourse categoryCourse,
  }) async {
    await runViewModelCatching(
      action: () async {
        final resp = await _isCourseBookmarkUseCase.execute(
          IsCourseBookmarkInput(categoryCourse: categoryCourse),
        );
        updateData(
          viewModelData.copyWith(
            languageCourseLearningContents: languageCourseLearningContent,
            categoryCourse: categoryCourse,
            isBookmarked: resp.isBookmarked,
          ),
        );
      },
    );
  }

  void removeBookmarkCourse() async {
    await runViewModelCatching(
      action: () async {
        await _removeBookmarkUseCase.execute(
          RemoveBookmarkInput(categoryCourse: viewModelData.categoryCourse),
        );
        updateData(
          viewModelData.copyWith(
            isBookmarked: false,
          ),
        );
      },
    );
  }

  void bookmarkCourse() async {
    await runViewModelCatching(
      action: () async {
        await _bookmarkCourseUseCase.execute(
          BookmarkCourseInput(categoryCourse: viewModelData.categoryCourse),
        );
        updateData(
          viewModelData.copyWith(
            isBookmarked: true,
          ),
        );
      },
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
