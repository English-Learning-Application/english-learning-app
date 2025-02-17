part of 'language_course_details.dart';

@Injectable()
class LanguageCourseDetailsViewModel
    extends BaseViewModel<LanguageCourseDetailsViewModelData> {
  final FlutterTts _flutterTts;
  final BookmarkCourseUseCase _bookmarkCourseUseCase;
  final IsCourseBookmarkUseCase _isCourseBookmarkUseCase;
  final RemoveBookmarkUseCase _removeBookmarkUseCase;
  LanguageCourseDetailsViewModel(
    this._flutterTts,
    this._bookmarkCourseUseCase,
    this._isCourseBookmarkUseCase,
    this._removeBookmarkUseCase,
  ) : super(const LanguageCourseDetailsViewModelData());

  void init(LanguageCourse languageCourse) async {
    await runViewModelCatching(
      action: () async {
        final resp = await _isCourseBookmarkUseCase.execute(
          IsCourseBookmarkInput(course: languageCourse),
        );
        updateData(
          viewModelData.copyWith(
            languageCourse: languageCourse,
            learningType: languageCourse.learningType,
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
          RemoveBookmarkInput(course: viewModelData.languageCourse),
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
          BookmarkCourseInput(course: viewModelData.languageCourse),
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
