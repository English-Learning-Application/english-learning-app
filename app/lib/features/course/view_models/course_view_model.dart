part of 'course.dart';

@Injectable()
class CourseViewModel extends BaseViewModel<CourseViewModelData> {
  final GetCategoriesUseCase _getCategoriesUseCase;
  final GetCategoryCoursesByLanguageUseCase
      _getCategoryCoursesByLanguageUseCase;

  CourseViewModel(
    this._getCategoriesUseCase,
    this._getCategoryCoursesByLanguageUseCase,
  ) : super(const CourseViewModelData());

  void onInit() async {
    await runViewModelCatching(
      action: () async {
        final getCategoriesOutput = await _getCategoriesUseCase.execute(
          const GetCategoriesInput(),
        );
        final categories = getCategoriesOutput.categories;
        final getCategoriesCoursesOutput =
            await _getCategoryCoursesByLanguageUseCase.execute(
          GetCategoryCoursesByLanguageInput(
            categoryKeys: categories
                .map(
                  (e) => e.categoryKey,
                )
                .toSet()
                .toList(),
            language: viewModelData.learningLanguage,
          ),
        );
        final categoryCourses = getCategoriesCoursesOutput.categoryCourses;
        updateData(
          viewModelData.copyWith(
            categories: getCategoriesOutput.categories,
            categoryCourses: categoryCourses,
          ),
        );
      },
    );
  }

  void changeLearningLanguage(LearningLanguage learningLanguage) async {
    await runViewModelCatching(
      action: () async {
        final categories = viewModelData.categories;
        final getCategoriesCoursesOutput =
            await _getCategoryCoursesByLanguageUseCase.execute(
          GetCategoryCoursesByLanguageInput(
            categoryKeys: categories
                .map(
                  (e) => e.categoryKey,
                )
                .toSet()
                .toList(),
            language: learningLanguage,
          ),
        );

        final categoryCourses = getCategoriesCoursesOutput.categoryCourses;
        updateData(
          viewModelData.copyWith(
            learningLanguage: learningLanguage,
            categoryCourses: categoryCourses,
          ),
        );
      },
    );
  }
}
