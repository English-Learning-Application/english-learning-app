part of 'bookmark_courses.dart';

@Injectable()
class BookmarkCoursesViewModel
    extends BaseViewModel<BookmarkCoursesViewModelData> {
  final GetAllUserBookmarkCoursesUseCase _getAllUserBookmarkCoursesUseCase;

  BookmarkCoursesViewModel(this._getAllUserBookmarkCoursesUseCase)
      : super(const BookmarkCoursesViewModelData());

  void init() async {
    await runViewModelCatching(
      action: () async {
        final resp = await _getAllUserBookmarkCoursesUseCase.buildUseCase(
          const GetAllUserBookmarkCoursesInput(),
        );

        updateData(
          viewModelData.copyWith(
            bookmarkedLanguageCourses: resp.languageCourses,
            bookmarkedCategoryCourses: resp.categoryCourses,
          ),
        );
      },
    );
  }
}
