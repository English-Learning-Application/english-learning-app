import 'package:app/app.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../widgets/bookmark_course_item.dart';

@RoutePage()
class BookmarkCoursesPage extends StatefulWidget {
  const BookmarkCoursesPage({super.key});

  @override
  State<BookmarkCoursesPage> createState() => _BookmarkCoursesPageState();
}

class _BookmarkCoursesPageState
    extends BasePageState<BookmarkCoursesPage, BookmarkCoursesViewModel> {
  void onLanguageCourseTap(
    LanguageCourse bookmarkedLanguageCourse,
  ) async {
    await navigator.push(
      AppRouteInfo.languageCourseDetails(
        languageCourse: bookmarkedLanguageCourse,
      ),
    );
    viewModel.init();
  }

  void onCategoryCourseTap(
    CategoryCourse bookmarkedCategoryCourse,
  ) async {
    await navigator.push(
      AppRouteInfo.categoryCourseLesson(
        categoryCourse: bookmarkedCategoryCourse,
        languageCourseLearningContents:
            bookmarkedCategoryCourse.languageCourseLearningContent,
      ),
    );
    viewModel.init();
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: S.current.bookmarkCourses,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: Dimens.d8.responsive(),
        ),
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return ListView.separated(
      itemBuilder: (_, index) {
        if (index == 0) {
          return Selector<BookmarkCoursesViewModel,
              BookmarkCoursesViewModelData>(
            shouldRebuild: (previous, next) =>
                previous.bookmarkedLanguageCourses !=
                next.bookmarkedLanguageCourses,
            builder: (_, vmData, __) {
              final bookmarkedLanguageCourses =
                  vmData.bookmarkedLanguageCourses;
              return ListView.separated(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (_, bookmarkCategoryCourseIndex) {
                  final bookmarkedLanguageCourse =
                      bookmarkedLanguageCourses[bookmarkCategoryCourseIndex];
                  return BookmarkCourseItem(
                    onTap: () {
                      onLanguageCourseTap(bookmarkedLanguageCourse);
                    },
                    learningLanguage: bookmarkedLanguageCourse.language,
                    courseType: CourseType.language,
                    courseName:
                        bookmarkedLanguageCourse.learningType.learningTypeName,
                    progress: bookmarkedLanguageCourse.completionProgress(),
                  );
                },
                separatorBuilder: (_, __) => SizedBox(
                  height: Dimens.d8.responsive(),
                ),
                itemCount: bookmarkedLanguageCourses.length,
              );
            },
            selector: (_, vm) => vm.viewModelData,
          );
        }
        return Selector<BookmarkCoursesViewModel, BookmarkCoursesViewModelData>(
          shouldRebuild: (previous, next) =>
              previous.bookmarkedLanguageCourses !=
              next.bookmarkedLanguageCourses,
          builder: (_, vmData, __) {
            final bookmarkedCategoryCourses = vmData.bookmarkedCategoryCourses;
            if (bookmarkedCategoryCourses.isEmpty) {
              return const SizedBox();
            }
            return ListView.separated(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemBuilder: (_, bookmarkCategoryCourseIndex) {
                final bookmarkedCategoryCourse =
                    bookmarkedCategoryCourses[bookmarkCategoryCourseIndex];
                final courseName = switch (bookmarkedCategoryCourse.language) {
                  LearningLanguage.english =>
                    bookmarkedCategoryCourse.englishName,
                  LearningLanguage.vietnamese =>
                    bookmarkedCategoryCourse.vietnameseName,
                  LearningLanguage.french =>
                    bookmarkedCategoryCourse.frenchName,
                };
                return BookmarkCourseItem(
                  onTap: () {
                    onCategoryCourseTap(bookmarkedCategoryCourse);
                  },
                  learningLanguage: bookmarkedCategoryCourse.language,
                  courseType: CourseType.category,
                  courseName: courseName,
                  progress: bookmarkedCategoryCourse.completionProgress(),
                );
              },
              separatorBuilder: (_, __) => SizedBox(
                height: Dimens.d8.responsive(),
              ),
              itemCount: bookmarkedCategoryCourses.length,
            );
          },
          selector: (_, viewModel) => viewModel.viewModelData,
        );
      },
      separatorBuilder: (_, __) => SizedBox(
        height: Dimens.d8.responsive(),
      ),
      itemCount: 2,
    );
  }

  @override
  void initViewModels() {
    viewModel.init();
  }

  @override
  String get screenName => 'BookmarkCoursesPage';
}
