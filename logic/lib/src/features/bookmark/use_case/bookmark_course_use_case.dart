import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'bookmark_course_use_case.freezed.dart';

@Injectable()
class BookmarkCourseUseCase
    extends BaseFutureUseCase<BookmarkCourseInput, BookmarkCourseOutput> {
  final BookmarkRepository _bookmarkRepository;

  const BookmarkCourseUseCase(this._bookmarkRepository);

  @override
  Future<BookmarkCourseOutput> buildUseCase(BookmarkCourseInput input) async {
    if (input.course.languageCourseId.isNotEmpty) {
      _bookmarkRepository.saveToLocalLanguageCourse(
        languageCourse: input.course,
      );
      await _bookmarkRepository.bookmarkCourse(
        courseId: input.course.languageCourseId,
        courseType: CourseType.language,
      );
    } else {
      _bookmarkRepository.saveToLocalCategoryCourse(
        categoryCourse: input.categoryCourse,
      );
      await _bookmarkRepository.bookmarkCourse(
        courseId: input.categoryCourse.categoryCourseId,
        courseType: CourseType.category,
      );
    }

    return const BookmarkCourseOutput();
  }
}

@freezed
class BookmarkCourseInput extends BaseInput with _$BookmarkCourseInput {
  const BookmarkCourseInput._();
  const factory BookmarkCourseInput({
    @Default(LanguageCourse()) LanguageCourse course,
    @Default(CategoryCourse()) CategoryCourse categoryCourse,
  }) = _BookmarkCourseInput;
}

@freezed
class BookmarkCourseOutput extends BaseOutput with _$BookmarkCourseOutput {
  const BookmarkCourseOutput._();
  const factory BookmarkCourseOutput() = _BookmarkCourseOutput;
}
