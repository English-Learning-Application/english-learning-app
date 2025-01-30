part of 'language_course.dart';

@Injectable()
class LanguageCourseViewModel
    extends BaseViewModel<LanguageCourseViewModelData> {
  final GetLanguageCoursesByLanguageUseCase
      _getLanguageCoursesByLanguageUseCase;
  final GetLanguageCoursesByLanguageAndLevelUseCase
      _getLanguageCoursesByLanguageAndLevelUseCase;
  LanguageCourseViewModel(
    this._getLanguageCoursesByLanguageUseCase,
    this._getLanguageCoursesByLanguageAndLevelUseCase,
  ) : super(const LanguageCourseViewModelData());

  Future<void> init(
    LearningLanguage language,
  ) async {
    await runViewModelCatching(
      action: () async {
        updateData(
          viewModelData.copyWith(
            learningLanguage: language,
          ),
        );
        final resp = await _getLanguageCoursesByLanguageUseCase.execute(
          GetLanguageCoursesByLanguageInput(language: language),
        );

        updateData(
          viewModelData.copyWith(
            languageCourses: resp.languageCourses,
            isNoLanguageCourse: resp.languageCourses.isEmpty,
          ),
        );
      },
    );
  }

  Future<void> chooseLearningLevel(LanguageLevel level) async {
    await runViewModelCatching(
      action: () async {
        final currentLevel = viewModelData.languageLevel;
        if (currentLevel == level) {
          return;
        }
        if (level == LanguageLevel.all) {
          final resp = await _getLanguageCoursesByLanguageUseCase.execute(
            GetLanguageCoursesByLanguageInput(
                language: viewModelData.learningLanguage),
          );
          updateData(
            viewModelData.copyWith(
              languageLevel: level,
              languageCourses: resp.languageCourses,
            ),
          );
        } else {
          final resp =
              await _getLanguageCoursesByLanguageAndLevelUseCase.execute(
            GetLanguageCoursesByLanguageAndLevelInput(
              level: level,
              language: viewModelData.learningLanguage,
            ),
          );
          updateData(
            viewModelData.copyWith(
              languageLevel: level,
              languageCourses: resp.languageCourses,
            ),
          );
        }
      },
    );
  }

  Future<void> refresh() async {
    await runViewModelCatching(
      action: () async {
        final currentLevel = viewModelData.languageLevel;
        if (currentLevel == LanguageLevel.all) {
          final resp = await _getLanguageCoursesByLanguageUseCase.execute(
            GetLanguageCoursesByLanguageInput(
              language: viewModelData.learningLanguage,
            ),
          );
          updateData(
            viewModelData.copyWith(
              languageCourses: resp.languageCourses,
            ),
          );
        } else {
          final resp =
              await _getLanguageCoursesByLanguageAndLevelUseCase.execute(
            GetLanguageCoursesByLanguageAndLevelInput(
              level: currentLevel,
              language: viewModelData.learningLanguage,
            ),
          );
          updateData(
            viewModelData.copyWith(
              languageCourses: resp.languageCourses,
            ),
          );
        }
      },
    );
  }
}
