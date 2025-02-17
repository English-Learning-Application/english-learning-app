import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'is_course_bookmark_use_case.freezed.dart';

@Injectable()
class IsCourseBookmarkUseCase
    extends BaseFutureUseCase<IsCourseBookmarkInput, IsCourseBookmarkOutput> {
  final BookmarkRepository _bookmarkRepository;

  const IsCourseBookmarkUseCase(this._bookmarkRepository);

  @override
  Future<IsCourseBookmarkOutput> buildUseCase(
      IsCourseBookmarkInput input) async {
    final isBookmarked = input.course.languageCourseId.isNotEmpty
        ? await _bookmarkRepository.getBookmarkCourse(
            courseId: input.course.languageCourseId,
          )
        : await _bookmarkRepository.getBookmarkCourse(
            courseId: input.categoryCourse.categoryCourseId,
          );

    return IsCourseBookmarkOutput(
      isBookmarked: isBookmarked,
    );
  }
}

@freezed
class IsCourseBookmarkInput extends BaseInput with _$IsCourseBookmarkInput {
  const IsCourseBookmarkInput._();
  const factory IsCourseBookmarkInput({
    @Default(LanguageCourse()) LanguageCourse course,
    @Default(CategoryCourse()) CategoryCourse categoryCourse,
  }) = _IsCourseBookmarkInput;
}

@freezed
class IsCourseBookmarkOutput extends BaseOutput with _$IsCourseBookmarkOutput {
  const IsCourseBookmarkOutput._();
  const factory IsCourseBookmarkOutput({
    @Default(false) bool isBookmarked,
  }) = _IsCourseBookmarkOutput;
}
