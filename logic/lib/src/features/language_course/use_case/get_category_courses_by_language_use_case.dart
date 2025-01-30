import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'get_category_courses_by_language_use_case.freezed.dart';

@Injectable()
class GetCategoryCoursesByLanguageUseCase extends BaseFutureUseCase<
    GetCategoryCoursesByLanguageInput, GetCategoryCoursesByLanguageOutput> {
  final LanguageCourseRepository _languageCourseRepository;

  const GetCategoryCoursesByLanguageUseCase(this._languageCourseRepository);

  @override
  Future<GetCategoryCoursesByLanguageOutput> buildUseCase(
      GetCategoryCoursesByLanguageInput input) async {
    final categoryCourses =
        await _languageCourseRepository.getCategoryCoursesByLanguage(
      categoryKeys: input.categoryKeys,
      language: input.language,
    );

    return GetCategoryCoursesByLanguageOutput(categoryCourses: categoryCourses);
  }
}

@freezed
class GetCategoryCoursesByLanguageInput extends BaseInput
    with _$GetCategoryCoursesByLanguageInput {
  const GetCategoryCoursesByLanguageInput._();
  const factory GetCategoryCoursesByLanguageInput({
    required LearningLanguage language,
    @Default([]) List<String> categoryKeys,
  }) = _GetCategoryCoursesByLanguageInput;
}

@freezed
class GetCategoryCoursesByLanguageOutput extends BaseOutput
    with _$GetCategoryCoursesByLanguageOutput {
  const GetCategoryCoursesByLanguageOutput._();
  const factory GetCategoryCoursesByLanguageOutput({
    required List<CategoryCourse> categoryCourses,
  }) = _GetCategoryCoursesByLanguageOutput;
}
