import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'remove_bookmark_use_case.freezed.dart';

@Injectable()
class RemoveBookmarkUseCase
    extends BaseFutureUseCase<RemoveBookmarkInput, RemoveBookmarkOutput> {
  final BookmarkRepository _bookmarkRepository;

  const RemoveBookmarkUseCase(this._bookmarkRepository);

  @override
  Future<RemoveBookmarkOutput> buildUseCase(RemoveBookmarkInput input) async {
    if (input.course.languageCourseId.isNotEmpty) {
      _bookmarkRepository
          .deleteLocalLanguageCourse(input.course.languageCourseId);
      await _bookmarkRepository.removeBookmarkCourse(
        courseId: input.course.languageCourseId,
        courseType: CourseType.language,
      );
    } else {
      _bookmarkRepository
          .deleteLocalCategoryCourse(input.categoryCourse.categoryCourseId);
      await _bookmarkRepository.removeBookmarkCourse(
        courseId: input.categoryCourse.categoryCourseId,
        courseType: CourseType.category,
      );
    }

    return const RemoveBookmarkOutput();
  }
}

@freezed
class RemoveBookmarkInput extends BaseInput with _$RemoveBookmarkInput {
  const RemoveBookmarkInput._();
  const factory RemoveBookmarkInput({
    @Default(LanguageCourse()) LanguageCourse course,
    @Default(CategoryCourse()) CategoryCourse categoryCourse,
  }) = _RemoveBookmarkInput;
}

@freezed
class RemoveBookmarkOutput extends BaseOutput with _$RemoveBookmarkOutput {
  const RemoveBookmarkOutput._();
  const factory RemoveBookmarkOutput() = _RemoveBookmarkOutput;
}
